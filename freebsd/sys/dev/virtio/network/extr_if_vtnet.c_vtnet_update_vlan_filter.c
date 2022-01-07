
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vtnet_softc {int* vtnet_vlan_filter; int vtnet_dev; struct ifnet* vtnet_ifp; } ;
struct ifnet {int if_capenable; int if_drv_flags; } ;


 int IFCAP_VLAN_HWFILTER ;
 int IFF_DRV_RUNNING ;
 int VTNET_CORE_LOCK (struct vtnet_softc*) ;
 int VTNET_CORE_UNLOCK (struct vtnet_softc*) ;
 int device_printf (int ,char*,char*,int,char*) ;
 scalar_t__ vtnet_exec_vlan_filter (struct vtnet_softc*,int,int) ;

__attribute__((used)) static void
vtnet_update_vlan_filter(struct vtnet_softc *sc, int add, uint16_t tag)
{
 struct ifnet *ifp;
 int idx, bit;

 ifp = sc->vtnet_ifp;
 idx = (tag >> 5) & 0x7F;
 bit = tag & 0x1F;

 if (tag == 0 || tag > 4095)
  return;

 VTNET_CORE_LOCK(sc);

 if (add)
  sc->vtnet_vlan_filter[idx] |= (1 << bit);
 else
  sc->vtnet_vlan_filter[idx] &= ~(1 << bit);

 if (ifp->if_capenable & IFCAP_VLAN_HWFILTER &&
     ifp->if_drv_flags & IFF_DRV_RUNNING &&
     vtnet_exec_vlan_filter(sc, add, tag) != 0) {
  device_printf(sc->vtnet_dev,
      "cannot %s VLAN %d %s the host filter table\n",
      add ? "add" : "remove", tag, add ? "to" : "from");
 }

 VTNET_CORE_UNLOCK(sc);
}
