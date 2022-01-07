
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int AF_UNSPEC ;
 int rt_foreach_fib_walk_del (int ,int ,struct ifnet*) ;
 int rt_ifdelroute ;

void
rt_flushifroutes(struct ifnet *ifp)
{

 rt_foreach_fib_walk_del(AF_UNSPEC, rt_ifdelroute, ifp);
}
