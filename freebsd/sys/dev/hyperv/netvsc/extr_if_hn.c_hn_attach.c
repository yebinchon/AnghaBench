
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct taskqueue {int dummy; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_11__ {int ifq_drv_maxlen; } ;
struct ifnet {scalar_t__ if_hw_tsomax; scalar_t__ if_hw_tsomaxsegcount; scalar_t__ if_hw_tsomaxsegsize; int if_flags; int if_capabilities; int if_hwassist; int if_capenable; scalar_t__ if_mtu; int if_hdrlen; int if_qflush; int if_transmit; TYPE_6__ if_snd; int if_start; int if_init; int if_ioctl; int if_baudrate; struct hn_softc* if_softc; } ;
struct TYPE_9__ {TYPE_1__* ifm_cur; int ifm_media; } ;
struct hn_softc {int hn_cpu; int hn_rx_ring_inuse; scalar_t__ hn_nvs_ver; scalar_t__ hn_rndis_agg_size; scalar_t__ hn_rndis_agg_pkts; scalar_t__ hn_rndis_agg_align; int hn_caps; int hn_flags; void* hn_ifnet_dethand; void* hn_ifnet_atthand; void* hn_ifnet_lnkhand; void* hn_ifaddr_evthand; void* hn_ifnet_evthand; void* hn_mgmt_taskq0; void* hn_mgmt_taskq; TYPE_5__* hn_tx_ring; TYPE_2__ hn_media; int hn_rss_ind_size; int hn_prichan; int * hn_xact; struct ifnet* hn_ifp; int hn_vf_init; void* hn_vf_taskq; int hn_netchg_status; int hn_netchg_init; int hn_link_task; void** hn_tx_taskqs; int hn_agg_pkts; int hn_agg_size; int hn_xvf_flags; int hn_vf_lock; int hn_dev; } ;
struct ether_vlan_header {int dummy; } ;
typedef int device_t ;
struct TYPE_10__ {int hn_csum_assist; } ;
struct TYPE_8__ {int ifm_media; } ;


 int CSUM_IP6_TSO ;
 int CSUM_IP_TSO ;
 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int CTLTYPE_OPAQUE ;
 int CTLTYPE_STRING ;
 int CTLTYPE_UINT ;
 int ENXIO ;
 scalar_t__ ETHERMTU ;
 int ETHER_ADDR_LEN ;
 int EVENTHANDLER_PRI_ANY ;
 void* EVENTHANDLER_REGISTER (int ,int ,struct hn_softc*,int ) ;
 int HN_CAP_TSO4 ;
 int HN_CAP_TSO6 ;
 int HN_CAP_VLAN ;
 int HN_CSUM_IP6_MASK ;
 int HN_CSUM_IP_MASK ;
 int HN_FLAG_SYNTH_ATTACHED ;
 int HN_LOCK (struct hn_softc*) ;
 int HN_LOCK_INIT (struct hn_softc*) ;
 int HN_LRO_LENLIM_MULTIRX_DEF ;
 int HN_RING_CNT_DEF_MAX ;
 scalar_t__ HN_TX_DATA_SEGCNT_MAX ;
 scalar_t__ HN_TX_TASKQ_M_GLOBAL ;
 scalar_t__ HN_TX_TASKQ_M_INDEP ;
 int HN_UNLOCK (struct hn_softc*) ;
 int HN_XACT_REQ_SIZE ;
 int HN_XACT_RESP_SIZE ;
 int HN_XVFFLAG_ACCBPF ;
 int IFCAP_LINKSTATE ;
 int IFCAP_LRO ;
 int IFCAP_RXCSUM ;
 int IFCAP_RXCSUM_IPV6 ;
 int IFCAP_TSO4 ;
 int IFCAP_TSO6 ;
 int IFCAP_TXCSUM ;
 int IFCAP_TXCSUM_IPV6 ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFQ_SET_MAXLEN (TYPE_6__*,int) ;
 int IFQ_SET_READY (TYPE_6__*) ;
 int IFT_ETHER ;
 int IF_Gbps (int) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int OID_AUTO ;
 scalar_t__ PAGE_SIZE ;
 int PI_NET ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct hn_softc*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,scalar_t__*,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 int TASK_INIT (int *,int ,int ,struct hn_softc*) ;
 int TIMEOUT_TASK_INIT (void*,int *,int ,int ,struct hn_softc*) ;
 int atomic_fetchadd_int (int *,int) ;
 scalar_t__ bootverbose ;
 int bus_get_dma_tag (int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct hn_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,scalar_t__) ;
 int ether_ifattach (struct ifnet*,int *) ;
 int ether_ifattach_event ;
 int hn_caps_sysctl ;
 int hn_chan_cnt ;
 int hn_cpu_index ;
 int hn_create_rx_data (struct hn_softc*,int) ;
 int hn_create_tx_data (struct hn_softc*,int) ;
 int hn_detach (int ) ;
 int hn_fixup_rx_data (struct hn_softc*) ;
 int hn_fixup_tx_data (struct hn_softc*) ;
 int hn_get_txswq_depth (TYPE_5__*) ;
 int hn_hwassist_sysctl ;
 int hn_ifaddr_event ;
 int hn_ifmedia_sts ;
 int hn_ifmedia_upd ;
 int hn_ifnet_attevent ;
 int hn_ifnet_detevent ;
 int hn_ifnet_event ;
 int hn_ifnet_lnkevent ;
 int hn_init ;
 int hn_ioctl ;
 int hn_link_taskfunc ;
 int hn_ndis_version_sysctl ;
 int hn_netchg_init_taskfunc ;
 int hn_netchg_status_taskfunc ;
 int hn_polling_sysctl ;
 int hn_rndis_get_eaddr (struct hn_softc*,int *) ;
 int hn_rndis_get_mtu (struct hn_softc*,scalar_t__*) ;
 int hn_rss_hash_sysctl ;
 int hn_rss_hcap_sysctl ;
 int hn_rss_ind_sysctl ;
 int hn_rss_key_sysctl ;
 int hn_rss_mbuf_sysctl ;
 int hn_rxfilter_sysctl ;
 int hn_rxvf_sysctl ;
 int hn_set_lro_lenlim (struct hn_softc*,int ) ;
 int hn_set_tso_maxsize (struct hn_softc*,int ,scalar_t__) ;
 int hn_start ;
 int hn_synth_attach (struct hn_softc*,scalar_t__) ;
 int hn_synth_detach (struct hn_softc*) ;
 int hn_transmit ;
 int hn_tso_maxlen ;
 int hn_tx_agg_pkts ;
 int hn_tx_agg_size ;
 int hn_tx_ring_cnt ;
 int hn_tx_taskq_cnt ;
 scalar_t__ hn_tx_taskq_mode ;
 void** hn_tx_taskque ;
 int hn_txagg_pkts_sysctl ;
 int hn_txagg_size_sysctl ;
 int hn_update_link_status (struct hn_softc*) ;
 scalar_t__ hn_use_if_start ;
 int hn_vf_sysctl ;
 int hn_xmit_qflush ;
 scalar_t__ hn_xpnt_vf ;
 scalar_t__ hn_xpnt_vf_accbpf ;
 int hn_xpnt_vf_accbpf_sysctl ;
 int hn_xpnt_vf_enabled_sysctl ;
 int hn_xpnt_vf_init_taskfunc ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int if_printf (struct ifnet*,char*,scalar_t__,scalar_t__) ;
 int ifaddr_event ;
 int ifmedia_add (TYPE_2__*,int,int ,int *) ;
 int ifmedia_init (TYPE_2__*,int ,int ,int ) ;
 int ifmedia_set (TYPE_2__*,int) ;
 int ifnet_departure_event ;
 int ifnet_event ;
 int ifnet_link_event ;
 void** malloc (int,int ,int ) ;
 int mp_ncpus ;
 int rm_init (int *,char*) ;
 int rss_getnumbuckets () ;
 void* taskqueue_create (char*,int ,int ,void**) ;
 int taskqueue_start_threads (void**,int,int ,char*,int ,...) ;
 int taskqueue_thread_enqueue ;
 scalar_t__ vmbus_chan_is_revoked (int ) ;
 int vmbus_chan_set_orphan (int ,int *) ;
 int vmbus_get_channel (int ) ;
 int * vmbus_xact_ctx_create (int ,int ,int ,int ) ;

__attribute__((used)) static int
hn_attach(device_t dev)
{
 struct hn_softc *sc = device_get_softc(dev);
 struct sysctl_oid_list *child;
 struct sysctl_ctx_list *ctx;
 uint8_t eaddr[ETHER_ADDR_LEN];
 struct ifnet *ifp = ((void*)0);
 int error, ring_cnt, tx_ring_cnt;
 uint32_t mtu;

 sc->hn_dev = dev;
 sc->hn_prichan = vmbus_get_channel(dev);
 HN_LOCK_INIT(sc);
 rm_init(&sc->hn_vf_lock, "hnvf");
 if (hn_xpnt_vf && hn_xpnt_vf_accbpf)
  sc->hn_xvf_flags |= HN_XVFFLAG_ACCBPF;




 sc->hn_agg_size = hn_tx_agg_size;
 sc->hn_agg_pkts = hn_tx_agg_pkts;




 if (hn_tx_taskq_mode == HN_TX_TASKQ_M_INDEP) {
  int i;

  sc->hn_tx_taskqs =
      malloc(hn_tx_taskq_cnt * sizeof(struct taskqueue *),
      M_DEVBUF, M_WAITOK);
  for (i = 0; i < hn_tx_taskq_cnt; ++i) {
   sc->hn_tx_taskqs[i] = taskqueue_create("hn_tx",
       M_WAITOK, taskqueue_thread_enqueue,
       &sc->hn_tx_taskqs[i]);
   taskqueue_start_threads(&sc->hn_tx_taskqs[i], 1, PI_NET,
       "%s tx%d", device_get_nameunit(dev), i);
  }
 } else if (hn_tx_taskq_mode == HN_TX_TASKQ_M_GLOBAL) {
  sc->hn_tx_taskqs = hn_tx_taskque;
 }




 sc->hn_mgmt_taskq0 = taskqueue_create("hn_mgmt", M_WAITOK,
     taskqueue_thread_enqueue, &sc->hn_mgmt_taskq0);
 taskqueue_start_threads(&sc->hn_mgmt_taskq0, 1, PI_NET, "%s mgmt",
     device_get_nameunit(dev));
 TASK_INIT(&sc->hn_link_task, 0, hn_link_taskfunc, sc);
 TASK_INIT(&sc->hn_netchg_init, 0, hn_netchg_init_taskfunc, sc);
 TIMEOUT_TASK_INIT(sc->hn_mgmt_taskq0, &sc->hn_netchg_status, 0,
     hn_netchg_status_taskfunc, sc);

 if (hn_xpnt_vf) {



  sc->hn_vf_taskq = taskqueue_create("hn_vf", M_WAITOK,
      taskqueue_thread_enqueue, &sc->hn_vf_taskq);
  taskqueue_start_threads(&sc->hn_vf_taskq, 1, PI_NET, "%s vf",
      device_get_nameunit(dev));
  TIMEOUT_TASK_INIT(sc->hn_vf_taskq, &sc->hn_vf_init, 0,
      hn_xpnt_vf_init_taskfunc, sc);
 }






 ifp = sc->hn_ifp = if_alloc(IFT_ETHER);
 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));





 ifmedia_init(&sc->hn_media, 0, hn_ifmedia_upd, hn_ifmedia_sts);
 ring_cnt = hn_chan_cnt;
 if (ring_cnt <= 0) {

  ring_cnt = mp_ncpus;
  if (ring_cnt > HN_RING_CNT_DEF_MAX)
   ring_cnt = HN_RING_CNT_DEF_MAX;
 } else if (ring_cnt > mp_ncpus) {
  ring_cnt = mp_ncpus;
 }





 tx_ring_cnt = hn_tx_ring_cnt;
 if (tx_ring_cnt <= 0 || tx_ring_cnt > ring_cnt)
  tx_ring_cnt = ring_cnt;
 sc->hn_cpu = atomic_fetchadd_int(&hn_cpu_index, ring_cnt) % mp_ncpus;





 error = hn_create_tx_data(sc, tx_ring_cnt);
 if (error)
  goto failed;
 error = hn_create_rx_data(sc, ring_cnt);
 if (error)
  goto failed;




 sc->hn_xact = vmbus_xact_ctx_create(bus_get_dma_tag(dev),
     HN_XACT_REQ_SIZE, HN_XACT_RESP_SIZE, 0);
 if (sc->hn_xact == ((void*)0)) {
  error = ENXIO;
  goto failed;
 }
 vmbus_chan_set_orphan(sc->hn_prichan, sc->hn_xact);
 if (vmbus_chan_is_revoked(sc->hn_prichan)) {
  error = ENXIO;
  goto failed;
 }




 error = hn_synth_attach(sc, ETHERMTU);
 if (error)
  goto failed;

 error = hn_rndis_get_eaddr(sc, eaddr);
 if (error)
  goto failed;

 error = hn_rndis_get_mtu(sc, &mtu);
 if (error)
  mtu = ETHERMTU;
 else if (bootverbose)
  device_printf(dev, "RNDIS mtu %u\n", mtu);
 hn_fixup_tx_data(sc);
 hn_fixup_rx_data(sc);

 ctx = device_get_sysctl_ctx(dev);
 child = SYSCTL_CHILDREN(device_get_sysctl_tree(dev));
 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "nvs_version", CTLFLAG_RD,
     &sc->hn_nvs_ver, 0, "NVS version");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "ndis_version",
     CTLTYPE_STRING | CTLFLAG_RD | CTLFLAG_MPSAFE, sc, 0,
     hn_ndis_version_sysctl, "A", "NDIS version");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "caps",
     CTLTYPE_STRING | CTLFLAG_RD | CTLFLAG_MPSAFE, sc, 0,
     hn_caps_sysctl, "A", "capabilities");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "hwassist",
     CTLTYPE_STRING | CTLFLAG_RD | CTLFLAG_MPSAFE, sc, 0,
     hn_hwassist_sysctl, "A", "hwassist");
 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "tso_max",
     CTLFLAG_RD, &ifp->if_hw_tsomax, 0, "max TSO size");
 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "tso_maxsegcnt",
     CTLFLAG_RD, &ifp->if_hw_tsomaxsegcount, 0,
     "max # of TSO segments");
 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "tso_maxsegsz",
     CTLFLAG_RD, &ifp->if_hw_tsomaxsegsize, 0,
     "max size of TSO segment");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "rxfilter",
     CTLTYPE_STRING | CTLFLAG_RD | CTLFLAG_MPSAFE, sc, 0,
     hn_rxfilter_sysctl, "A", "rxfilter");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "rss_hash",
     CTLTYPE_STRING | CTLFLAG_RD | CTLFLAG_MPSAFE, sc, 0,
     hn_rss_hash_sysctl, "A", "RSS hash");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "rss_hashcap",
     CTLTYPE_STRING | CTLFLAG_RD | CTLFLAG_MPSAFE, sc, 0,
     hn_rss_hcap_sysctl, "A", "RSS hash capabilities");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "mbuf_hash",
     CTLTYPE_STRING | CTLFLAG_RD | CTLFLAG_MPSAFE, sc, 0,
     hn_rss_mbuf_sysctl, "A", "RSS hash for mbufs");
 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "rss_ind_size",
     CTLFLAG_RD, &sc->hn_rss_ind_size, 0, "RSS indirect entry count");




 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "rss_key",
     CTLTYPE_OPAQUE | CTLFLAG_RW | CTLFLAG_MPSAFE, sc, 0,
     hn_rss_key_sysctl, "IU", "RSS key");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "rss_ind",
     CTLTYPE_OPAQUE | CTLFLAG_RW | CTLFLAG_MPSAFE, sc, 0,
     hn_rss_ind_sysctl, "IU", "RSS indirect table");

 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "rndis_agg_size",
     CTLFLAG_RD, &sc->hn_rndis_agg_size, 0,
     "RNDIS offered packet transmission aggregation size limit");
 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "rndis_agg_pkts",
     CTLFLAG_RD, &sc->hn_rndis_agg_pkts, 0,
     "RNDIS offered packet transmission aggregation count limit");
 SYSCTL_ADD_UINT(ctx, child, OID_AUTO, "rndis_agg_align",
     CTLFLAG_RD, &sc->hn_rndis_agg_align, 0,
     "RNDIS packet transmission aggregation alignment");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "agg_size",
     CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_MPSAFE, sc, 0,
     hn_txagg_size_sysctl, "I",
     "Packet transmission aggregation size, 0 -- disable, -1 -- auto");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "agg_pkts",
     CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_MPSAFE, sc, 0,
     hn_txagg_pkts_sysctl, "I",
     "Packet transmission aggregation packets, "
     "0 -- disable, -1 -- auto");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "polling",
     CTLTYPE_UINT | CTLFLAG_RW | CTLFLAG_MPSAFE, sc, 0,
     hn_polling_sysctl, "I",
     "Polling frequency: [100,1000000], 0 disable polling");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "vf",
     CTLTYPE_STRING | CTLFLAG_RD | CTLFLAG_MPSAFE, sc, 0,
     hn_vf_sysctl, "A", "Virtual Function's name");
 if (!hn_xpnt_vf) {
  SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "rxvf",
      CTLTYPE_STRING | CTLFLAG_RD | CTLFLAG_MPSAFE, sc, 0,
      hn_rxvf_sysctl, "A", "activated Virtual Function's name");
 } else {
  SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "vf_xpnt_enabled",
      CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE, sc, 0,
      hn_xpnt_vf_enabled_sysctl, "I",
      "Transparent VF enabled");
  SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "vf_xpnt_accbpf",
      CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_MPSAFE, sc, 0,
      hn_xpnt_vf_accbpf_sysctl, "I",
      "Accurate BPF for transparent VF");
 }




 ifmedia_add(&sc->hn_media, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
 ifmedia_set(&sc->hn_media, IFM_ETHER | IFM_AUTO);

 sc->hn_media.ifm_media = sc->hn_media.ifm_cur->ifm_media;





 ifp->if_baudrate = IF_Gbps(10);
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = hn_ioctl;
 ifp->if_init = hn_init;
 {
  ifp->if_transmit = hn_transmit;
  ifp->if_qflush = hn_xmit_qflush;
 }

 ifp->if_capabilities |= IFCAP_RXCSUM | IFCAP_LRO | IFCAP_LINKSTATE;




 if (sc->hn_caps & HN_CAP_VLAN) {

  ifp->if_capabilities |= IFCAP_VLAN_HWTAGGING | IFCAP_VLAN_MTU;
 }

 ifp->if_hwassist = sc->hn_tx_ring[0].hn_csum_assist;
 if (ifp->if_hwassist & HN_CSUM_IP_MASK)
  ifp->if_capabilities |= IFCAP_TXCSUM;
 if (ifp->if_hwassist & HN_CSUM_IP6_MASK)
  ifp->if_capabilities |= IFCAP_TXCSUM_IPV6;
 if (sc->hn_caps & HN_CAP_TSO4) {
  ifp->if_capabilities |= IFCAP_TSO4;
  ifp->if_hwassist |= CSUM_IP_TSO;
 }
 if (sc->hn_caps & HN_CAP_TSO6) {
  ifp->if_capabilities |= IFCAP_TSO6;
  ifp->if_hwassist |= CSUM_IP6_TSO;
 }


 ifp->if_capenable = ifp->if_capabilities;





 ifp->if_capenable &= ~(IFCAP_TXCSUM_IPV6 | IFCAP_TSO6);
 ifp->if_hwassist &= ~(HN_CSUM_IP6_MASK | CSUM_IP6_TSO);

 if (ifp->if_capabilities & (IFCAP_TSO6 | IFCAP_TSO4)) {




  HN_LOCK(sc);
  hn_set_tso_maxsize(sc, hn_tso_maxlen, ETHERMTU);
  HN_UNLOCK(sc);
  ifp->if_hw_tsomaxsegcount = HN_TX_DATA_SEGCNT_MAX;
  ifp->if_hw_tsomaxsegsize = PAGE_SIZE;
 }

 ether_ifattach(ifp, eaddr);

 if ((ifp->if_capabilities & (IFCAP_TSO6 | IFCAP_TSO4)) && bootverbose) {
  if_printf(ifp, "TSO segcnt %u segsz %u\n",
      ifp->if_hw_tsomaxsegcount, ifp->if_hw_tsomaxsegsize);
 }
 if (mtu < ETHERMTU) {
  if_printf(ifp, "fixup mtu %u -> %u\n", ifp->if_mtu, mtu);
  ifp->if_mtu = mtu;
 }


 ifp->if_hdrlen = sizeof(struct ether_vlan_header);




 sc->hn_mgmt_taskq = sc->hn_mgmt_taskq0;
 hn_update_link_status(sc);

 if (!hn_xpnt_vf) {
  sc->hn_ifnet_evthand = EVENTHANDLER_REGISTER(ifnet_event,
      hn_ifnet_event, sc, EVENTHANDLER_PRI_ANY);
  sc->hn_ifaddr_evthand = EVENTHANDLER_REGISTER(ifaddr_event,
      hn_ifaddr_event, sc, EVENTHANDLER_PRI_ANY);
 } else {
  sc->hn_ifnet_lnkhand = EVENTHANDLER_REGISTER(ifnet_link_event,
      hn_ifnet_lnkevent, sc, EVENTHANDLER_PRI_ANY);
 }







 sc->hn_ifnet_atthand = EVENTHANDLER_REGISTER(ether_ifattach_event,
     hn_ifnet_attevent, sc, EVENTHANDLER_PRI_ANY);
 sc->hn_ifnet_dethand = EVENTHANDLER_REGISTER(ifnet_departure_event,
     hn_ifnet_detevent, sc, EVENTHANDLER_PRI_ANY);

 return (0);
failed:
 if (sc->hn_flags & HN_FLAG_SYNTH_ATTACHED)
  hn_synth_detach(sc);
 hn_detach(dev);
 return (error);
}
