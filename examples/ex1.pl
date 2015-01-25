#!/usr/bin/env perl

# Pragmas.
use strict;
use warnings;

# Modules.
use PYX::Hist;

# Example data.
my $pyx = <<'END';
(begin
(middle
(end
-data
)end
(end
-data
)end
)middle
)begin
END

# PYX::Hist object.
my $obj = PYX::Hist->new;

# Parse.
$obj->parse($pyx);

# Output:
# [ begin  ] 1
# [ end    ] 2
# [ middle ] 1