
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct ncpaddr {scalar_t__ ncpaddr_family; struct in_addr ncpaddr_ip4addr; } ;


 scalar_t__ AF_INET ;

int
ncpaddr_getip4(const struct ncpaddr *addr, struct in_addr *ip)
{
  if (addr->ncpaddr_family != AF_INET)
    return 0;
  *ip = addr->ncpaddr_ip4addr;
  return 1;
}
