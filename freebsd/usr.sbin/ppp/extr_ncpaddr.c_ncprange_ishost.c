
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncprange {int ncprange_family; int ncprange_ip4width; int ncprange_ip6width; } ;





int
ncprange_ishost(const struct ncprange *range)
{
  switch (range->ncprange_family) {
  case 129:
    return range->ncprange_ip4width == 32;

  case 128:
    return range->ncprange_ip6width == 128;

  }

  return (0);
}
