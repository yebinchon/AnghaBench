
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct ncpaddr {int ncpaddr_family; int ncpaddr_ip6addr; TYPE_1__ ncpaddr_ip4addr; } ;




 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int INADDR_ANY ;

int
ncpaddr_isdefault(const struct ncpaddr *addr)
{
  switch (addr->ncpaddr_family) {
  case 129:
    if (addr->ncpaddr_ip4addr.s_addr == INADDR_ANY)
      return 1;
    break;


  case 128:
    if (IN6_IS_ADDR_UNSPECIFIED(&addr->ncpaddr_ip6addr))
      return 1;
    break;

  }

  return 0;
}
