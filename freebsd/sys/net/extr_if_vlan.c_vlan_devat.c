
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ifvlantrunk {int dummy; } ;
struct ifvlan {struct ifnet* ifv_ifp; } ;
struct ifnet {struct ifvlantrunk* if_vlantrunk; } ;


 int NET_EPOCH_ASSERT () ;
 struct ifvlan* vlan_gethash (struct ifvlantrunk*,int ) ;

__attribute__((used)) static struct ifnet *
vlan_devat(struct ifnet *ifp, uint16_t vid)
{
 struct ifvlantrunk *trunk;
 struct ifvlan *ifv;

 NET_EPOCH_ASSERT();

 trunk = ifp->if_vlantrunk;
 if (trunk == ((void*)0))
  return (((void*)0));
 ifp = ((void*)0);
 ifv = vlan_gethash(trunk, vid);
 if (ifv)
  ifp = ifv->ifv_ifp;
 return (ifp);
}
