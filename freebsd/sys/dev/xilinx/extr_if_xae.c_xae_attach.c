
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct xae_softc {int is_attached; int xchan_rx; int macaddr; int miibus; void* mii_softc; int phy_addr; struct ifnet* ifp; int intr_cookie; int * res; int mtx; int xae_callout; int dev; int bsh; int bst; int * br; } ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; TYPE_1__ if_snd; int if_init; int if_ioctl; int if_qflush; int if_transmit; int if_capabilities; int if_capenable; struct xae_softc* if_softc; } ;
typedef int phandle_t ;
typedef int device_t ;


 int BMSR_DEFCAPMASK ;
 int BUFRING_SIZE ;
 int ENOMEM ;
 int ENXIO ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_1__*,scalar_t__) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MDIO_CLK_DIV_DEFAULT ;
 int MDIO_SETUP_CLK_DIV_S ;
 int MDIO_SETUP_ENABLE ;
 int MII_OFFSET_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int NUM_RX_MBUF ;
 scalar_t__ OF_getproplen (int ,char*) ;
 int READ4 (struct xae_softc*,int ) ;
 scalar_t__ TX_DESC_COUNT ;
 int WRITE4 (struct xae_softc*,int ,int) ;
 int XAE_IDENT ;
 int XAE_MDIO_SETUP ;
 int * buf_ring_alloc (int ,int ,int ,int *) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct xae_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 void* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (struct ifnet*,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 scalar_t__ mdio_wait (struct xae_softc*) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int ofw_bus_get_node (int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 scalar_t__ setup_xdma (struct xae_softc*) ;
 scalar_t__ xae_get_hwaddr (struct xae_softc*,int ) ;
 scalar_t__ xae_get_phyaddr (int ,int *) ;
 int xae_init ;
 int xae_intr ;
 int xae_ioctl ;
 int xae_media_change ;
 int xae_media_status ;
 int xae_phy_fixup (struct xae_softc*) ;
 int xae_qflush ;
 int xae_rx_enqueue (struct xae_softc*,int ) ;
 int xae_spec ;
 int xae_transmit ;
 int xdma_queue_submit (int ) ;

__attribute__((used)) static int
xae_attach(device_t dev)
{
 struct xae_softc *sc;
 struct ifnet *ifp;
 phandle_t node;
 uint32_t reg;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(dev);

 if (setup_xdma(sc) != 0) {
  device_printf(dev, "Could not setup xDMA.\n");
  return (ENXIO);
 }

 mtx_init(&sc->mtx, device_get_nameunit(sc->dev),
     MTX_NETWORK_LOCK, MTX_DEF);

 sc->br = buf_ring_alloc(BUFRING_SIZE, M_DEVBUF,
     M_NOWAIT, &sc->mtx);
 if (sc->br == ((void*)0))
  return (ENOMEM);

 if (bus_alloc_resources(dev, xae_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 device_printf(sc->dev, "Identification: %x\n",
     READ4(sc, XAE_IDENT));


 if (xae_get_hwaddr(sc, sc->macaddr)) {
  device_printf(sc->dev, "can't get mac\n");
  return (ENXIO);
 }


 reg = (MDIO_CLK_DIV_DEFAULT << MDIO_SETUP_CLK_DIV_S);
 reg |= MDIO_SETUP_ENABLE;
 WRITE4(sc, XAE_MDIO_SETUP, reg);
 if (mdio_wait(sc))
  return (ENXIO);

 callout_init_mtx(&sc->xae_callout, &sc->mtx, 0);


 error = bus_setup_intr(dev, sc->res[1], INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), xae_intr, sc, &sc->intr_cookie);
 if (error != 0) {
  device_printf(dev, "could not setup interrupt handler.\n");
  return (ENXIO);
 }


 sc->ifp = ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "could not allocate ifp.\n");
  return (ENXIO);
 }

 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_capabilities = IFCAP_VLAN_MTU;
 ifp->if_capenable = ifp->if_capabilities;
 ifp->if_transmit = xae_transmit;
 ifp->if_qflush = xae_qflush;
 ifp->if_ioctl = xae_ioctl;
 ifp->if_init = xae_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, TX_DESC_COUNT - 1);
 ifp->if_snd.ifq_drv_maxlen = TX_DESC_COUNT - 1;
 IFQ_SET_READY(&ifp->if_snd);

 if (xae_get_phyaddr(node, &sc->phy_addr) != 0)
  return (ENXIO);


 error = mii_attach(dev, &sc->miibus, ifp, xae_media_change,
     xae_media_status, BMSR_DEFCAPMASK, sc->phy_addr,
     MII_OFFSET_ANY, 0);

 if (error != 0) {
  device_printf(dev, "PHY attach failed\n");
  return (ENXIO);
 }
 sc->mii_softc = device_get_softc(sc->miibus);


 if (OF_getproplen(node, "xlnx,vcu118") >= 0)
  xae_phy_fixup(sc);


 ether_ifattach(ifp, sc->macaddr);
 sc->is_attached = 1;

 xae_rx_enqueue(sc, NUM_RX_MBUF);
 xdma_queue_submit(sc->xchan_rx);

 return (0);
}
