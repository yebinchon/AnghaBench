
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_flags; int vtnet_dev; struct ifnet* vtnet_ifp; } ;
struct ifnet {int if_flags; } ;


 int IFF_PROMISC ;
 int VTNET_CORE_LOCK (struct vtnet_softc*) ;
 int VTNET_CORE_UNLOCK (struct vtnet_softc*) ;
 int VTNET_FLAG_CTRL_RX ;
 int device_printf (int ,char*) ;
 scalar_t__ vtnet_set_promisc (struct vtnet_softc*,int ) ;

__attribute__((used)) static void
vtnet_attach_disable_promisc(struct vtnet_softc *sc)
{
 struct ifnet *ifp;

 ifp = sc->vtnet_ifp;

 VTNET_CORE_LOCK(sc);
 if ((sc->vtnet_flags & VTNET_FLAG_CTRL_RX) == 0) {
  ifp->if_flags |= IFF_PROMISC;
 } else if (vtnet_set_promisc(sc, 0) != 0) {
  ifp->if_flags |= IFF_PROMISC;
  device_printf(sc->vtnet_dev,
      "cannot disable default promiscuous mode\n");
 }
 VTNET_CORE_UNLOCK(sc);
}
