
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_adapter {int if_transmit; } ;
struct ifnet {int if_capenable; int if_transmit; } ;


 int IFCAP_NETMAP ;
 struct netmap_adapter* NA (struct ifnet*) ;

void
nm_os_onexit(struct ifnet *ifp)
{
 struct netmap_adapter *na = NA(ifp);

 ifp->if_transmit = na->if_transmit;
 ifp->if_capenable &= ~IFCAP_NETMAP;
}
