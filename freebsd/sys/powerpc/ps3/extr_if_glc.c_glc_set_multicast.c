
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_flags; } ;
struct glc_softc {int sc_dev; int sc_bus; struct ifnet* sc_ifp; } ;


 int IFF_ALLMULTI ;
 int glc_add_maddr ;
 int if_foreach_llmaddr (struct ifnet*,int ,struct glc_softc*) ;
 int lv1_net_add_multicast_address (int ,int ,int,int) ;
 int lv1_net_remove_multicast_address (int ,int ,int ,int) ;

__attribute__((used)) static void
glc_set_multicast(struct glc_softc *sc)
{
 struct ifnet *ifp = sc->sc_ifp;
 int naddrs;


 lv1_net_remove_multicast_address(sc->sc_bus, sc->sc_dev, 0, 1);


 lv1_net_add_multicast_address(sc->sc_bus, sc->sc_dev,
     0xffffffffffffL, 0);

 if ((ifp->if_flags & IFF_ALLMULTI) != 0) {
  lv1_net_add_multicast_address(sc->sc_bus, sc->sc_dev, 0, 1);
 } else {
  naddrs = if_foreach_llmaddr(ifp, glc_add_maddr, sc);
  if (naddrs + 1 == 32)
   lv1_net_add_multicast_address(sc->sc_bus,
       sc->sc_dev, 0, 1);
 }
}
