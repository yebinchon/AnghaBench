
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct ncprange {int ncprange_family; struct in_addr ncprange_ip4mask; } ;




int
ncprange_getip4mask(const struct ncprange *range, struct in_addr *mask)
{
  switch (range->ncprange_family) {
  case 128:
    *mask = range->ncprange_ip4mask;
    return 1;
  }

  return 0;
}
