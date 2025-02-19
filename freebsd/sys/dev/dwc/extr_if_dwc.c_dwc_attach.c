
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {void* ifq_drv_maxlen; } ;
struct ifnet {int if_flags; TYPE_1__ if_snd; int if_init; int if_ioctl; int if_start; int if_capabilities; int if_capenable; struct dwc_softc* if_softc; } ;
struct dwc_softc {scalar_t__ mactype; int rxdesc_ring_paddr; int txdesc_ring_paddr; int is_attached; int miibus; void* mii_softc; struct ifnet* ifp; int intr_cookie; int * res; int mtx; int dwc_callout; int dev; int bsh; int bst; int mii_clk; void* txcount; scalar_t__ rx_idx; } ;
typedef int device_t ;


 int BMSR_DEFCAPMASK ;
 int BUS_MODE ;
 int BUS_MODE_EIGHTXPBL ;
 int BUS_MODE_FIXEDBURST ;
 int BUS_MODE_PBL_BEATS_8 ;
 int BUS_MODE_PBL_SHIFT ;
 int BUS_MODE_PRIORXTX_41 ;
 int BUS_MODE_PRIORXTX_SHIFT ;
 int BUS_MODE_SWR ;
 int DELAY (int) ;
 scalar_t__ DWC_GMAC_ALT_DESC ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_1__*,void*) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 scalar_t__ IF_DWC_INIT (int ) ;
 scalar_t__ IF_DWC_MAC_TYPE (int ) ;
 int IF_DWC_MII_CLK (int ) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MAC_RESET_TIMEOUT ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int MODE_SR ;
 int MODE_ST ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int OPERATION_MODE ;
 int READ4 (struct dwc_softc*,int ) ;
 int RX_DESCR_LIST_ADDR ;
 int TX_DESCR_LIST_ADDR ;
 void* TX_DESC_COUNT ;
 int WRITE4 (struct dwc_softc*,int ,int) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct dwc_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 void* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ dwc_clock_init (int ) ;
 scalar_t__ dwc_get_hwaddr (struct dwc_softc*,int *) ;
 int dwc_init ;
 int dwc_intr ;
 int dwc_ioctl ;
 int dwc_media_change ;
 int dwc_media_status ;
 scalar_t__ dwc_reset (int ) ;
 int dwc_spec ;
 int dwc_txstart ;
 int ether_ifattach (struct ifnet*,int *) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 scalar_t__ setup_dma (struct dwc_softc*) ;

__attribute__((used)) static int
dwc_attach(device_t dev)
{
 uint8_t macaddr[ETHER_ADDR_LEN];
 struct dwc_softc *sc;
 struct ifnet *ifp;
 int error, i;
 uint32_t reg;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->rx_idx = 0;
 sc->txcount = TX_DESC_COUNT;
 sc->mii_clk = IF_DWC_MII_CLK(dev);
 sc->mactype = IF_DWC_MAC_TYPE(dev);

 if (IF_DWC_INIT(dev) != 0)
  return (ENXIO);






 if (bus_alloc_resources(dev, dwc_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);


 if (dwc_get_hwaddr(sc, macaddr)) {
  device_printf(sc->dev, "can't get mac\n");
  return (ENXIO);
 }


 if (dwc_reset(dev) != 0) {
  device_printf(dev, "Can't reset the PHY\n");
  return (ENXIO);
 }


 reg = READ4(sc, BUS_MODE);
 reg |= (BUS_MODE_SWR);
 WRITE4(sc, BUS_MODE, reg);

 for (i = 0; i < MAC_RESET_TIMEOUT; i++) {
  if ((READ4(sc, BUS_MODE) & BUS_MODE_SWR) == 0)
   break;
  DELAY(10);
 }
 if (i >= MAC_RESET_TIMEOUT) {
  device_printf(sc->dev, "Can't reset DWC.\n");
  return (ENXIO);
 }

 if (sc->mactype == DWC_GMAC_ALT_DESC) {
  reg = BUS_MODE_FIXEDBURST;
  reg |= (BUS_MODE_PRIORXTX_41 << BUS_MODE_PRIORXTX_SHIFT);
 } else
  reg = (BUS_MODE_EIGHTXPBL);
 reg |= (BUS_MODE_PBL_BEATS_8 << BUS_MODE_PBL_SHIFT);
 WRITE4(sc, BUS_MODE, reg);




 reg = READ4(sc, OPERATION_MODE);
 reg &= ~(MODE_ST | MODE_SR);
 WRITE4(sc, OPERATION_MODE, reg);

 if (setup_dma(sc))
         return (ENXIO);


 WRITE4(sc, RX_DESCR_LIST_ADDR, sc->rxdesc_ring_paddr);
 WRITE4(sc, TX_DESCR_LIST_ADDR, sc->txdesc_ring_paddr);

 mtx_init(&sc->mtx, device_get_nameunit(sc->dev),
     MTX_NETWORK_LOCK, MTX_DEF);

 callout_init_mtx(&sc->dwc_callout, &sc->mtx, 0);


 error = bus_setup_intr(dev, sc->res[1], INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), dwc_intr, sc, &sc->intr_cookie);
 if (error != 0) {
  device_printf(dev, "could not setup interrupt handler.\n");
  return (ENXIO);
 }


 sc->ifp = ifp = if_alloc(IFT_ETHER);

 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_capabilities = IFCAP_VLAN_MTU;
 ifp->if_capenable = ifp->if_capabilities;
 ifp->if_start = dwc_txstart;
 ifp->if_ioctl = dwc_ioctl;
 ifp->if_init = dwc_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, TX_DESC_COUNT - 1);
 ifp->if_snd.ifq_drv_maxlen = TX_DESC_COUNT - 1;
 IFQ_SET_READY(&ifp->if_snd);


 error = mii_attach(dev, &sc->miibus, ifp, dwc_media_change,
     dwc_media_status, BMSR_DEFCAPMASK, MII_PHY_ANY,
     MII_OFFSET_ANY, 0);

 if (error != 0) {
  device_printf(dev, "PHY attach failed\n");
  return (ENXIO);
 }
 sc->mii_softc = device_get_softc(sc->miibus);


 ether_ifattach(ifp, macaddr);
 sc->is_attached = 1;

 return (0);
}
