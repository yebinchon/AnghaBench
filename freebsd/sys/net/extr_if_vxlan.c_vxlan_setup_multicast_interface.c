
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int vxl_mc_ifindex; struct ifnet* vxl_mc_ifp; int vxl_mc_ifname; int vxl_ifp; } ;
struct ifnet {int if_flags; int if_index; } ;


 int ENOENT ;
 int ENOTSUP ;
 int IFF_MULTICAST ;
 int if_printf (int ,char*,int ) ;
 int if_rele (struct ifnet*) ;
 struct ifnet* ifunit_ref (int ) ;

__attribute__((used)) static int
vxlan_setup_multicast_interface(struct vxlan_softc *sc)
{
 struct ifnet *ifp;

 ifp = ifunit_ref(sc->vxl_mc_ifname);
 if (ifp == ((void*)0)) {
  if_printf(sc->vxl_ifp, "multicast interface %s does "
      "not exist\n", sc->vxl_mc_ifname);
  return (ENOENT);
 }

 if ((ifp->if_flags & IFF_MULTICAST) == 0) {
  if_printf(sc->vxl_ifp, "interface %s does not support "
       "multicast\n", sc->vxl_mc_ifname);
  if_rele(ifp);
  return (ENOTSUP);
 }

 sc->vxl_mc_ifp = ifp;
 sc->vxl_mc_ifindex = ifp->if_index;

 return (0);
}
