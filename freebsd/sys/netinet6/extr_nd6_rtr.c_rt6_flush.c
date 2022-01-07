
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 int AF_INET6 ;
 int IN6_IS_ADDR_LINKLOCAL (struct in6_addr*) ;
 int rt6_deleteroute ;
 int rt_foreach_fib_walk_del (int ,int ,void*) ;

void
rt6_flush(struct in6_addr *gateway, struct ifnet *ifp)
{


 if (!IN6_IS_ADDR_LINKLOCAL(gateway))
  return;


 rt_foreach_fib_walk_del(AF_INET6, rt6_deleteroute, (void *)gateway);
}
