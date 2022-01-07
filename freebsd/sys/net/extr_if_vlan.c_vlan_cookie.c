
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifvlan {void* ifv_cookie; } ;
struct ifnet {scalar_t__ if_type; struct ifvlan* if_softc; } ;


 scalar_t__ IFT_L2VLAN ;

__attribute__((used)) static void *
vlan_cookie(struct ifnet *ifp)
{
 struct ifvlan *ifv;

 if (ifp->if_type != IFT_L2VLAN)
  return (((void*)0));
 ifv = ifp->if_softc;
 return (ifv->ifv_cookie);
}
