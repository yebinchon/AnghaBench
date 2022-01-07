
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int s_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct ncprange {int ncprange_family; TYPE_2__ ncprange_ip4mask; TYPE_1__ ncprange_ip4addr; } ;
struct in_addr {int s_addr; } ;




int
ncprange_containsip4(const struct ncprange *range, struct in_addr addr)
{
  switch (range->ncprange_family) {
  case 128:
    return !((addr.s_addr ^ range->ncprange_ip4addr.s_addr) &
             range->ncprange_ip4mask.s_addr);
  }

  return 0;
}
