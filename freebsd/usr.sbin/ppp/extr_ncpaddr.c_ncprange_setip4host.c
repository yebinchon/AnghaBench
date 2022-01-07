
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_addr; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct ncprange {int ncprange_ip4width; TYPE_1__ ncprange_ip4mask; struct in_addr ncprange_ip4addr; int ncprange_family; } ;


 int AF_INET ;
 scalar_t__ INADDR_ANY ;
 scalar_t__ INADDR_BROADCAST ;

void
ncprange_setip4host(struct ncprange *range, struct in_addr from)
{
  range->ncprange_family = AF_INET;
  range->ncprange_ip4addr = from;
  if (from.s_addr == INADDR_ANY) {
    range->ncprange_ip4mask.s_addr = INADDR_ANY;
    range->ncprange_ip4width = 0;
  } else {
    range->ncprange_ip4mask.s_addr = INADDR_BROADCAST;
    range->ncprange_ip4width = 32;
  }
}
