
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifvlan {int lladdr_task; } ;
struct ifnet {int if_dunit; struct ifvlan* if_softc; } ;
struct if_clone {int dummy; } ;


 int M_VLAN ;
 int NET_EPOCH_WAIT () ;
 int ether_ifdetach (struct ifnet*) ;
 int free (struct ifvlan*,int ) ;
 int if_free (struct ifnet*) ;
 int ifc_free_unit (struct if_clone*,int) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_thread ;
 int vlan_unconfig (struct ifnet*) ;

__attribute__((used)) static int
vlan_clone_destroy(struct if_clone *ifc, struct ifnet *ifp)
{
 struct ifvlan *ifv = ifp->if_softc;
 int unit = ifp->if_dunit;

 ether_ifdetach(ifp);
 vlan_unconfig(ifp);





 taskqueue_drain(taskqueue_thread, &ifv->lladdr_task);
 NET_EPOCH_WAIT();
 if_free(ifp);
 free(ifv, M_VLAN);
 ifc_free_unit(ifc, unit);

 return (0);
}
