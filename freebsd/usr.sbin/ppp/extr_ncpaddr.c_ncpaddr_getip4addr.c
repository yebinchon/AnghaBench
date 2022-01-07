
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int s_addr; } ;
struct ncpaddr {scalar_t__ ncpaddr_family; TYPE_1__ ncpaddr_ip4addr; } ;


 scalar_t__ AF_INET ;

int
ncpaddr_getip4addr(const struct ncpaddr *addr, u_int32_t *ip)
{
  if (addr->ncpaddr_family != AF_INET)
    return 0;
  *ip = addr->ncpaddr_ip4addr.s_addr;
  return 1;
}
