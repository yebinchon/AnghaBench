
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ifnet {int if_flags; int if_transmit; int if_ioctl; struct gx_softc* if_softc; int if_init; int if_mtu; } ;
struct gx_softc {int sc_flags; int sc_mtx; int sc_ifmedia; struct ifnet* sc_ifp; int * sc_intr; int sc_intr_cookie; int sc_dev; int sc_port; } ;
typedef int device_t ;


 int ENOMEM ;
 int ENXIO ;
 int ETHERMTU ;
 scalar_t__ GXEMUL_ETHER_DEV_IRQ ;
 int GXEMUL_ETHER_DEV_MAC ;
 int GXEMUL_ETHER_DEV_WRITE (int ,uintptr_t) ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFT_ETHER ;
 int INTR_TYPE_NET ;
 int MTX_DEF ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource (int ,int ,int*,scalar_t__,scalar_t__,int,int ) ;
 int bus_describe_intr (int ,int *,int ,char*) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_setup_intr (int ,int *,int ,int *,int ,struct gx_softc*,int *) ;
 int device_get_name (int ) ;
 struct gx_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifattach (struct ifnet*,int *) ;
 int gx_init ;
 int gx_ioctl ;
 int gx_medchange ;
 int gx_medstat ;
 int gx_rx_intr ;
 int gx_transmit ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static int
gx_attach(device_t dev)
{
 struct ifnet *ifp;
 struct gx_softc *sc;
 uint8_t mac[6];
 int error;
 int rid;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_port = device_get_unit(dev);


 GXEMUL_ETHER_DEV_WRITE(GXEMUL_ETHER_DEV_MAC, (uintptr_t)mac);


 rid = 0;
 sc->sc_intr = bus_alloc_resource(sc->sc_dev, SYS_RES_IRQ, &rid,
     GXEMUL_ETHER_DEV_IRQ - 2, GXEMUL_ETHER_DEV_IRQ - 2, 1, RF_ACTIVE);
 if (sc->sc_intr == ((void*)0)) {
  device_printf(dev, "unable to allocate IRQ.\n");
  return (ENXIO);
 }

 error = bus_setup_intr(sc->sc_dev, sc->sc_intr, INTR_TYPE_NET, ((void*)0),
     gx_rx_intr, sc, &sc->sc_intr_cookie);
 if (error != 0) {
  device_printf(dev, "unable to setup interrupt.\n");
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_intr);
  return (ENXIO);
 }

 bus_describe_intr(sc->sc_dev, sc->sc_intr, sc->sc_intr_cookie, "rx");

 ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "cannot allocate ifnet.\n");
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_intr);
  return (ENOMEM);
 }

 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_mtu = ETHERMTU;
 ifp->if_init = gx_init;
 ifp->if_softc = sc;
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST | IFF_ALLMULTI;
 ifp->if_ioctl = gx_ioctl;

 sc->sc_ifp = ifp;
 sc->sc_flags = ifp->if_flags;

 ifmedia_init(&sc->sc_ifmedia, 0, gx_medchange, gx_medstat);

 ifmedia_add(&sc->sc_ifmedia, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
 ifmedia_set(&sc->sc_ifmedia, IFM_ETHER | IFM_AUTO);

 mtx_init(&sc->sc_mtx, "GXemul Ethernet", ((void*)0), MTX_DEF);

 ether_ifattach(ifp, mac);

 ifp->if_transmit = gx_transmit;

 return (bus_generic_attach(dev));
}
