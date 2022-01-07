
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; int ifq_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; TYPE_1__ if_snd; int if_ioctl; int if_start; int if_init; int if_mtu; struct dtsec_softc* if_softc; } ;
struct dtsec_softc {scalar_t__ sc_mode; int (* sc_port_tx_init ) (struct dtsec_softc*,int ) ;int (* sc_port_rx_init ) (struct dtsec_softc*,int ) ;scalar_t__ sc_phy_addr; int sc_mac_addr; int sc_mii_dev; void* sc_mii; int sc_dev; struct ifnet* sc_ifnet; int sc_fm_base; int sc_muramh; int sc_fmh; int sc_tick_callout; int sc_mii_lock; int sc_lock; int sc_mac_mdio_irq; } ;
typedef int device_t ;


 int BMSR_DEFCAPMASK ;
 int CALLOUT_MPSAFE ;
 scalar_t__ DTSEC_MODE_REGULAR ;
 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 int ETHERMTU ;
 scalar_t__ E_OK ;
 int IFCAP_JUMBO_MTU ;
 int IFF_BROADCAST ;
 int IFF_SIMPLEX ;
 int IFQ_MAXLEN ;
 int IFQ_SET_MAXLEN (TYPE_1__*,scalar_t__) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 int MII_OFFSET_ANY ;
 int MTX_DEF ;
 int NO_IRQ ;
 scalar_t__ TSEC_TX_NUM_DESC ;
 scalar_t__ XX_MallocSmartInit () ;
 int callout_init (int *,int ) ;
 char* device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int dtsec_configure_mode (struct dtsec_softc*) ;
 int dtsec_detach (int ) ;
 int dtsec_fm_mac_init (struct dtsec_softc*,int ) ;
 int dtsec_if_init ;
 int dtsec_if_ioctl ;
 int dtsec_if_start ;
 int dtsec_ifmedia_sts ;
 int dtsec_ifmedia_upd ;
 int dtsec_rm_fi_pool_init (struct dtsec_softc*) ;
 int dtsec_rm_fqr_rx_init (struct dtsec_softc*) ;
 int dtsec_rm_fqr_tx_init (struct dtsec_softc*) ;
 int dtsec_rm_pool_rx_init (struct dtsec_softc*) ;
 int ether_ifattach (struct ifnet*,int ) ;
 int fman_get_bushandle (int ,int *) ;
 int fman_get_handle (int ,int *) ;
 int fman_get_muram_handle (int ,int *) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,char*,int ) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,scalar_t__,int ,int ) ;
 int mtx_init (int *,int ,char*,int ) ;
 int stub1 (struct dtsec_softc*,int ) ;
 int stub2 (struct dtsec_softc*,int ) ;

int
dtsec_attach(device_t dev)
{
 struct dtsec_softc *sc;
 device_t parent;
 int error;
 struct ifnet *ifp;

 sc = device_get_softc(dev);

 parent = device_get_parent(dev);
 sc->sc_dev = dev;
 sc->sc_mac_mdio_irq = NO_IRQ;


 if (XX_MallocSmartInit() != E_OK)
  return (ENXIO);


 mtx_init(&sc->sc_lock, device_get_nameunit(dev),
     "DTSEC Global Lock", MTX_DEF);

 mtx_init(&sc->sc_mii_lock, device_get_nameunit(dev),
     "DTSEC MII Lock", MTX_DEF);


 callout_init(&sc->sc_tick_callout, CALLOUT_MPSAFE);


 if ((error = fman_get_handle(parent, &sc->sc_fmh)) != 0)
  return (error);

 if ((error = fman_get_muram_handle(parent, &sc->sc_muramh)) != 0)
  return (error);

 if ((error = fman_get_bushandle(parent, &sc->sc_fm_base)) != 0)
  return (error);


 dtsec_configure_mode(sc);


 if (sc->sc_mode == DTSEC_MODE_REGULAR) {

  error = dtsec_rm_pool_rx_init(sc);
  if (error != 0)
   return (EIO);


  error = dtsec_rm_fqr_rx_init(sc);
  if (error != 0)
   return (EIO);


  error = dtsec_rm_fi_pool_init(sc);
  if (error != 0)
   return (EIO);


  error = dtsec_rm_fqr_tx_init(sc);
  if (error != 0)
   return (EIO);
 }


 error = dtsec_fm_mac_init(sc, sc->sc_mac_addr);
 if (error != 0) {
  dtsec_detach(dev);
  return (ENXIO);
 }


 error = sc->sc_port_tx_init(sc, device_get_unit(sc->sc_dev));
 if (error != 0) {
  dtsec_detach(dev);
  return (ENXIO);
 }


 error = sc->sc_port_rx_init(sc, device_get_unit(sc->sc_dev));
 if (error != 0) {
  dtsec_detach(dev);
  return (ENXIO);
 }


 ifp = sc->sc_ifnet = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(sc->sc_dev, "if_alloc() failed.\n");
  dtsec_detach(dev);
  return (ENOMEM);
 }

 ifp->if_softc = sc;
 ifp->if_mtu = ETHERMTU;
 ifp->if_flags = IFF_SIMPLEX | IFF_BROADCAST;
 ifp->if_init = dtsec_if_init;
 ifp->if_start = dtsec_if_start;
 ifp->if_ioctl = dtsec_if_ioctl;
 ifp->if_snd.ifq_maxlen = IFQ_MAXLEN;

 if (sc->sc_phy_addr >= 0)
  if_initname(ifp, device_get_name(sc->sc_dev),
      device_get_unit(sc->sc_dev));
 else
  if_initname(ifp, "dtsec_phy", device_get_unit(sc->sc_dev));







 ifp->if_capabilities = IFCAP_JUMBO_MTU;
 ifp->if_capenable = ifp->if_capabilities;


 error = mii_attach(sc->sc_dev, &sc->sc_mii_dev, ifp, dtsec_ifmedia_upd,
     dtsec_ifmedia_sts, BMSR_DEFCAPMASK, sc->sc_phy_addr,
     MII_OFFSET_ANY, 0);
 if (error) {
  device_printf(sc->sc_dev, "attaching PHYs failed: %d\n", error);
  dtsec_detach(sc->sc_dev);
  return (error);
 }
 sc->sc_mii = device_get_softc(sc->sc_mii_dev);


 ether_ifattach(ifp, sc->sc_mac_addr);

 return (0);
}
