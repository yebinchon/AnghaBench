
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct ncpaddr {struct in6_addr ncpaddr_ip6addr; int ncpaddr_family; } ;


 int AF_INET6 ;

void
ncpaddr_setip6(struct ncpaddr *addr, const struct in6_addr *ip6)
{
  addr->ncpaddr_family = AF_INET6;
  addr->ncpaddr_ip6addr = *ip6;
}
