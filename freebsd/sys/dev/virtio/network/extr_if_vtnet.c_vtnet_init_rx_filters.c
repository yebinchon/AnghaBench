
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_flags; struct ifnet* vtnet_ifp; } ;
struct ifnet {int if_capenable; } ;


 int IFCAP_VLAN_HWFILTER ;
 int VTNET_FLAG_CTRL_RX ;
 int vtnet_rx_filter (struct vtnet_softc*) ;
 int vtnet_rx_filter_mac (struct vtnet_softc*) ;
 int vtnet_rx_filter_vlan (struct vtnet_softc*) ;

__attribute__((used)) static void
vtnet_init_rx_filters(struct vtnet_softc *sc)
{
 struct ifnet *ifp;

 ifp = sc->vtnet_ifp;

 if (sc->vtnet_flags & VTNET_FLAG_CTRL_RX) {

  vtnet_rx_filter(sc);

  vtnet_rx_filter_mac(sc);
 }

 if (ifp->if_capenable & IFCAP_VLAN_HWFILTER)
  vtnet_rx_filter_vlan(sc);
}
