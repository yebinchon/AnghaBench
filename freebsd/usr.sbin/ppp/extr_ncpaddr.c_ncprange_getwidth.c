
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncprange {int ncprange_family; int ncprange_ip4width; int ncprange_ip6width; } ;





int
ncprange_getwidth(const struct ncprange *range, int *width)
{
  switch (range->ncprange_family) {
  case 129:
    *width = range->ncprange_ip4width;
    return 1;

  case 128:
    *width = range->ncprange_ip6width;
    return 1;

  }

  return 0;
}
