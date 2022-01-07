
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncprange {int ncprange_family; int ncprange_ip6addr; int ncprange_ip4addr; } ;
struct ncpaddr {int ncpaddr_family; int ncpaddr_ip6addr; int ncpaddr_ip4addr; } ;





int
ncprange_getaddr(const struct ncprange *range, struct ncpaddr *addr)
{
  switch (range->ncprange_family) {
  case 129:
    addr->ncpaddr_family = 129;
    addr->ncpaddr_ip4addr = range->ncprange_ip4addr;
    return 1;

  case 128:
    addr->ncpaddr_family = 128;
    addr->ncpaddr_ip6addr = range->ncprange_ip6addr;
    return 1;

  }

  return 0;
}
