
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifvlan {scalar_t__ ifv_trunk; } ;
struct ifnet {scalar_t__ if_type; struct ifvlan* if_softc; } ;


 scalar_t__ IFT_L2VLAN ;
 int NET_EPOCH_ASSERT () ;
 struct ifnet* PARENT (struct ifvlan*) ;

__attribute__((used)) static struct ifnet *
vlan_trunkdev(struct ifnet *ifp)
{
 struct ifvlan *ifv;

 NET_EPOCH_ASSERT();

 if (ifp->if_type != IFT_L2VLAN)
  return (((void*)0));

 ifv = ifp->if_softc;
 ifp = ((void*)0);
 if (ifv->ifv_trunk)
  ifp = PARENT(ifv);
 return (ifp);
}
