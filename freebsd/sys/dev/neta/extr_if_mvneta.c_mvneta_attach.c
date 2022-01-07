
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct mvneta_softc {int version; scalar_t__ phy_addr; scalar_t__ use_inband_status; int phy_attached; int phy_speed; struct ifnet* ifp; int * ih_cookie; int * res; int tick_ch; int * dev; int mvneta_ifmedia; scalar_t__ phy_fdx; int phy_mode; int * miibus; void* mii; int enaddr; int mtx; } ;
struct TYPE_5__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_capabilities; int if_flags; int if_capenable; int if_hwassist; int if_ioctl; int if_init; TYPE_2__ if_snd; int if_start; int if_qflush; int if_transmit; struct mvneta_softc* if_softc; } ;
typedef int * device_t ;
struct TYPE_4__ {int description; int handler; } ;


 int BMSR_DEFCAPMASK ;
 int CSUM_IP ;
 int CSUM_TCP ;
 int CSUM_UDP ;
 int ENOMEM ;
 int ENXIO ;
 scalar_t__ FALSE ;
 int IFCAP_HWCSUM ;
 int IFCAP_HWCSUM_IPV6 ;
 int IFCAP_JUMBO_MTU ;
 int IFCAP_LRO ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_1000_T ;
 int IFM_100_TX ;
 int IFM_10_T ;
 int IFM_2500_T ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_HDX ;
 int IFQ_SET_MAXLEN (TYPE_2__*,scalar_t__) ;
 int IFQ_SET_READY (TYPE_2__*) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int IO_WIN_COH_ATTR_MASK ;
 int LINK_STATE_UP ;
 int MII_OFFSET_ANY ;
 scalar_t__ MII_PHY_ANY ;
 int MTX_DEF ;
 scalar_t__ MVNETA_IS_LINKUP (struct mvneta_softc*) ;
 int MVNETA_PACC ;
 int MVNETA_PACC_ACCELERATIONMODE_EDM ;
 int MVNETA_PHY_QSGMII ;
 int MVNETA_PHY_SGMII ;
 int MVNETA_PRXINIT ;
 int MVNETA_PSNPCFG ;
 int MVNETA_PSNPCFG_BUFSNP_MASK ;
 int MVNETA_PSNPCFG_DESCSNP_MASK ;
 int MVNETA_PTXINIT ;
 int MVNETA_PV ;
 int MVNETA_READ (struct mvneta_softc*,int ) ;
 int MVNETA_RX_QNUM_MAX ;
 int MVNETA_TX_QNUM_MAX ;
 scalar_t__ MVNETA_TX_RING_CNT ;
 int MVNETA_WRITE (struct mvneta_softc*,int ,int) ;
 int MV_WIN_NETA_BASE (int ) ;
 scalar_t__ TRUE ;
 scalar_t__ bootverbose ;
 int bus_alloc_resources (int *,int ,int *) ;
 int bus_generic_attach (int *) ;
 int bus_setup_intr (int *,int ,int,int *,int ,struct mvneta_softc*,int *) ;
 int callout_init (int *,int ) ;
 int callout_reset (int *,int ,int ,struct mvneta_softc*) ;
 int * device_add_child (int *,char*,int) ;
 int device_get_name (int *) ;
 void* device_get_softc (int *) ;
 int device_get_unit (int *) ;
 int device_printf (int *,char*,...) ;
 int ether_ifattach (struct ifnet*,int ) ;
 int ether_ifdetach (struct ifnet*) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int if_link_state_change (struct ifnet*,int ) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int mii_attach (int *,int **,struct ifnet*,int ,int ,int ,scalar_t__,int ,int ) ;
 int mii_init ;
 int mii_mutex ;
 int mtx_init (int *,char*,int *,int ) ;
 int mvneta_detach (int *) ;
 int mvneta_disable_intr (struct mvneta_softc*) ;
 int mvneta_dma_create (struct mvneta_softc*) ;
 int mvneta_filter_setup (struct mvneta_softc*) ;
 scalar_t__ mvneta_get_mac_address (struct mvneta_softc*,int ) ;
 scalar_t__ mvneta_has_switch (int *) ;
 int mvneta_init ;
 int mvneta_initreg (struct ifnet*) ;
 TYPE_1__* mvneta_intrs ;
 int mvneta_ioctl ;
 int mvneta_linkdown (struct mvneta_softc*) ;
 int mvneta_linkup (struct mvneta_softc*) ;
 int mvneta_mediachange ;
 int mvneta_mediastatus ;
 int mvneta_qflush ;
 int mvneta_ring_init_rx_queue (struct mvneta_softc*,int) ;
 int mvneta_ring_init_tx_queue (struct mvneta_softc*,int) ;
 int mvneta_sc_lock (struct mvneta_softc*) ;
 int mvneta_sc_unlock (struct mvneta_softc*) ;
 int mvneta_set_mac_address (struct mvneta_softc*,int ) ;
 int mvneta_start ;
 int mvneta_tick ;
 int mvneta_transmit ;
 int mvneta_update_autoneg (struct mvneta_softc*,scalar_t__) ;
 int mvneta_update_media (struct mvneta_softc*,int) ;
 int res_spec ;
 int sysctl_mvneta_init (struct mvneta_softc*) ;

int
mvneta_attach(device_t self)
{
 struct mvneta_softc *sc;
 struct ifnet *ifp;
 device_t child;
 int ifm_target;
 int q, error;

 uint32_t reg;


 sc = device_get_softc(self);
 sc->dev = self;

 mtx_init(&sc->mtx, "mvneta_sc", ((void*)0), MTX_DEF);

 error = bus_alloc_resources(self, res_spec, sc->res);
 if (error) {
  device_printf(self, "could not allocate resources\n");
  return (ENXIO);
 }

 sc->version = MVNETA_READ(sc, MVNETA_PV);
 device_printf(self, "version is %x\n", sc->version);
 callout_init(&sc->tick_ch, 0);




 MVNETA_WRITE(sc, MVNETA_PRXINIT, 0x00000001);
 MVNETA_WRITE(sc, MVNETA_PTXINIT, 0x00000001);
 if ((MVNETA_READ(sc, MV_WIN_NETA_BASE(0)) & IO_WIN_COH_ATTR_MASK) == 0) {
  reg = MVNETA_READ(sc, MVNETA_PSNPCFG);
  reg &= ~MVNETA_PSNPCFG_DESCSNP_MASK;
  reg &= ~MVNETA_PSNPCFG_BUFSNP_MASK;
  MVNETA_WRITE(sc, MVNETA_PSNPCFG, reg);
 }





 if (mvneta_get_mac_address(sc, sc->enaddr)) {
  device_printf(self, "no mac address.\n");
  return (ENXIO);
 }
 mvneta_set_mac_address(sc, sc->enaddr);

 mvneta_disable_intr(sc);


 ifp = sc->ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(self, "if_alloc() failed\n");
  mvneta_detach(self);
  return (ENOMEM);
 }
 if_initname(ifp, device_get_name(self), device_get_unit(self));





 ifp->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_JUMBO_MTU;

 ifp->if_softc = sc;
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;




 ifp->if_start = mvneta_start;
 ifp->if_snd.ifq_drv_maxlen = MVNETA_TX_RING_CNT - 1;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
 IFQ_SET_READY(&ifp->if_snd);

 ifp->if_init = mvneta_init;
 ifp->if_ioctl = mvneta_ioctl;




 ifp->if_capabilities |= IFCAP_HWCSUM;






 ifp->if_capabilities |= IFCAP_VLAN_HWTAGGING | IFCAP_VLAN_HWCSUM;




 ifp->if_capabilities &= ~IFCAP_HWCSUM_IPV6;
 ifp->if_capenable = ifp->if_capabilities;





 ifp->if_capabilities |= IFCAP_LRO;

 ifp->if_hwassist = CSUM_IP | CSUM_TCP | CSUM_UDP;





 error = mvneta_dma_create(sc);
 if (error != 0) {
  mvneta_detach(self);
  return (error);
 }


 for (q = 0; q < MVNETA_TX_QNUM_MAX; q++) {
  error = mvneta_ring_init_tx_queue(sc, q);
  if (error != 0) {
   mvneta_detach(self);
   return (error);
  }
 }

 for (q = 0; q < MVNETA_RX_QNUM_MAX; q++) {
  error = mvneta_ring_init_rx_queue(sc, q);
  if (error != 0) {
   mvneta_detach(self);
   return (error);
  }
 }

 ether_ifattach(ifp, sc->enaddr);




 MVNETA_WRITE(sc, MVNETA_PRXINIT, 0x00000000);
 MVNETA_WRITE(sc, MVNETA_PTXINIT, 0x00000000);
 MVNETA_WRITE(sc, MVNETA_PACC, MVNETA_PACC_ACCELERATIONMODE_EDM);
 mvneta_sc_lock(sc);
 mvneta_filter_setup(sc);
 mvneta_sc_unlock(sc);
 mvneta_initreg(ifp);




 if (mii_init == 0) {




  mtx_init(&mii_mutex, "mvneta_mii", ((void*)0), MTX_DEF);
  mii_init = 1;
 }


 if ((sc->phy_addr != MII_PHY_ANY) && (!sc->use_inband_status)) {
  error = mii_attach(self, &sc->miibus, ifp, mvneta_mediachange,
      mvneta_mediastatus, BMSR_DEFCAPMASK, sc->phy_addr,
      MII_OFFSET_ANY, 0);
  if (error != 0) {
   if (bootverbose) {
    device_printf(self,
        "MII attach failed, error: %d\n", error);
   }
   ether_ifdetach(sc->ifp);
   mvneta_detach(self);
   return (error);
  }
  sc->mii = device_get_softc(sc->miibus);
  sc->phy_attached = 1;


  mvneta_update_autoneg(sc, FALSE);
 } else if (sc->use_inband_status == TRUE) {

  ifmedia_init(&sc->mvneta_ifmedia, 0, mvneta_mediachange,
      mvneta_mediastatus);


  ifmedia_add(&sc->mvneta_ifmedia, IFM_ETHER | IFM_1000_T | IFM_FDX,
      0, ((void*)0));
  ifmedia_add(&sc->mvneta_ifmedia, IFM_ETHER | IFM_100_TX, 0, ((void*)0));
  ifmedia_add(&sc->mvneta_ifmedia, IFM_ETHER | IFM_100_TX | IFM_FDX,
      0, ((void*)0));
  ifmedia_add(&sc->mvneta_ifmedia, IFM_ETHER | IFM_10_T, 0, ((void*)0));
  ifmedia_add(&sc->mvneta_ifmedia, IFM_ETHER | IFM_10_T | IFM_FDX,
      0, ((void*)0));
  ifmedia_add(&sc->mvneta_ifmedia, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
  ifmedia_set(&sc->mvneta_ifmedia, IFM_ETHER | IFM_AUTO);


  mvneta_update_autoneg(sc, TRUE);

  mvneta_sc_lock(sc);
  if (MVNETA_IS_LINKUP(sc))
   mvneta_linkup(sc);
  else
   mvneta_linkdown(sc);
  mvneta_sc_unlock(sc);

 } else {

  mvneta_update_autoneg(sc, FALSE);
  ifmedia_init(&sc->mvneta_ifmedia, 0, mvneta_mediachange,
      mvneta_mediastatus);

  ifm_target = IFM_ETHER;
  switch (sc->phy_speed) {
  case 2500:
   if (sc->phy_mode != MVNETA_PHY_SGMII &&
       sc->phy_mode != MVNETA_PHY_QSGMII) {
    device_printf(self,
        "2.5G speed can work only in (Q)SGMII mode\n");
    ether_ifdetach(sc->ifp);
    mvneta_detach(self);
    return (ENXIO);
   }
   ifm_target |= IFM_2500_T;
   break;
  case 1000:
   ifm_target |= IFM_1000_T;
   break;
  case 100:
   ifm_target |= IFM_100_TX;
   break;
  case 10:
   ifm_target |= IFM_10_T;
   break;
  default:
   ether_ifdetach(sc->ifp);
   mvneta_detach(self);
   return (ENXIO);
  }

  if (sc->phy_fdx)
   ifm_target |= IFM_FDX;
  else
   ifm_target |= IFM_HDX;

  ifmedia_add(&sc->mvneta_ifmedia, ifm_target, 0, ((void*)0));
  ifmedia_set(&sc->mvneta_ifmedia, ifm_target);
  if_link_state_change(sc->ifp, LINK_STATE_UP);

  if (mvneta_has_switch(self)) {
   if (bootverbose)
    device_printf(self, "This device is attached to a switch\n");
   child = device_add_child(sc->dev, "mdio", -1);
   if (child == ((void*)0)) {
    ether_ifdetach(sc->ifp);
    mvneta_detach(self);
    return (ENXIO);
   }
   bus_generic_attach(sc->dev);
   bus_generic_attach(child);
  }


  mvneta_update_media(sc, ifm_target);
 }

 sysctl_mvneta_init(sc);

 callout_reset(&sc->tick_ch, 0, mvneta_tick, sc);

 error = bus_setup_intr(self, sc->res[1],
     INTR_TYPE_NET | INTR_MPSAFE, ((void*)0), mvneta_intrs[0].handler, sc,
     &sc->ih_cookie[0]);
 if (error) {
  device_printf(self, "could not setup %s\n",
      mvneta_intrs[0].description);
  ether_ifdetach(sc->ifp);
  mvneta_detach(self);
  return (error);
 }

 return (0);
}
