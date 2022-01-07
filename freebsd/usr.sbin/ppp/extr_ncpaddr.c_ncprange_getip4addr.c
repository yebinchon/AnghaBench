
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct ncprange {scalar_t__ ncprange_family; struct in_addr ncprange_ip4addr; } ;


 scalar_t__ AF_INET ;

int
ncprange_getip4addr(const struct ncprange *range, struct in_addr *addr)
{
  if (range->ncprange_family != AF_INET)
    return 0;

  *addr = range->ncprange_ip4addr;
  return 1;
}
