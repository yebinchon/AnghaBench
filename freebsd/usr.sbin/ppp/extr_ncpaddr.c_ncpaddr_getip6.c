
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct ncpaddr {scalar_t__ ncpaddr_family; struct in6_addr ncpaddr_ip6addr; } ;


 scalar_t__ AF_INET6 ;

int
ncpaddr_getip6(const struct ncpaddr *addr, struct in6_addr *ip6)
{
  if (addr->ncpaddr_family != AF_INET6)
    return 0;
  *ip6 = addr->ncpaddr_ip6addr;
  return 1;
}
