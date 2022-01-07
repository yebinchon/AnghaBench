
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_defrouter {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 int ND6_WLOCK () ;
 int ND6_WUNLOCK () ;
 int defrouter_del (struct nd_defrouter*) ;
 struct nd_defrouter* defrouter_lookup_locked (struct in6_addr*,struct ifnet*) ;
 int defrouter_rele (struct nd_defrouter*) ;
 int defrouter_unlink (struct nd_defrouter*,int *) ;

bool
defrouter_remove(struct in6_addr *addr, struct ifnet *ifp)
{
 struct nd_defrouter *dr;

 ND6_WLOCK();
 dr = defrouter_lookup_locked(addr, ifp);
 if (dr == ((void*)0)) {
  ND6_WUNLOCK();
  return (0);
 }

 defrouter_unlink(dr, ((void*)0));
 ND6_WUNLOCK();
 defrouter_del(dr);
 defrouter_rele(dr);
 return (1);
}
