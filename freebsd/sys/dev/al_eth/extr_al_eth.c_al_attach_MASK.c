#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ifnet {int if_drv_flags; int if_flags; int if_capabilities; int if_capenable; void* if_mtu; int /*<<< orphan*/  if_get_counter; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_qflush; int /*<<< orphan*/  if_transmit; struct al_eth_adapter* if_softc; int /*<<< orphan*/  if_link_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  force_1000_base_x; } ;
struct al_eth_adapter {scalar_t__ board_type; int if_flags; size_t id_number; scalar_t__ mac_mode; int /*<<< orphan*/ * udma_res; int /*<<< orphan*/ * mac_res; int /*<<< orphan*/ * ec_res; int /*<<< orphan*/  miibus; void* mii; int /*<<< orphan*/  dev; struct ifnet* netdev; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  wd_mtx; int /*<<< orphan*/  wd_callout; int /*<<< orphan*/  stats_mtx; int /*<<< orphan*/  stats_callout; int /*<<< orphan*/  media; TYPE_1__ link_config; int /*<<< orphan*/  max_rx_buff_alloc_size; int /*<<< orphan*/  link_poll_interval; int /*<<< orphan*/  small_copy_len; void* num_rx_queues; void* num_tx_queues; void* rx_descs_count; void* rx_ring_count; int /*<<< orphan*/  tx_descs_count; int /*<<< orphan*/  tx_ring_count; void* rev_id; void* dev_id; int /*<<< orphan*/  internal_pcie_base; void* ec_base; void* mac_base; void* udma_base; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ ALPINE_INTEGRATED ; 
 void* AL_DEFAULT_MTU ; 
 int /*<<< orphan*/  AL_ETH_DEFAULT_FORCE_1000_BASEX ; 
 int /*<<< orphan*/  AL_ETH_DEFAULT_LINK_POLL_INTERVAL ; 
 int /*<<< orphan*/  AL_ETH_DEFAULT_MAX_RX_BUFF_ALLOC_SIZE ; 
 void* AL_ETH_DEFAULT_RX_DESCS ; 
 int /*<<< orphan*/  AL_ETH_DEFAULT_SMALL_PACKET_LEN ; 
 int /*<<< orphan*/  AL_ETH_DEFAULT_TX_HW_DESCS ; 
 int /*<<< orphan*/  AL_ETH_DEFAULT_TX_SW_DESCS ; 
 int /*<<< orphan*/  AL_ETH_EC_BAR ; 
 int /*<<< orphan*/  AL_ETH_MAC_BAR ; 
 scalar_t__ AL_ETH_MAC_MODE_10GbE_Serial ; 
 scalar_t__ AL_ETH_MAC_MODE_RGMII ; 
 int /*<<< orphan*/  AL_ETH_NAME_MAX_LEN ; 
 void* AL_ETH_NUM_QUEUES ; 
 int /*<<< orphan*/  AL_ETH_UDMA_BAR ; 
 int /*<<< orphan*/  FUNC0 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
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
 int /*<<< orphan*/  IFM_IMASK ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_REVID ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid_list* FUNC3 (struct sysctl_oid*) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC8 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct al_eth_adapter*) ; 
 int FUNC10 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct al_eth_adapter*,void*) ; 
 int /*<<< orphan*/  al_get_counter ; 
 int /*<<< orphan*/  al_init ; 
 int /*<<< orphan*/  al_ioctl ; 
 int /*<<< orphan*/  al_media_status ; 
 int /*<<< orphan*/  al_media_update ; 
 int /*<<< orphan*/  al_mq_start ; 
 int /*<<< orphan*/  al_qflush ; 
 void* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 char* FUNC18 (int /*<<< orphan*/ ) ; 
 void* FUNC19 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC24 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct al_eth_adapter** g_adapters ; 
 size_t g_adapters_count ; 
 struct ifnet* FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int) ; 
 int FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  napi ; 
 void* FUNC32 (int /*<<< orphan*/ ) ; 
 void* FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC37(device_t dev)
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
	ifp = NULL;
	dev_id = rev_id = 0;
	ctx = FUNC20(dev);
	tree = FUNC4(FUNC21(dev));
	child = FUNC3(tree);

	if (g_adapters_count == 0) {
		FUNC2(ctx, child, OID_AUTO, "napi",
		    CTLFLAG_RW, &napi, 0, "Use pseudo-napi mechanism");
	}
	adapter = FUNC19(dev);
	adapter->dev = dev;
	adapter->board_type = ALPINE_INTEGRATED;
	FUNC36(adapter->name, AL_ETH_NAME_MAX_LEN, "%s",
	    FUNC18(dev));
	FUNC0(adapter);

	g_adapters[g_adapters_count] = adapter;

	bar_udma = FUNC1(AL_ETH_UDMA_BAR);
	adapter->udma_res = FUNC14(dev, SYS_RES_MEMORY,
	    &bar_udma, RF_ACTIVE);
	if (adapter->udma_res == NULL) {
		FUNC23(adapter->dev,
		    "could not allocate memory resources for DMA.\n");
		err = ENOMEM;
		goto err_res_dma;
	}
	adapter->udma_base = FUNC5(FUNC35(adapter->udma_res),
	    FUNC34(adapter->udma_res));
	bar_mac = FUNC1(AL_ETH_MAC_BAR);
	adapter->mac_res = FUNC14(dev, SYS_RES_MEMORY,
	    &bar_mac, RF_ACTIVE);
	if (adapter->mac_res == NULL) {
		FUNC23(adapter->dev,
		    "could not allocate memory resources for MAC.\n");
		err = ENOMEM;
		goto err_res_mac;
	}
	adapter->mac_base = FUNC5(FUNC35(adapter->mac_res),
	    FUNC34(adapter->mac_res));

	bar_ec = FUNC1(AL_ETH_EC_BAR);
	adapter->ec_res = FUNC14(dev, SYS_RES_MEMORY, &bar_ec,
	    RF_ACTIVE);
	if (adapter->ec_res == NULL) {
		FUNC23(adapter->dev,
		    "could not allocate memory resources for EC.\n");
		err = ENOMEM;
		goto err_res_ec;
	}
	adapter->ec_base = FUNC5(FUNC35(adapter->ec_res),
	    FUNC34(adapter->ec_res));

	adapter->netdev = ifp = FUNC25(IFT_ETHER);

	adapter->netdev->if_link_state = LINK_STATE_DOWN;

	ifp->if_softc = adapter;
	FUNC26(ifp, FUNC17(dev), FUNC22(dev));
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
		dev_id = FUNC32(adapter->dev);
		rev_id = FUNC33(adapter->dev);
	} else {
		FUNC7(adapter->internal_pcie_base,
		    PCIR_DEVICE, &dev_id);
		FUNC7(adapter->internal_pcie_base,
		    PCIR_REVID, &rev_id);
	}

	adapter->dev_id = dev_id;
	adapter->rev_id = rev_id;

	/* set default ring sizes */
	adapter->tx_ring_count = AL_ETH_DEFAULT_TX_SW_DESCS;
	adapter->tx_descs_count = AL_ETH_DEFAULT_TX_HW_DESCS;
	adapter->rx_ring_count = AL_ETH_DEFAULT_RX_DESCS;
	adapter->rx_descs_count = AL_ETH_DEFAULT_RX_DESCS;

	adapter->num_tx_queues = AL_ETH_NUM_QUEUES;
	adapter->num_rx_queues = AL_ETH_NUM_QUEUES;

	adapter->small_copy_len	= AL_ETH_DEFAULT_SMALL_PACKET_LEN;
	adapter->link_poll_interval = AL_ETH_DEFAULT_LINK_POLL_INTERVAL;
	adapter->max_rx_buff_alloc_size = AL_ETH_DEFAULT_MAX_RX_BUFF_ALLOC_SIZE;

	FUNC13(adapter, adapter->netdev->if_mtu);

	adapter->link_config.force_1000_base_x = AL_ETH_DEFAULT_FORCE_1000_BASEX;

	err = FUNC6(adapter);
	if (err != 0)
		goto err;

	if (adapter->mac_mode == AL_ETH_MAC_MODE_10GbE_Serial) {
		FUNC28(&adapter->media, IFM_IMASK,
		    al_media_update, al_media_status);
		FUNC27(&adapter->media, IFM_ETHER | IFM_1000_LX, 0, NULL);
		FUNC27(&adapter->media, IFM_ETHER | IFM_10G_LR, 0, NULL);
		FUNC27(&adapter->media, IFM_ETHER | IFM_AUTO, 0, NULL);
		FUNC29(&adapter->media, IFM_ETHER | IFM_AUTO);
	}

	FUNC8(adapter);

	err = FUNC10(adapter);
	if (err != 0)
		goto err;

	FUNC11(adapter);
	g_adapters_count++;

	FUNC12(adapter);
	FUNC31(&adapter->stats_mtx, "AlStatsMtx", NULL, MTX_DEF);
	FUNC31(&adapter->wd_mtx, "AlWdMtx", NULL, MTX_DEF);
	FUNC16(&adapter->stats_callout, &adapter->stats_mtx, 0);
	FUNC16(&adapter->wd_callout, &adapter->wd_mtx, 0);

	FUNC24(ifp, adapter->mac_addr);
	ifp->if_mtu = AL_DEFAULT_MTU;

	if (adapter->mac_mode == AL_ETH_MAC_MODE_RGMII) {
		FUNC9(adapter);

		/* Attach PHY(s) */
		err = FUNC30(adapter->dev, &adapter->miibus, adapter->netdev,
		    al_media_update, al_media_status, BMSR_DEFCAPMASK, 0,
		    MII_OFFSET_ANY, 0);
		if (err != 0) {
			FUNC23(adapter->dev, "attaching PHYs failed\n");
			return (err);
		}

		adapter->mii = FUNC19(adapter->miibus);
	}

	return (err);

err:
	FUNC15(dev, SYS_RES_MEMORY, bar_ec, adapter->ec_res);
err_res_ec:
	FUNC15(dev, SYS_RES_MEMORY, bar_mac, adapter->mac_res);
err_res_mac:
	FUNC15(dev, SYS_RES_MEMORY, bar_udma, adapter->udma_res);
err_res_dma:
	return (err);
}