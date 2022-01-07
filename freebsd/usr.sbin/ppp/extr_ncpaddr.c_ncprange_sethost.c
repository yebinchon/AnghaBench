
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int s_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct ncprange {int ncprange_family; int ncprange_ip4width; int ncprange_ip6width; int ncprange_ip6addr; TYPE_2__ ncprange_ip4mask; TYPE_1__ ncprange_ip4addr; } ;
struct ncpaddr {int ncpaddr_family; int ncpaddr_ip6addr; TYPE_1__ ncpaddr_ip4addr; } ;




 int AF_UNSPEC ;
 int INADDR_ANY ;
 int INADDR_BROADCAST ;

void
ncprange_sethost(struct ncprange *range, const struct ncpaddr *from)
{
  switch (from->ncpaddr_family) {
  case 129:
    range->ncprange_family = 129;
    range->ncprange_ip4addr = from->ncpaddr_ip4addr;
    if (from->ncpaddr_ip4addr.s_addr == INADDR_ANY) {
      range->ncprange_ip4mask.s_addr = INADDR_ANY;
      range->ncprange_ip4width = 0;
    } else {
      range->ncprange_ip4mask.s_addr = INADDR_BROADCAST;
      range->ncprange_ip4width = 32;
    }
    break;


  case 128:
    range->ncprange_family = 128;
    range->ncprange_ip6addr = from->ncpaddr_ip6addr;
    range->ncprange_ip6width = 128;
    break;


  default:
    range->ncprange_family = AF_UNSPEC;
  }
}
