
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct ncprange {scalar_t__ ncprange_family; int ncprange_ip4width; struct in_addr ncprange_ip4mask; } ;


 scalar_t__ AF_INET ;
 int mask42bits (struct in_addr) ;

int
ncprange_setip4mask(struct ncprange *range, struct in_addr mask)
{
  if (range->ncprange_family != AF_INET)
    return 0;
  range->ncprange_ip4mask = mask;
  range->ncprange_ip4width = mask42bits(mask);
  return 1;
}
