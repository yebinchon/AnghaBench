
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int IN_MULTI_LOCK () ;
 int IN_MULTI_UNLOCK () ;
 int V_ripcbinfo ;
 int V_udbinfo ;
 int V_ulitecbinfo ;
 int in_pcbpurgeif0 (int *,struct ifnet*) ;
 int in_purgemaddrs (struct ifnet*) ;

void
in_ifdetach(struct ifnet *ifp)
{
 IN_MULTI_LOCK();
 in_pcbpurgeif0(&V_ripcbinfo, ifp);
 in_pcbpurgeif0(&V_udbinfo, ifp);
 in_pcbpurgeif0(&V_ulitecbinfo, ifp);
 in_purgemaddrs(ifp);
 IN_MULTI_UNLOCK();
}
