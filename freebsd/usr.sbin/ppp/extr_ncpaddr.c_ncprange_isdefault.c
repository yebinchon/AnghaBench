
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct ncprange {int ncprange_family; int ncprange_ip6addr; int ncprange_ip6width; TYPE_1__ ncprange_ip4addr; } ;




 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int INADDR_ANY ;

int
ncprange_isdefault(const struct ncprange *range)
{
  switch (range->ncprange_family) {
  case 129:
    if (range->ncprange_ip4addr.s_addr == INADDR_ANY)
      return 1;
    break;


  case 128:
    if (range->ncprange_ip6width == 0 &&
        IN6_IS_ADDR_UNSPECIFIED(&range->ncprange_ip6addr))
      return 1;
    break;

  }

  return 0;
}
