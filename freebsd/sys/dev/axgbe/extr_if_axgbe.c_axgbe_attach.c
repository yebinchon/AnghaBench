
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct resource {int dummy; } ;
struct ifnet {int if_flags; scalar_t__ if_hwassist; scalar_t__ if_capenable; scalar_t__ if_capabilities; int if_get_counter; int if_qflush; int if_transmit; int if_ioctl; struct axgbe_softc* if_softc; int if_init; } ;
struct TYPE_13__ {int (* phy_init ) (TYPE_3__*) ;} ;
struct TYPE_11__ {int rx_q_cnt; } ;
struct TYPE_14__ {int (* exit ) (TYPE_3__*) ;} ;
struct TYPE_10__ {int advertising; } ;
struct TYPE_12__ {int pause_autoneg; int tx_pause; int rx_pause; int tx_ring_count; int tx_q_count; int rx_ring_count; int dev_state; TYPE_5__ phy_if; TYPE_2__ hw_feat; int rx_q_count; scalar_t__ power_down; int phy_speed; void* rx_pbl; int rx_threshold; int rx_sf_mode; int rx_desc_count; int tx_osp_mode; void* tx_pbl; int tx_threshold; int tx_sf_mode; int tx_desc_count; int pblx8; TYPE_6__ hw_if; int desc_if; int dev_workqueue; int xpcs_lock; int awcache; int arcache; int axdomain; void* coherent; int * serdes_dfe_tap_ena; int * serdes_dfe_tap_cfg; int * serdes_tx_amp; int * serdes_pq_skew; int * serdes_cdr_rate; int * serdes_blwc; int speed_set; TYPE_1__ phy; int dmat; int dev; struct ifnet* netdev; struct resource** chan_irq_res; void* per_channel_irq; struct resource* dev_irq_res; struct resource* xpcs_res; struct resource* xgmac_res; struct resource* an_irq_res; struct resource* sir1_res; struct resource* sir0_res; struct resource* rxtx_res; } ;
struct axgbe_softc {TYPE_3__ prv; int media; int mac_addr; } ;
typedef scalar_t__ ssize_t ;
typedef int phy_handle ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int device_t ;


 int ADVERTISED_10000baseKR_Full ;
 int ADVERTISED_1000baseKX_Full ;
 int DMA_OSP_ENABLE ;
 void* DMA_PBL_16 ;
 int DMA_PBL_X8_ENABLE ;
 int EINVAL ;
 int ENXIO ;
 scalar_t__ ETHER_ADDR_LEN ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_1000_KX ;
 int IFM_10G_KR ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFM_IMASK ;
 int IFT_ETHER ;
 int MTL_RSF_DISABLE ;
 int MTL_RX_THRESHOLD_64 ;
 int MTL_TSF_ENABLE ;
 int MTL_TX_THRESHOLD_64 ;
 int M_WAITOK ;
 int OF_device_from_xref (int ) ;
 scalar_t__ OF_getencprop (int ,char*,int *,int) ;
 int OF_getprop (int ,char*,int ,scalar_t__) ;
 scalar_t__ OF_getproplen (int ,char*) ;
 void* OF_hasprop (int ,char*) ;
 int PI_NET ;
 int SPEED_UNKNOWN ;
 int XGBE_BLWC_PROPERTY ;
 int XGBE_CDR_RATE_PROPERTY ;
 int XGBE_DFE_CFG_PROPERTY ;
 int XGBE_DFE_ENA_PROPERTY ;
 char* XGBE_DMA_IRQS_PROPERTY ;
 int XGBE_DMA_OS_ARCACHE ;
 int XGBE_DMA_OS_AWCACHE ;
 int XGBE_DMA_OS_AXDOMAIN ;
 int XGBE_DMA_SYS_ARCACHE ;
 int XGBE_DMA_SYS_AWCACHE ;
 int XGBE_DMA_SYS_AXDOMAIN ;
 int XGBE_DOWN ;
 int XGBE_PQ_SKEW_PROPERTY ;
 int XGBE_RX_DESC_CNT ;
 char* XGBE_SPEEDSET_PROPERTY ;
 int XGBE_SPEED_10000_BLWC ;
 int XGBE_SPEED_10000_CDR ;
 int XGBE_SPEED_10000_DFE_TAP_CONFIG ;
 int XGBE_SPEED_10000_DFE_TAP_ENABLE ;
 int XGBE_SPEED_10000_PQ ;
 int XGBE_SPEED_10000_TXAMP ;
 int XGBE_SPEED_1000_BLWC ;
 int XGBE_SPEED_1000_CDR ;
 int XGBE_SPEED_1000_DFE_TAP_CONFIG ;
 int XGBE_SPEED_1000_DFE_TAP_ENABLE ;
 int XGBE_SPEED_1000_PQ ;
 int XGBE_SPEED_1000_TXAMP ;
 int XGBE_SPEED_2500_BLWC ;
 int XGBE_SPEED_2500_CDR ;
 int XGBE_SPEED_2500_DFE_TAP_CONFIG ;
 int XGBE_SPEED_2500_DFE_TAP_ENABLE ;
 int XGBE_SPEED_2500_PQ ;
 int XGBE_SPEED_2500_TXAMP ;
 int XGBE_TX_AMP_PROPERTY ;
 int XGBE_TX_DESC_CNT ;
 int axgbe_get_counter ;
 int axgbe_get_optional_prop (int ,int ,int ,int *,int) ;
 int axgbe_init ;
 int axgbe_ioctl ;
 int axgbe_media_change ;
 int axgbe_media_status ;
 int axgbe_qflush ;
 scalar_t__ bus_alloc_resources (int ,int ,struct resource**) ;
 int bus_get_dma_tag (int ) ;
 int device_get_name (int ) ;
 struct axgbe_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (struct ifnet*,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int mac_spec ;
 int nitems (struct resource**) ;
 int ofw_bus_get_node (int ) ;
 int old_mac_spec ;
 int old_phy_spec ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;
 int taskqueue_create (char*,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*) ;
 int taskqueue_thread_enqueue ;
 int xgbe_get_all_hw_features (TYPE_3__*) ;
 int xgbe_init_function_ptrs_desc (int *) ;
 int xgbe_init_function_ptrs_dev (TYPE_6__*) ;
 int xgbe_init_function_ptrs_phy (TYPE_5__*) ;
 int xgbe_init_rx_coalesce (TYPE_3__*) ;
 int xgbe_init_tx_coalesce (TYPE_3__*) ;
 scalar_t__ xgbe_open (struct ifnet*) ;
 int xgbe_xmit ;

__attribute__((used)) static int
axgbe_attach(device_t dev)
{
 struct axgbe_softc *sc;
 struct ifnet *ifp;
 pcell_t phy_handle;
 device_t phydev;
 phandle_t node, phy_node;
 struct resource *mac_res[11];
 struct resource *phy_res[4];
 ssize_t len;
 int error, i, j;

 sc = device_get_softc(dev);

 node = ofw_bus_get_node(dev);
 if (OF_getencprop(node, "phy-handle", &phy_handle,
     sizeof(phy_handle)) <= 0) {
  phy_node = node;

  if (bus_alloc_resources(dev, mac_spec, mac_res)) {
   device_printf(dev,
       "could not allocate phy resources\n");
   return (ENXIO);
  }

  sc->prv.xgmac_res = mac_res[0];
  sc->prv.xpcs_res = mac_res[1];
  sc->prv.rxtx_res = mac_res[2];
  sc->prv.sir0_res = mac_res[3];
  sc->prv.sir1_res = mac_res[4];

  sc->prv.dev_irq_res = mac_res[5];
  sc->prv.per_channel_irq = OF_hasprop(node,
      XGBE_DMA_IRQS_PROPERTY);
  for (i = 0, j = 6; j < nitems(mac_res) - 1 &&
      mac_res[j + 1] != ((void*)0); i++, j++) {
   if (sc->prv.per_channel_irq) {
    sc->prv.chan_irq_res[i] = mac_res[j];
   }
  }


  sc->prv.an_irq_res = mac_res[j];
 } else {
  phydev = OF_device_from_xref(phy_handle);
  phy_node = ofw_bus_get_node(phydev);

  if (bus_alloc_resources(phydev, old_phy_spec, phy_res)) {
   device_printf(dev,
       "could not allocate phy resources\n");
   return (ENXIO);
  }

  if (bus_alloc_resources(dev, old_mac_spec, mac_res)) {
   device_printf(dev,
       "could not allocate mac resources\n");
   return (ENXIO);
  }

  sc->prv.rxtx_res = phy_res[0];
  sc->prv.sir0_res = phy_res[1];
  sc->prv.sir1_res = phy_res[2];
  sc->prv.an_irq_res = phy_res[3];

  sc->prv.xgmac_res = mac_res[0];
  sc->prv.xpcs_res = mac_res[1];
  sc->prv.dev_irq_res = mac_res[2];
  sc->prv.per_channel_irq = OF_hasprop(node,
      XGBE_DMA_IRQS_PROPERTY);
  if (sc->prv.per_channel_irq) {
   for (i = 0, j = 3; i < nitems(sc->prv.chan_irq_res) &&
       mac_res[j] != ((void*)0); i++, j++) {
    sc->prv.chan_irq_res[i] = mac_res[j];
   }
  }
 }

 if ((len = OF_getproplen(node, "mac-address")) < 0) {
  device_printf(dev, "No mac-address property\n");
  return (EINVAL);
 }

 if (len != ETHER_ADDR_LEN)
  return (EINVAL);

 OF_getprop(node, "mac-address", sc->mac_addr, ETHER_ADDR_LEN);

 sc->prv.netdev = ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "Cannot alloc ifnet\n");
  return (ENXIO);
 }

 sc->prv.dev = dev;
 sc->prv.dmat = bus_get_dma_tag(dev);
 sc->prv.phy.advertising = ADVERTISED_10000baseKR_Full |
     ADVERTISED_1000baseKX_Full;







 if (OF_getencprop(phy_node, XGBE_SPEEDSET_PROPERTY, &sc->prv.speed_set,
     sizeof(sc->prv.speed_set)) <= 0) {
  device_printf(dev, "%s property is missing\n",
      XGBE_SPEEDSET_PROPERTY);
  return (EINVAL);
 }

 error = axgbe_get_optional_prop(dev, phy_node, XGBE_BLWC_PROPERTY,
     sc->prv.serdes_blwc, sizeof(sc->prv.serdes_blwc));
 if (error > 0) {
  return (error);
 } else if (error < 0) {
  sc->prv.serdes_blwc[0] = XGBE_SPEED_1000_BLWC;
  sc->prv.serdes_blwc[1] = XGBE_SPEED_2500_BLWC;
  sc->prv.serdes_blwc[2] = XGBE_SPEED_10000_BLWC;
 }

 error = axgbe_get_optional_prop(dev, phy_node, XGBE_CDR_RATE_PROPERTY,
     sc->prv.serdes_cdr_rate, sizeof(sc->prv.serdes_cdr_rate));
 if (error > 0) {
  return (error);
 } else if (error < 0) {
  sc->prv.serdes_cdr_rate[0] = XGBE_SPEED_1000_CDR;
  sc->prv.serdes_cdr_rate[1] = XGBE_SPEED_2500_CDR;
  sc->prv.serdes_cdr_rate[2] = XGBE_SPEED_10000_CDR;
 }

 error = axgbe_get_optional_prop(dev, phy_node, XGBE_PQ_SKEW_PROPERTY,
     sc->prv.serdes_pq_skew, sizeof(sc->prv.serdes_pq_skew));
 if (error > 0) {
  return (error);
 } else if (error < 0) {
  sc->prv.serdes_pq_skew[0] = XGBE_SPEED_1000_PQ;
  sc->prv.serdes_pq_skew[1] = XGBE_SPEED_2500_PQ;
  sc->prv.serdes_pq_skew[2] = XGBE_SPEED_10000_PQ;
 }

 error = axgbe_get_optional_prop(dev, phy_node, XGBE_TX_AMP_PROPERTY,
     sc->prv.serdes_tx_amp, sizeof(sc->prv.serdes_tx_amp));
 if (error > 0) {
  return (error);
 } else if (error < 0) {
  sc->prv.serdes_tx_amp[0] = XGBE_SPEED_1000_TXAMP;
  sc->prv.serdes_tx_amp[1] = XGBE_SPEED_2500_TXAMP;
  sc->prv.serdes_tx_amp[2] = XGBE_SPEED_10000_TXAMP;
 }

 error = axgbe_get_optional_prop(dev, phy_node, XGBE_DFE_CFG_PROPERTY,
     sc->prv.serdes_dfe_tap_cfg, sizeof(sc->prv.serdes_dfe_tap_cfg));
 if (error > 0) {
  return (error);
 } else if (error < 0) {
  sc->prv.serdes_dfe_tap_cfg[0] = XGBE_SPEED_1000_DFE_TAP_CONFIG;
  sc->prv.serdes_dfe_tap_cfg[1] = XGBE_SPEED_2500_DFE_TAP_CONFIG;
  sc->prv.serdes_dfe_tap_cfg[2] = XGBE_SPEED_10000_DFE_TAP_CONFIG;
 }

 error = axgbe_get_optional_prop(dev, phy_node, XGBE_DFE_ENA_PROPERTY,
     sc->prv.serdes_dfe_tap_ena, sizeof(sc->prv.serdes_dfe_tap_ena));
 if (error > 0) {
  return (error);
 } else if (error < 0) {
  sc->prv.serdes_dfe_tap_ena[0] = XGBE_SPEED_1000_DFE_TAP_ENABLE;
  sc->prv.serdes_dfe_tap_ena[1] = XGBE_SPEED_2500_DFE_TAP_ENABLE;
  sc->prv.serdes_dfe_tap_ena[2] = XGBE_SPEED_10000_DFE_TAP_ENABLE;
 }


 sc->prv.coherent = OF_hasprop(node, "dma-coherent");
 if (sc->prv.coherent) {
  sc->prv.axdomain = XGBE_DMA_OS_AXDOMAIN;
  sc->prv.arcache = XGBE_DMA_OS_ARCACHE;
  sc->prv.awcache = XGBE_DMA_OS_AWCACHE;
 } else {
  sc->prv.axdomain = XGBE_DMA_SYS_AXDOMAIN;
  sc->prv.arcache = XGBE_DMA_SYS_ARCACHE;
  sc->prv.awcache = XGBE_DMA_SYS_AWCACHE;
 }


 spin_lock_init(&sc->prv.xpcs_lock);
 sc->prv.dev_workqueue = taskqueue_create("axgbe", M_WAITOK,
     taskqueue_thread_enqueue, &sc->prv.dev_workqueue);
 taskqueue_start_threads(&sc->prv.dev_workqueue, 1, PI_NET,
     "axgbe taskq");


 xgbe_init_function_ptrs_phy(&sc->prv.phy_if);
 xgbe_init_function_ptrs_dev(&sc->prv.hw_if);
 xgbe_init_function_ptrs_desc(&sc->prv.desc_if);


 sc->prv.hw_if.exit(&sc->prv);


 xgbe_get_all_hw_features(&sc->prv);


 sc->prv.pblx8 = DMA_PBL_X8_ENABLE;
 sc->prv.tx_desc_count = XGBE_TX_DESC_CNT;
 sc->prv.tx_sf_mode = MTL_TSF_ENABLE;
 sc->prv.tx_threshold = MTL_TX_THRESHOLD_64;
 sc->prv.tx_pbl = DMA_PBL_16;
 sc->prv.tx_osp_mode = DMA_OSP_ENABLE;
 sc->prv.rx_desc_count = XGBE_RX_DESC_CNT;
 sc->prv.rx_sf_mode = MTL_RSF_DISABLE;
 sc->prv.rx_threshold = MTL_RX_THRESHOLD_64;
 sc->prv.rx_pbl = DMA_PBL_16;
 sc->prv.pause_autoneg = 1;
 sc->prv.tx_pause = 1;
 sc->prv.rx_pause = 1;
 sc->prv.phy_speed = SPEED_UNKNOWN;
 sc->prv.power_down = 0;


 sc->prv.tx_ring_count = 1;
 sc->prv.tx_q_count = 1;
 sc->prv.rx_ring_count = 1;
 sc->prv.rx_q_count = sc->prv.hw_feat.rx_q_cnt;


 sc->prv.phy_if.phy_init(&sc->prv);


 xgbe_init_rx_coalesce(&sc->prv);
 xgbe_init_tx_coalesce(&sc->prv);

 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_init = axgbe_init;
        ifp->if_softc = sc;
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = axgbe_ioctl;
 ifp->if_transmit = xgbe_xmit;
 ifp->if_qflush = axgbe_qflush;
 ifp->if_get_counter = axgbe_get_counter;


 ifp->if_capabilities = 0;
 ifp->if_capenable = 0;
 ifp->if_hwassist = 0;

 ether_ifattach(ifp, sc->mac_addr);

 ifmedia_init(&sc->media, IFM_IMASK, axgbe_media_change,
     axgbe_media_status);



 ifmedia_add(&sc->media, IFM_ETHER | IFM_1000_KX, 0, ((void*)0));
 ifmedia_add(&sc->media, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
 ifmedia_set(&sc->media, IFM_ETHER | IFM_AUTO);

 set_bit(XGBE_DOWN, &sc->prv.dev_state);

 if (xgbe_open(ifp) < 0) {
  device_printf(dev, "ndo_open failed\n");
  return (ENXIO);
 }

 return (0);
}
