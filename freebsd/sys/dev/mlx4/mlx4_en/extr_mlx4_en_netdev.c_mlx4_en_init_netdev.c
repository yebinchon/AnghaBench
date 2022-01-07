
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ u8 ;
struct TYPE_10__ {int ifq_maxlen; } ;
struct net_device {int if_flags; int if_capabilities; int if_capenable; int if_hwassist; scalar_t__ if_mtu; int if_hw_tsomaxsegsize; scalar_t__ if_hw_tsomaxsegcount; scalar_t__ if_hw_tsomax; int * dcbnl_ops; TYPE_1__ if_snd; int if_qflush; int if_transmit; int if_ioctl; int if_init; struct mlx4_en_priv* if_softc; } ;
struct mlx4_en_tx_ring {int dummy; } ;
struct mlx4_en_priv {int counter_index; int port; int port_up; int cqe_factor; int mac_index; int mac; int allocated; int registered; int service_task; int stats_task; scalar_t__ rx_mb_size; int media; int last_link_state; void* vlan_detach; void* vlan_attach; int res; int max_mtu; int flags; int dcbx_cap; struct mlx4_en_dev* mdev; scalar_t__ if_counters_rx_no_buffer; scalar_t__ if_counters_rx_errors; scalar_t__ last_ifq_jiffies; int rx_ring_num; void* tx_cq; void* tx_ring; int tx_ring_num; int num_tx_rings_p_up; struct mlx4_en_port_profile* prof; TYPE_2__* ddev; struct net_device* dev; int msg_enable; int filters_lock; int filters; int watchdog_timer; int linkstate_task; int watchdog_task; int rx_mode_task; int stats_lock; } ;
struct mlx4_en_port_profile {int rx_ppp; int rx_pause; int tx_ppp; int tx_pause; int rx_ring_num; int tx_ring_num; int flags; int tx_ring_size; } ;
struct TYPE_13__ {int num_tx_rings_p_up; } ;
struct mlx4_en_dev {int workqueue; TYPE_6__* dev; struct net_device** pndev; scalar_t__ LSO_support; TYPE_4__ profile; TYPE_3__* pdev; } ;
struct mlx4_en_cq {int dummy; } ;
struct TYPE_14__ {int cqe_size; int flags2; int* def_mac; int * eth_mtu_cap; } ;
struct TYPE_15__ {TYPE_5__ caps; } ;
struct TYPE_11__ {int bsddev; } ;
struct TYPE_12__ {TYPE_2__ dev; } ;


 int CSUM_IP ;
 int CSUM_TCP ;
 int CSUM_TCP_IPV6 ;
 int CSUM_TSO ;
 int CSUM_UDP ;
 int CSUM_UDP_IPV6 ;
 int DCB_CAP_DCBX_HOST ;
 int DEBUGNET_SET (struct net_device*,int ) ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ ETHERMTU ;
 int ETHER_ADDR_LEN ;
 scalar_t__ ETHER_HDR_LEN ;
 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 scalar_t__ ETH_FCS_LEN ;
 scalar_t__ ETH_HLEN ;
 int EVENTHANDLER_PRI_FIRST ;
 void* EVENTHANDLER_REGISTER (int ,int ,struct mlx4_en_priv*,int ) ;
 int GFP_KERNEL ;
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
 int IFT_ETHER ;
 scalar_t__ ILLEGAL_MAC (int) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int LINK_STATE_DOWN ;
 int MAX_TX_RINGS ;
 int MLX4_DEV_CAP_FLAG2_ETS_CFG ;
 int MLX4_DEV_CAP_FLAG2_TS ;
 int MLX4_DEV_EVENT_PORT_DOWN ;
 int MLX4_EN_FLAG_DCB_ENABLED ;
 int MLX4_EN_MSG_LEVEL ;
 int MLX4_EN_PAGE_SIZE ;
 scalar_t__ MLX4_EN_TX_MAX_MBUF_FRAGS ;
 int MLX4_EN_TX_MAX_MBUF_SIZE ;
 scalar_t__ MLX4_EN_TX_MAX_PAYLOAD_SIZE ;
 int MLX4_MAX_PORTS ;
 int SERVICE_TASK_DELAY ;
 int STATS_DELAY ;
 scalar_t__ VLAN_HLEN ;
 int callout_init (int *,int) ;
 int device_get_unit (int ) ;
 int en_err (struct mlx4_en_priv*,char*,...) ;
 int en_info (struct mlx4_en_priv*,char*) ;
 int en_warn (struct mlx4_en_priv*,char*,...) ;
 int ether_ifattach (struct net_device*,scalar_t__*) ;
 struct net_device* if_alloc (int ) ;
 int if_initname (struct net_device*,char*,int) ;
 int if_link_state_change (struct net_device*,int ) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int,int ,int ) ;
 int ifmedia_set (int *,int) ;
 void* kcalloc (int,int,int ) ;
 int kfree (struct mlx4_en_priv*) ;
 struct mlx4_en_priv* kzalloc (int,int ) ;
 int mlx4_INIT_PORT (TYPE_6__*,size_t) ;
 int mlx4_SET_PORT_general (TYPE_6__*,size_t,scalar_t__,int ,int ,int ,int ) ;
 int mlx4_alloc_hwq_res (TYPE_6__*,int *,int ,int ) ;
 int mlx4_en ;
 int mlx4_en_alloc_resources (struct mlx4_en_priv*) ;
 int mlx4_en_dcbnl_ops ;
 int mlx4_en_dcbnl_pfc_ops ;
 int mlx4_en_destroy_netdev (struct net_device*) ;
 int mlx4_en_do_get_stats ;
 int mlx4_en_do_set_rx_mode ;
 int mlx4_en_ioctl ;
 int mlx4_en_linkstate ;
 int mlx4_en_media_change ;
 int mlx4_en_media_status ;
 int mlx4_en_open ;
 int mlx4_en_qflush ;
 int mlx4_en_restart ;
 int mlx4_en_service_task ;
 int mlx4_en_set_default_moderation (struct mlx4_en_priv*) ;
 int mlx4_en_sysctl_conf (struct mlx4_en_priv*) ;
 int mlx4_en_transmit ;
 int mlx4_en_vlan_rx_add_vid ;
 int mlx4_en_vlan_rx_kill_vid ;
 int mlx4_is_slave (TYPE_6__*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int spin_lock_init (int *) ;
 int vlan_config ;
 int vlan_unconfig ;

int mlx4_en_init_netdev(struct mlx4_en_dev *mdev, int port,
   struct mlx4_en_port_profile *prof)
{
 struct net_device *dev;
 struct mlx4_en_priv *priv;
 uint8_t dev_addr[ETHER_ADDR_LEN];
 int err;
 int i;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 dev = priv->dev = if_alloc(IFT_ETHER);
 if (dev == ((void*)0)) {
  en_err(priv, "Net device allocation failed\n");
  kfree(priv);
  return -ENOMEM;
 }
 dev->if_softc = priv;
 if_initname(dev, "mlxen", (device_get_unit(
     mdev->pdev->dev.bsddev) * MLX4_MAX_PORTS) + port - 1);
 dev->if_mtu = ETHERMTU;
 dev->if_init = mlx4_en_open;
 dev->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 dev->if_ioctl = mlx4_en_ioctl;
 dev->if_transmit = mlx4_en_transmit;
 dev->if_qflush = mlx4_en_qflush;
 dev->if_snd.ifq_maxlen = prof->tx_ring_size;




 priv->counter_index = 0xff;
 spin_lock_init(&priv->stats_lock);
 INIT_WORK(&priv->rx_mode_task, mlx4_en_do_set_rx_mode);
 INIT_WORK(&priv->watchdog_task, mlx4_en_restart);
 INIT_WORK(&priv->linkstate_task, mlx4_en_linkstate);
 INIT_DELAYED_WORK(&priv->stats_task, mlx4_en_do_get_stats);
 INIT_DELAYED_WORK(&priv->service_task, mlx4_en_service_task);
 callout_init(&priv->watchdog_timer, 1);





 priv->msg_enable = MLX4_EN_MSG_LEVEL;
 priv->dev = dev;
 priv->mdev = mdev;
 priv->ddev = &mdev->pdev->dev;
 priv->prof = prof;
 priv->port = port;
 priv->port_up = 0;
 priv->flags = prof->flags;

 priv->num_tx_rings_p_up = mdev->profile.num_tx_rings_p_up;
 priv->tx_ring_num = prof->tx_ring_num;
 priv->tx_ring = kcalloc(MAX_TX_RINGS,
    sizeof(struct mlx4_en_tx_ring *), GFP_KERNEL);
 if (!priv->tx_ring) {
  err = -ENOMEM;
  goto out;
 }
 priv->tx_cq = kcalloc(sizeof(struct mlx4_en_cq *), MAX_TX_RINGS,
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
 priv->max_mtu = mdev->dev->caps.eth_mtu_cap[priv->port];
        priv->mac = mdev->dev->caps.def_mac[priv->port];
        if (ILLEGAL_MAC(priv->mac)) {







                err = -EINVAL;
                goto out;
        }

 mlx4_en_sysctl_conf(priv);

 err = mlx4_en_alloc_resources(priv);
 if (err)
  goto out;


 err = mlx4_alloc_hwq_res(mdev->dev, &priv->res,
    MLX4_EN_PAGE_SIZE, MLX4_EN_PAGE_SIZE);
 if (err) {
  en_err(priv, "Failed to allocate page for rx qps\n");
  goto out;
 }
 priv->allocated = 1;




 dev->if_capabilities |= IFCAP_HWCSUM | IFCAP_HWCSUM_IPV6;
 dev->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_VLAN_HWTAGGING;
 dev->if_capabilities |= IFCAP_VLAN_HWCSUM | IFCAP_VLAN_HWFILTER;
 dev->if_capabilities |= IFCAP_LINKSTATE | IFCAP_JUMBO_MTU;
 dev->if_capabilities |= IFCAP_LRO;
 dev->if_capabilities |= IFCAP_HWSTATS;

 if (mdev->LSO_support)
  dev->if_capabilities |= IFCAP_TSO4 | IFCAP_TSO6 | IFCAP_VLAN_HWTSO;
 dev->if_capenable = dev->if_capabilities;

 dev->if_hwassist = 0;
 if (dev->if_capenable & (IFCAP_TSO4 | IFCAP_TSO6))
  dev->if_hwassist |= CSUM_TSO;
 if (dev->if_capenable & IFCAP_TXCSUM)
  dev->if_hwassist |= (CSUM_TCP | CSUM_UDP | CSUM_IP);
 if (dev->if_capenable & IFCAP_TXCSUM_IPV6)
  dev->if_hwassist |= (CSUM_UDP_IPV6 | CSUM_TCP_IPV6);



 priv->vlan_attach = EVENTHANDLER_REGISTER(vlan_config,
            mlx4_en_vlan_rx_add_vid, priv, EVENTHANDLER_PRI_FIRST);
 priv->vlan_detach = EVENTHANDLER_REGISTER(vlan_unconfig,
            mlx4_en_vlan_rx_kill_vid, priv, EVENTHANDLER_PRI_FIRST);

 mdev->pndev[priv->port] = dev;

 priv->last_link_state = MLX4_DEV_EVENT_PORT_DOWN;
        mlx4_en_set_default_moderation(priv);


 for (i = 0; i < ETHER_ADDR_LEN; i++)
  dev_addr[ETHER_ADDR_LEN - 1 - i] = (u8) (priv->mac >> (8 * i));


 ether_ifattach(dev, dev_addr);
 if_link_state_change(dev, LINK_STATE_DOWN);
 ifmedia_init(&priv->media, IFM_IMASK | IFM_ETH_FMASK,
     mlx4_en_media_change, mlx4_en_media_status);
 ifmedia_add(&priv->media, IFM_ETHER | IFM_FDX | IFM_1000_T, 0, ((void*)0));
 ifmedia_add(&priv->media, IFM_ETHER | IFM_FDX | IFM_10G_SR, 0, ((void*)0));
 ifmedia_add(&priv->media, IFM_ETHER | IFM_FDX | IFM_10G_CX4, 0, ((void*)0));
 ifmedia_add(&priv->media, IFM_ETHER | IFM_FDX | IFM_40G_CR4, 0, ((void*)0));
 ifmedia_add(&priv->media, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
 ifmedia_set(&priv->media, IFM_ETHER | IFM_AUTO);

 DEBUGNET_SET(dev, mlx4_en);

 en_warn(priv, "Using %d TX rings\n", prof->tx_ring_num);
 en_warn(priv, "Using %d RX rings\n", prof->rx_ring_num);

 priv->registered = 1;

        en_warn(priv, "Using %d TX rings\n", prof->tx_ring_num);
        en_warn(priv, "Using %d RX rings\n", prof->rx_ring_num);


 priv->rx_mb_size = dev->if_mtu + ETH_HLEN + VLAN_HLEN + ETH_FCS_LEN;
 err = mlx4_SET_PORT_general(mdev->dev, priv->port,
        priv->rx_mb_size,
        prof->tx_pause, prof->tx_ppp,
        prof->rx_pause, prof->rx_ppp);
 if (err) {
  en_err(priv, "Failed setting port general configurations "
         "for port %d, with error %d\n", priv->port, err);
  goto out;
 }


 en_warn(priv, "Initializing port\n");
 err = mlx4_INIT_PORT(mdev->dev, priv->port);
 if (err) {
  en_err(priv, "Failed Initializing port\n");
  goto out;
 }

 queue_delayed_work(mdev->workqueue, &priv->stats_task, STATS_DELAY);

        if (mdev->dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_TS)
                queue_delayed_work(mdev->workqueue, &priv->service_task, SERVICE_TASK_DELAY);

 return 0;

out:
 mlx4_en_destroy_netdev(dev);
 return err;
}
