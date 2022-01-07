
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ifnet {int if_drv_flags; int if_flags; int if_capabilities; int if_capenable; void* if_mtu; int if_get_counter; int if_init; int if_ioctl; int if_qflush; int if_transmit; struct al_eth_adapter* if_softc; int if_link_state; } ;
struct TYPE_2__ {int force_1000_base_x; } ;
struct al_eth_adapter {scalar_t__ board_type; int if_flags; size_t id_number; scalar_t__ mac_mode; int * udma_res; int * mac_res; int * ec_res; int miibus; void* mii; int dev; struct ifnet* netdev; int mac_addr; int wd_mtx; int wd_callout; int stats_mtx; int stats_callout; int media; TYPE_1__ link_config; int max_rx_buff_alloc_size; int link_poll_interval; int small_copy_len; void* num_rx_queues; void* num_tx_queues; void* rx_descs_count; void* rx_ring_count; int tx_descs_count; int tx_ring_count; void* rev_id; void* dev_id; int internal_pcie_base; void* ec_base; void* mac_base; void* udma_base; int name; } ;
typedef int device_t ;


 scalar_t__ ALPINE_INTEGRATED ;
 void* AL_DEFAULT_MTU ;
 int AL_ETH_DEFAULT_FORCE_1000_BASEX ;
 int AL_ETH_DEFAULT_LINK_POLL_INTERVAL ;
 int AL_ETH_DEFAULT_MAX_RX_BUFF_ALLOC_SIZE ;
 void* AL_ETH_DEFAULT_RX_DESCS ;
 int AL_ETH_DEFAULT_SMALL_PACKET_LEN ;
 int AL_ETH_DEFAULT_TX_HW_DESCS ;
 int AL_ETH_DEFAULT_TX_SW_DESCS ;
 int AL_ETH_EC_BAR ;
 int AL_ETH_MAC_BAR ;
 scalar_t__ AL_ETH_MAC_MODE_10GbE_Serial ;
 scalar_t__ AL_ETH_MAC_MODE_RGMII ;
 int AL_ETH_NAME_MAX_LEN ;
 void* AL_ETH_NUM_QUEUES ;
 int AL_ETH_UDMA_BAR ;
 int AL_RX_LOCK_INIT (struct al_eth_adapter*) ;
 int BMSR_DEFCAPMASK ;
 int CTLFLAG_RW ;
 int ENOMEM ;
 int IFCAP_HWCSUM ;
 int IFCAP_HWCSUM_IPV6 ;
 int IFCAP_JUMBO_MTU ;
 int IFCAP_LRO ;
 int IFCAP_TSO ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_DRV_OACTIVE ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_1000_LX ;
 int IFM_10G_LR ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFM_IMASK ;
 int IFT_ETHER ;
 int LINK_STATE_DOWN ;
 int MII_OFFSET_ANY ;
 int MTX_DEF ;
 int OID_AUTO ;
 int PCIR_BAR (int ) ;
 int PCIR_DEVICE ;
 int PCIR_REVID ;
 int RF_ACTIVE ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_oid* SYSCTL_PARENT (int ) ;
 int SYS_RES_MEMORY ;
 void* al_bus_dma_to_va (int ,int ) ;
 int al_eth_board_params_init (struct al_eth_adapter*) ;
 int al_eth_fpga_read_pci_config (int ,int ,void**) ;
 int al_eth_function_reset (struct al_eth_adapter*) ;
 int al_eth_hw_init (struct al_eth_adapter*) ;
 int al_eth_hw_init_adapter (struct al_eth_adapter*) ;
 int al_eth_init_rings (struct al_eth_adapter*) ;
 int al_eth_lm_config (struct al_eth_adapter*) ;
 int al_eth_req_rx_buff_size (struct al_eth_adapter*,void*) ;
 int al_get_counter ;
 int al_init ;
 int al_ioctl ;
 int al_media_status ;
 int al_media_update ;
 int al_mq_start ;
 int al_qflush ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 char* device_get_nameunit (int ) ;
 void* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifattach (struct ifnet*,int ) ;
 struct al_eth_adapter** g_adapters ;
 size_t g_adapters_count ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int napi ;
 void* pci_get_device (int ) ;
 void* pci_get_revid (int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int
al_attach(device_t dev)
{
 struct al_eth_adapter *adapter;
 struct sysctl_oid_list *child;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;
 struct ifnet *ifp;
 uint32_t dev_id;
 uint32_t rev_id;
 int bar_udma;
 int bar_mac;
 int bar_ec;
 int err;

 err = 0;
 ifp = ((void*)0);
 dev_id = rev_id = 0;
 ctx = device_get_sysctl_ctx(dev);
 tree = SYSCTL_PARENT(device_get_sysctl_tree(dev));
 child = SYSCTL_CHILDREN(tree);

 if (g_adapters_count == 0) {
  SYSCTL_ADD_INT(ctx, child, OID_AUTO, "napi",
      CTLFLAG_RW, &napi, 0, "Use pseudo-napi mechanism");
 }
 adapter = device_get_softc(dev);
 adapter->dev = dev;
 adapter->board_type = ALPINE_INTEGRATED;
 snprintf(adapter->name, AL_ETH_NAME_MAX_LEN, "%s",
     device_get_nameunit(dev));
 AL_RX_LOCK_INIT(adapter);

 g_adapters[g_adapters_count] = adapter;

 bar_udma = PCIR_BAR(AL_ETH_UDMA_BAR);
 adapter->udma_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &bar_udma, RF_ACTIVE);
 if (adapter->udma_res == ((void*)0)) {
  device_printf(adapter->dev,
      "could not allocate memory resources for DMA.\n");
  err = ENOMEM;
  goto err_res_dma;
 }
 adapter->udma_base = al_bus_dma_to_va(rman_get_bustag(adapter->udma_res),
     rman_get_bushandle(adapter->udma_res));
 bar_mac = PCIR_BAR(AL_ETH_MAC_BAR);
 adapter->mac_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &bar_mac, RF_ACTIVE);
 if (adapter->mac_res == ((void*)0)) {
  device_printf(adapter->dev,
      "could not allocate memory resources for MAC.\n");
  err = ENOMEM;
  goto err_res_mac;
 }
 adapter->mac_base = al_bus_dma_to_va(rman_get_bustag(adapter->mac_res),
     rman_get_bushandle(adapter->mac_res));

 bar_ec = PCIR_BAR(AL_ETH_EC_BAR);
 adapter->ec_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &bar_ec,
     RF_ACTIVE);
 if (adapter->ec_res == ((void*)0)) {
  device_printf(adapter->dev,
      "could not allocate memory resources for EC.\n");
  err = ENOMEM;
  goto err_res_ec;
 }
 adapter->ec_base = al_bus_dma_to_va(rman_get_bustag(adapter->ec_res),
     rman_get_bushandle(adapter->ec_res));

 adapter->netdev = ifp = if_alloc(IFT_ETHER);

 adapter->netdev->if_link_state = LINK_STATE_DOWN;

 ifp->if_softc = adapter;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
 ifp->if_flags = ifp->if_drv_flags;
 ifp->if_flags |= IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST | IFF_ALLMULTI;
 ifp->if_transmit = al_mq_start;
 ifp->if_qflush = al_qflush;
 ifp->if_ioctl = al_ioctl;
 ifp->if_init = al_init;
 ifp->if_get_counter = al_get_counter;
 ifp->if_mtu = AL_DEFAULT_MTU;

 adapter->if_flags = ifp->if_flags;

 ifp->if_capabilities = ifp->if_capenable = 0;

 ifp->if_capabilities |= IFCAP_HWCSUM |
     IFCAP_HWCSUM_IPV6 | IFCAP_TSO |
     IFCAP_LRO | IFCAP_JUMBO_MTU;

 ifp->if_capenable = ifp->if_capabilities;

 adapter->id_number = g_adapters_count;

 if (adapter->board_type == ALPINE_INTEGRATED) {
  dev_id = pci_get_device(adapter->dev);
  rev_id = pci_get_revid(adapter->dev);
 } else {
  al_eth_fpga_read_pci_config(adapter->internal_pcie_base,
      PCIR_DEVICE, &dev_id);
  al_eth_fpga_read_pci_config(adapter->internal_pcie_base,
      PCIR_REVID, &rev_id);
 }

 adapter->dev_id = dev_id;
 adapter->rev_id = rev_id;


 adapter->tx_ring_count = AL_ETH_DEFAULT_TX_SW_DESCS;
 adapter->tx_descs_count = AL_ETH_DEFAULT_TX_HW_DESCS;
 adapter->rx_ring_count = AL_ETH_DEFAULT_RX_DESCS;
 adapter->rx_descs_count = AL_ETH_DEFAULT_RX_DESCS;

 adapter->num_tx_queues = AL_ETH_NUM_QUEUES;
 adapter->num_rx_queues = AL_ETH_NUM_QUEUES;

 adapter->small_copy_len = AL_ETH_DEFAULT_SMALL_PACKET_LEN;
 adapter->link_poll_interval = AL_ETH_DEFAULT_LINK_POLL_INTERVAL;
 adapter->max_rx_buff_alloc_size = AL_ETH_DEFAULT_MAX_RX_BUFF_ALLOC_SIZE;

 al_eth_req_rx_buff_size(adapter, adapter->netdev->if_mtu);

 adapter->link_config.force_1000_base_x = AL_ETH_DEFAULT_FORCE_1000_BASEX;

 err = al_eth_board_params_init(adapter);
 if (err != 0)
  goto err;

 if (adapter->mac_mode == AL_ETH_MAC_MODE_10GbE_Serial) {
  ifmedia_init(&adapter->media, IFM_IMASK,
      al_media_update, al_media_status);
  ifmedia_add(&adapter->media, IFM_ETHER | IFM_1000_LX, 0, ((void*)0));
  ifmedia_add(&adapter->media, IFM_ETHER | IFM_10G_LR, 0, ((void*)0));
  ifmedia_add(&adapter->media, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
  ifmedia_set(&adapter->media, IFM_ETHER | IFM_AUTO);
 }

 al_eth_function_reset(adapter);

 err = al_eth_hw_init_adapter(adapter);
 if (err != 0)
  goto err;

 al_eth_init_rings(adapter);
 g_adapters_count++;

 al_eth_lm_config(adapter);
 mtx_init(&adapter->stats_mtx, "AlStatsMtx", ((void*)0), MTX_DEF);
 mtx_init(&adapter->wd_mtx, "AlWdMtx", ((void*)0), MTX_DEF);
 callout_init_mtx(&adapter->stats_callout, &adapter->stats_mtx, 0);
 callout_init_mtx(&adapter->wd_callout, &adapter->wd_mtx, 0);

 ether_ifattach(ifp, adapter->mac_addr);
 ifp->if_mtu = AL_DEFAULT_MTU;

 if (adapter->mac_mode == AL_ETH_MAC_MODE_RGMII) {
  al_eth_hw_init(adapter);


  err = mii_attach(adapter->dev, &adapter->miibus, adapter->netdev,
      al_media_update, al_media_status, BMSR_DEFCAPMASK, 0,
      MII_OFFSET_ANY, 0);
  if (err != 0) {
   device_printf(adapter->dev, "attaching PHYs failed\n");
   return (err);
  }

  adapter->mii = device_get_softc(adapter->miibus);
 }

 return (err);

err:
 bus_release_resource(dev, SYS_RES_MEMORY, bar_ec, adapter->ec_res);
err_res_ec:
 bus_release_resource(dev, SYS_RES_MEMORY, bar_mac, adapter->mac_res);
err_res_mac:
 bus_release_resource(dev, SYS_RES_MEMORY, bar_udma, adapter->udma_res);
err_res_dma:
 return (err);
}
