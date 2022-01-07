
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct rtentry {int rt_flags; struct ifnet* rt_ifp; scalar_t__ rt_gateway; } ;
struct rt_addrinfo {int dummy; } ;
struct nd_defrouter {int installed; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {int sin6_addr; } ;


 int IN6_ARE_ADDR_EQUAL (int *,int *) ;
 int RTF_GATEWAY ;


 TYPE_1__* SIN6 (int ) ;
 struct nd_defrouter* defrouter_lookup (int *,struct ifnet*) ;
 int defrouter_rele (struct nd_defrouter*) ;
 int in6addr_any ;
 int rt_key (struct rtentry*) ;

void
nd6_rtrequest(int req, struct rtentry *rt, struct rt_addrinfo *info)
{
 struct sockaddr_in6 *gateway;
 struct nd_defrouter *dr;
 struct ifnet *ifp;

 gateway = (struct sockaddr_in6 *)rt->rt_gateway;
 ifp = rt->rt_ifp;

 switch (req) {
 case 129:
  break;

 case 128:
  if (!ifp)
   return;



  if ((rt->rt_flags & RTF_GATEWAY) == 0)
   return;



  if (IN6_ARE_ADDR_EQUAL(&in6addr_any,
      &SIN6(rt_key(rt))->sin6_addr)) {
   dr = defrouter_lookup(&gateway->sin6_addr, ifp);
   if (dr != ((void*)0)) {
    dr->installed = 0;
    defrouter_rele(dr);
   }
  }
  break;
 }
}
