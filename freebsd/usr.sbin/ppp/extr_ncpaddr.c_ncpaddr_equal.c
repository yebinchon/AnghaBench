
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct ncpaddr {int ncpaddr_family; int ncpaddr_ip6addr; TYPE_1__ ncpaddr_ip4addr; } ;





 int memcmp (int *,int *,int) ;

int
ncpaddr_equal(const struct ncpaddr *addr, const struct ncpaddr *cmp)
{
  if (addr->ncpaddr_family != cmp->ncpaddr_family)
    return 0;

  switch (addr->ncpaddr_family) {
  case 130:
    return addr->ncpaddr_ip4addr.s_addr == cmp->ncpaddr_ip4addr.s_addr;


  case 129:
    return !memcmp(&addr->ncpaddr_ip6addr, &cmp->ncpaddr_ip6addr,
                   sizeof addr->ncpaddr_ip6addr);


  case 128:
    return 1;
  }

  return 0;
}
