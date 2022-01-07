
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int s_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct ncprange {int ncprange_family; int ncprange_ip6addr; int ncprange_ip6width; TYPE_2__ ncprange_ip4mask; TYPE_1__ ncprange_ip4addr; } ;





 int memcmp (int *,int *,int) ;

int
ncprange_equal(const struct ncprange *range, const struct ncprange *cmp)
{
  if (range->ncprange_family != cmp->ncprange_family)
    return 0;

  switch (range->ncprange_family) {
  case 130:
    if (range->ncprange_ip4addr.s_addr != cmp->ncprange_ip4addr.s_addr)
      return 0;
    return range->ncprange_ip4mask.s_addr == cmp->ncprange_ip4mask.s_addr;


  case 129:
    if (range->ncprange_ip6width != cmp->ncprange_ip6width)
      return 0;
    return !memcmp(&range->ncprange_ip6addr, &cmp->ncprange_ip6addr,
                   sizeof range->ncprange_ip6addr);


  case 128:
    return 1;
  }

  return 0;
}
