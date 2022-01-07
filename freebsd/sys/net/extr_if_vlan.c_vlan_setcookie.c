
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifvlan {void* ifv_cookie; } ;
struct ifnet {scalar_t__ if_type; struct ifvlan* if_softc; } ;


 int EINVAL ;
 scalar_t__ IFT_L2VLAN ;

__attribute__((used)) static int
vlan_setcookie(struct ifnet *ifp, void *cookie)
{
 struct ifvlan *ifv;

 if (ifp->if_type != IFT_L2VLAN)
  return (EINVAL);
 ifv = ifp->if_softc;
 ifv->ifv_cookie = cookie;
 return (0);
}
