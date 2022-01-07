
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_defrouter {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 int ND6_RLOCK () ;
 int ND6_RUNLOCK () ;
 struct nd_defrouter* defrouter_lookup_locked (struct in6_addr*,struct ifnet*) ;

struct nd_defrouter *
defrouter_lookup(struct in6_addr *addr, struct ifnet *ifp)
{
 struct nd_defrouter *dr;

 ND6_RLOCK();
 dr = defrouter_lookup_locked(addr, ifp);
 ND6_RUNLOCK();
 return (dr);
}
