#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ u8 ;
struct TYPE_10__ {int /*<<< orphan*/  ifq_maxlen; } ;
struct net_device {int if_flags; int if_capabilities; int if_capenable; int if_hwassist; scalar_t__ if_mtu; int /*<<< orphan*/  if_hw_tsomaxsegsize; scalar_t__ if_hw_tsomaxsegcount; scalar_t__ if_hw_tsomax; int /*<<< orphan*/ * dcbnl_ops; TYPE_1__ if_snd; int /*<<< orphan*/  if_qflush; int /*<<< orphan*/  if_transmit; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_init; struct mlx4_en_priv* if_softc; } ;
struct mlx4_en_tx_ring {int dummy; } ;
struct mlx4_en_priv {int counter_index; int port; int port_up; int cqe_factor; int mac_index; int mac; int allocated; int registered; int /*<<< orphan*/  service_task; int /*<<< orphan*/  stats_task; scalar_t__ rx_mb_size; int /*<<< orphan*/  media; int /*<<< orphan*/  last_link_state; void* vlan_detach; void* vlan_attach; int /*<<< orphan*/  res; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  flags; int /*<<< orphan*/  dcbx_cap; struct mlx4_en_dev* mdev; scalar_t__ if_counters_rx_no_buffer; scalar_t__ if_counters_rx_errors; scalar_t__ last_ifq_jiffies; int /*<<< orphan*/  rx_ring_num; void* tx_cq; void* tx_ring; int /*<<< orphan*/  tx_ring_num; int /*<<< orphan*/  num_tx_rings_p_up; struct mlx4_en_port_profile* prof; TYPE_2__* ddev; struct net_device* dev; int /*<<< orphan*/  msg_enable; int /*<<< orphan*/  filters_lock; int /*<<< orphan*/  filters; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  linkstate_task; int /*<<< orphan*/  watchdog_task; int /*<<< orphan*/  rx_mode_task; int /*<<< orphan*/  stats_lock; } ;
struct mlx4_en_port_profile {int /*<<< orphan*/  rx_ppp; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  tx_ppp; int /*<<< orphan*/  tx_pause; int /*<<< orphan*/  rx_ring_num; int /*<<< orphan*/  tx_ring_num; int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_ring_size; } ;
struct TYPE_13__ {int /*<<< orphan*/  num_tx_rings_p_up; } ;
struct mlx4_en_dev {int /*<<< orphan*/  workqueue; TYPE_6__* dev; struct net_device** pndev; scalar_t__ LSO_support; TYPE_4__ profile; TYPE_3__* pdev; } ;
struct mlx4_en_cq {int dummy; } ;
struct TYPE_14__ {int cqe_size; int flags2; int* def_mac; int /*<<< orphan*/ * eth_mtu_cap; } ;
struct TYPE_15__ {TYPE_5__ caps; } ;
struct TYPE_11__ {int /*<<< orphan*/  bsddev; } ;
struct TYPE_12__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int CSUM_IP ; 
 int CSUM_TCP ; 
 int CSUM_TCP_IPV6 ; 
 int CSUM_TSO ; 
 int CSUM_UDP ; 
 int CSUM_UDP_IPV6 ; 
 int /*<<< orphan*/  DCB_CAP_DCBX_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ ETHERMTU ; 
 int ETHER_ADDR_LEN ; 
 scalar_t__ ETHER_HDR_LEN ; 
 scalar_t__ ETHER_VLAN_ENCAP_LEN ; 
 scalar_t__ ETH_FCS_LEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  EVENTHANDLER_PRI_FIRST ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx4_en_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IFCAP_HWCSUM ; 
 int IFCAP_HWCSUM_IPV6 ; 
 int IFCAP_HWSTATS ; 
 int IFCAP_JUMBO_MTU ; 
 int IFCAP_LINKSTATE ; 
 int IFCAP_LRO ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TSO6 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_TXCSUM_IPV6 ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWFILTER ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFM_1000_T ; 
 int IFM_10G_CX4 ; 
 int IFM_10G_SR ; 
 int IFM_40G_CR4 ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int IFM_ETH_FMASK ; 
 int IFM_FDX ; 
 int IFM_IMASK ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int MAX_TX_RINGS ; 
 int MLX4_DEV_CAP_FLAG2_ETS_CFG ; 
 int MLX4_DEV_CAP_FLAG2_TS ; 
 int /*<<< orphan*/  MLX4_DEV_EVENT_PORT_DOWN ; 
 int /*<<< orphan*/  MLX4_EN_FLAG_DCB_ENABLED ; 
 int /*<<< orphan*/  MLX4_EN_MSG_LEVEL ; 
 int /*<<< orphan*/  MLX4_EN_PAGE_SIZE ; 
 scalar_t__ MLX4_EN_TX_MAX_MBUF_FRAGS ; 
 int /*<<< orphan*/  MLX4_EN_TX_MAX_MBUF_SIZE ; 
 scalar_t__ MLX4_EN_TX_MAX_PAYLOAD_SIZE ; 
 int MLX4_MAX_PORTS ; 
 int /*<<< orphan*/  SERVICE_TASK_DELAY ; 
 int /*<<< orphan*/  STATS_DELAY ; 
 scalar_t__ VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_en_priv*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,scalar_t__*) ; 
 struct net_device* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 void* FUNC18 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct mlx4_en_priv*) ; 
 struct mlx4_en_priv* FUNC20 (int,int /*<<< orphan*/ ) ; 
 int FUNC21 (TYPE_6__*,size_t) ; 
 int FUNC22 (TYPE_6__*,size_t,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx4_en ; 
 int FUNC24 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  mlx4_en_dcbnl_ops ; 
 int /*<<< orphan*/  mlx4_en_dcbnl_pfc_ops ; 
 int /*<<< orphan*/  FUNC25 (struct net_device*) ; 
 int /*<<< orphan*/  mlx4_en_do_get_stats ; 
 int /*<<< orphan*/  mlx4_en_do_set_rx_mode ; 
 int /*<<< orphan*/  mlx4_en_ioctl ; 
 int /*<<< orphan*/  mlx4_en_linkstate ; 
 int /*<<< orphan*/  mlx4_en_media_change ; 
 int /*<<< orphan*/  mlx4_en_media_status ; 
 int /*<<< orphan*/  mlx4_en_open ; 
 int /*<<< orphan*/  mlx4_en_qflush ; 
 int /*<<< orphan*/  mlx4_en_restart ; 
 int /*<<< orphan*/  mlx4_en_service_task ; 
 int /*<<< orphan*/  FUNC26 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC27 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  mlx4_en_transmit ; 
 int /*<<< orphan*/  mlx4_en_vlan_rx_add_vid ; 
 int /*<<< orphan*/  mlx4_en_vlan_rx_kill_vid ; 
 int /*<<< orphan*/  FUNC28 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlan_config ; 
 int /*<<< orphan*/  vlan_unconfig ; 

int FUNC31(struct mlx4_en_dev *mdev, int port,
			struct mlx4_en_port_profile *prof)
{
	struct net_device *dev;
	struct mlx4_en_priv *priv;
	uint8_t dev_addr[ETHER_ADDR_LEN];
	int err;
	int i;

	priv = FUNC20(sizeof(*priv), GFP_KERNEL);
	dev = priv->dev = FUNC12(IFT_ETHER);
	if (dev == NULL) {
		FUNC8(priv, "Net device allocation failed\n");
		FUNC19(priv);
		return -ENOMEM;
	}
	dev->if_softc = priv;
	FUNC13(dev, "mlxen", (FUNC7(
	    mdev->pdev->dev.bsddev) * MLX4_MAX_PORTS) + port - 1);
	dev->if_mtu = ETHERMTU;
	dev->if_init = mlx4_en_open;
	dev->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	dev->if_ioctl = mlx4_en_ioctl;
	dev->if_transmit = mlx4_en_transmit;
	dev->if_qflush = mlx4_en_qflush;
	dev->if_snd.ifq_maxlen = prof->tx_ring_size;

	/*
	 * Initialize driver private data
	 */
	priv->counter_index = 0xff;
	FUNC30(&priv->stats_lock);
	FUNC5(&priv->rx_mode_task, mlx4_en_do_set_rx_mode);
	FUNC5(&priv->watchdog_task, mlx4_en_restart);
	FUNC5(&priv->linkstate_task, mlx4_en_linkstate);
	FUNC3(&priv->stats_task, mlx4_en_do_get_stats);
	FUNC3(&priv->service_task, mlx4_en_service_task);
	FUNC6(&priv->watchdog_timer, 1);
#ifdef CONFIG_RFS_ACCEL
	INIT_LIST_HEAD(&priv->filters);
	spin_lock_init(&priv->filters_lock);
#endif

	priv->msg_enable = MLX4_EN_MSG_LEVEL;
	priv->dev = dev;
	priv->mdev = mdev;
	priv->ddev = &mdev->pdev->dev;
	priv->prof = prof;
	priv->port = port;
	priv->port_up = false;
	priv->flags = prof->flags;

	priv->num_tx_rings_p_up = mdev->profile.num_tx_rings_p_up;
	priv->tx_ring_num = prof->tx_ring_num;
	priv->tx_ring = FUNC18(MAX_TX_RINGS,
				sizeof(struct mlx4_en_tx_ring *), GFP_KERNEL);
	if (!priv->tx_ring) {
		err = -ENOMEM;
		goto out;
	}
	priv->tx_cq = FUNC18(sizeof(struct mlx4_en_cq *), MAX_TX_RINGS,
			GFP_KERNEL);
	if (!priv->tx_cq) {
		err = -ENOMEM;
		goto out;
	}

	priv->rx_ring_num = prof->rx_ring_num;
	priv->cqe_factor = (mdev->dev->caps.cqe_size == 64) ? 1 : 0;
	priv->mac_index = -1;
	priv->last_ifq_jiffies = 0;
	priv->if_counters_rx_errors = 0;
	priv->if_counters_rx_no_buffer = 0;
#ifdef CONFIG_MLX4_EN_DCB
	if (!mlx4_is_slave(priv->mdev->dev)) {
		priv->dcbx_cap = DCB_CAP_DCBX_HOST;
		priv->flags |= MLX4_EN_FLAG_DCB_ENABLED;
		if (mdev->dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_ETS_CFG) {
			dev->dcbnl_ops = &mlx4_en_dcbnl_ops;
		} else {
			en_info(priv, "QoS disabled - no HW support\n");
			dev->dcbnl_ops = &mlx4_en_dcbnl_pfc_ops;
		}
	}
#endif

	/* Query for default mac and max mtu */
	priv->max_mtu = mdev->dev->caps.eth_mtu_cap[priv->port];
        priv->mac = mdev->dev->caps.def_mac[priv->port];
        if (FUNC2(priv->mac)) {
#if BITS_PER_LONG == 64
                en_err(priv, "Port: %d, invalid mac burned: 0x%lx, quiting\n",
                                priv->port, priv->mac);
#elif BITS_PER_LONG == 32
                en_err(priv, "Port: %d, invalid mac burned: 0x%llx, quiting\n",
                                priv->port, priv->mac);
#endif
                err = -EINVAL;
                goto out;
        }

	FUNC27(priv);

	err = FUNC24(priv);
	if (err)
		goto out;

	/* Allocate page for receive rings */
	err = FUNC23(mdev->dev, &priv->res,
				MLX4_EN_PAGE_SIZE, MLX4_EN_PAGE_SIZE);
	if (err) {
		FUNC8(priv, "Failed to allocate page for rx qps\n");
		goto out;
	}
	priv->allocated = 1;

	/*
	 * Set driver features
	 */
	dev->if_capabilities |= IFCAP_HWCSUM | IFCAP_HWCSUM_IPV6;
	dev->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_VLAN_HWTAGGING;
	dev->if_capabilities |= IFCAP_VLAN_HWCSUM | IFCAP_VLAN_HWFILTER;
	dev->if_capabilities |= IFCAP_LINKSTATE | IFCAP_JUMBO_MTU;
	dev->if_capabilities |= IFCAP_LRO;
	dev->if_capabilities |= IFCAP_HWSTATS;

	if (mdev->LSO_support)
		dev->if_capabilities |= IFCAP_TSO4 | IFCAP_TSO6 | IFCAP_VLAN_HWTSO;

#if __FreeBSD_version >= 1100000
	/* set TSO limits so that we don't have to drop TX packets */
	dev->if_hw_tsomax = MLX4_EN_TX_MAX_PAYLOAD_SIZE - (ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN) /* hdr */;
	dev->if_hw_tsomaxsegcount = MLX4_EN_TX_MAX_MBUF_FRAGS - 1 /* hdr */;
	dev->if_hw_tsomaxsegsize = MLX4_EN_TX_MAX_MBUF_SIZE;
#endif

	dev->if_capenable = dev->if_capabilities;

	dev->if_hwassist = 0;
	if (dev->if_capenable & (IFCAP_TSO4 | IFCAP_TSO6))
		dev->if_hwassist |= CSUM_TSO;
	if (dev->if_capenable & IFCAP_TXCSUM)
		dev->if_hwassist |= (CSUM_TCP | CSUM_UDP | CSUM_IP);
	if (dev->if_capenable & IFCAP_TXCSUM_IPV6)
		dev->if_hwassist |= (CSUM_UDP_IPV6 | CSUM_TCP_IPV6);


        /* Register for VLAN events */
	priv->vlan_attach = FUNC1(vlan_config,
            mlx4_en_vlan_rx_add_vid, priv, EVENTHANDLER_PRI_FIRST);
	priv->vlan_detach = FUNC1(vlan_unconfig,
            mlx4_en_vlan_rx_kill_vid, priv, EVENTHANDLER_PRI_FIRST);

	mdev->pndev[priv->port] = dev;

	priv->last_link_state = MLX4_DEV_EVENT_PORT_DOWN;
        FUNC26(priv);

	/* Set default MAC */
	for (i = 0; i < ETHER_ADDR_LEN; i++)
		dev_addr[ETHER_ADDR_LEN - 1 - i] = (u8) (priv->mac >> (8 * i));


	FUNC11(dev, dev_addr);
	FUNC14(dev, LINK_STATE_DOWN);
	FUNC16(&priv->media, IFM_IMASK | IFM_ETH_FMASK,
	    mlx4_en_media_change, mlx4_en_media_status);
	FUNC15(&priv->media, IFM_ETHER | IFM_FDX | IFM_1000_T, 0, NULL);
	FUNC15(&priv->media, IFM_ETHER | IFM_FDX | IFM_10G_SR, 0, NULL);
	FUNC15(&priv->media, IFM_ETHER | IFM_FDX | IFM_10G_CX4, 0, NULL);
	FUNC15(&priv->media, IFM_ETHER | IFM_FDX | IFM_40G_CR4, 0, NULL);
	FUNC15(&priv->media, IFM_ETHER | IFM_AUTO, 0, NULL);
	FUNC17(&priv->media, IFM_ETHER | IFM_AUTO);

	FUNC0(dev, mlx4_en);

	FUNC10(priv, "Using %d TX rings\n", prof->tx_ring_num);
	FUNC10(priv, "Using %d RX rings\n", prof->rx_ring_num);

	priv->registered = 1;

        FUNC10(priv, "Using %d TX rings\n", prof->tx_ring_num);
        FUNC10(priv, "Using %d RX rings\n", prof->rx_ring_num);


	priv->rx_mb_size = dev->if_mtu + ETH_HLEN + VLAN_HLEN + ETH_FCS_LEN;
	err = FUNC22(mdev->dev, priv->port,
				    priv->rx_mb_size,
				    prof->tx_pause, prof->tx_ppp,
				    prof->rx_pause, prof->rx_ppp);
	if (err) {
		FUNC8(priv, "Failed setting port general configurations "
		       "for port %d, with error %d\n", priv->port, err);
		goto out;
	}

	/* Init port */
	FUNC10(priv, "Initializing port\n");
	err = FUNC21(mdev->dev, priv->port);
	if (err) {
		FUNC8(priv, "Failed Initializing port\n");
		goto out;
	}

	FUNC29(mdev->workqueue, &priv->stats_task, STATS_DELAY);

        if (mdev->dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_TS)
                FUNC29(mdev->workqueue, &priv->service_task, SERVICE_TASK_DELAY);

	return 0;

out:
	FUNC25(dev);
	return err;
}