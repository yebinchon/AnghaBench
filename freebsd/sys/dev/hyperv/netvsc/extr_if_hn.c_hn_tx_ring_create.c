
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct hn_txdesc {int flags; int rndis_pkt_dmap; int rndis_pkt; int data_dmap; int rndis_pkt_paddr; int agg_list; int chim_index; struct hn_tx_ring* txr; } ;
struct hn_tx_ring {int hn_tx_idx; int hn_txdesc_cnt; int hn_sched_tx; int hn_txdesc_avail; int hn_oactive; int hn_sends; int hn_pkts; int * hn_tx_sysctl_tree; void* hn_txdesc_br; int hn_txlist; int hn_tx_rndis_dtag; int hn_tx_data_dtag; struct hn_txdesc* hn_txdesc; int hn_direct_tx_size; int hn_tx_lock; void* hn_mbuf_br; int hn_txeof_task; int hn_tx_task; int hn_txeof; int hn_tx_taskq; int hn_txlist_spin; struct hn_softc* hn_sc; } ;
struct hn_softc {int * hn_tx_sysctl_tree; int * hn_tx_taskqs; int hn_dev; struct hn_tx_ring* hn_tx_ring; } ;
typedef int name ;
typedef int device_t ;
typedef int bus_dma_tag_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int HN_NVS_CHIM_IDX_INVALID ;
 int HN_RING_IDX2CPU (struct hn_softc*,int) ;
 int HN_RNDIS_PKT_ALIGN ;
 int HN_RNDIS_PKT_BOUNDARY ;
 int HN_RNDIS_PKT_LEN ;
 int HN_TXD_FLAG_ONLIST ;
 int HN_TX_DATA_BOUNDARY ;
 int HN_TX_DATA_MAXSIZE ;
 int HN_TX_DATA_SEGCNT_MAX ;
 int HN_TX_DATA_SEGSIZE ;
 int HN_TX_DESC_CNT ;
 scalar_t__ HN_TX_TASKQ_M_EVTTQ ;
 int MTX_DEF ;
 int MTX_SPIN ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int OID_AUTO ;
 int SLIST_INIT (int *) ;
 int SLIST_INSERT_HEAD (int *,struct hn_txdesc*,int ) ;
 int STAILQ_INIT (int *) ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int*,int ,char*) ;
 int * SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int ,char*) ;
 int SYSCTL_ADD_ULONG (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int *) ;
 int TASK_INIT (int *,int ,int ,struct hn_tx_ring*) ;
 int VMBUS_GET_EVENT_TASKQ (int ,int ,int ) ;
 void* buf_ring_alloc (int,int ,int,int *) ;
 int buf_ring_enqueue (void*,struct hn_txdesc*) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,int *,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bus_get_dma_tag (int ) ;
 int device_get_parent (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_printf (int ,char*,...) ;
 int hn_direct_tx_size ;
 int hn_get_txswq_depth (struct hn_tx_ring*) ;
 int hn_start_taskfunc ;
 int hn_start_txeof ;
 int hn_start_txeof_taskfunc ;
 int hn_tx_taskq_cnt ;
 scalar_t__ hn_tx_taskq_mode ;
 scalar_t__ hn_use_if_start ;
 int hn_xmit_taskfunc ;
 int hn_xmit_txeof ;
 int hn_xmit_txeof_taskfunc ;
 int hyperv_dma_map_paddr ;
 int link ;
 struct hn_txdesc* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
hn_tx_ring_create(struct hn_softc *sc, int id)
{
 struct hn_tx_ring *txr = &sc->hn_tx_ring[id];
 device_t dev = sc->hn_dev;
 bus_dma_tag_t parent_dtag;
 int error, i;

 txr->hn_sc = sc;
 txr->hn_tx_idx = id;


 mtx_init(&txr->hn_txlist_spin, "hn txlist", ((void*)0), MTX_SPIN);

 mtx_init(&txr->hn_tx_lock, "hn tx", ((void*)0), MTX_DEF);

 txr->hn_txdesc_cnt = HN_TX_DESC_CNT;
 txr->hn_txdesc = malloc(sizeof(struct hn_txdesc) * txr->hn_txdesc_cnt,
     M_DEVBUF, M_WAITOK | M_ZERO);

 SLIST_INIT(&txr->hn_txlist);





 if (hn_tx_taskq_mode == HN_TX_TASKQ_M_EVTTQ) {
  txr->hn_tx_taskq = VMBUS_GET_EVENT_TASKQ(
      device_get_parent(dev), dev, HN_RING_IDX2CPU(sc, id));
 } else {
  txr->hn_tx_taskq = sc->hn_tx_taskqs[id % hn_tx_taskq_cnt];
 }
 {
  int br_depth;

  txr->hn_txeof = hn_xmit_txeof;
  TASK_INIT(&txr->hn_tx_task, 0, hn_xmit_taskfunc, txr);
  TASK_INIT(&txr->hn_txeof_task, 0, hn_xmit_txeof_taskfunc, txr);

  br_depth = hn_get_txswq_depth(txr);
  txr->hn_mbuf_br = buf_ring_alloc(br_depth, M_DEVBUF,
      M_WAITOK, &txr->hn_tx_lock);
 }

 txr->hn_direct_tx_size = hn_direct_tx_size;





 txr->hn_sched_tx = 1;

 parent_dtag = bus_get_dma_tag(dev);


 error = bus_dma_tag_create(parent_dtag,
     HN_RNDIS_PKT_ALIGN,
     HN_RNDIS_PKT_BOUNDARY,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     HN_RNDIS_PKT_LEN,
     1,
     HN_RNDIS_PKT_LEN,
     0,
     ((void*)0),
     ((void*)0),
     &txr->hn_tx_rndis_dtag);
 if (error) {
  device_printf(dev, "failed to create rndis dmatag\n");
  return error;
 }


 error = bus_dma_tag_create(parent_dtag,
     1,
     HN_TX_DATA_BOUNDARY,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     HN_TX_DATA_MAXSIZE,
     HN_TX_DATA_SEGCNT_MAX,
     HN_TX_DATA_SEGSIZE,
     0,
     ((void*)0),
     ((void*)0),
     &txr->hn_tx_data_dtag);
 if (error) {
  device_printf(dev, "failed to create data dmatag\n");
  return error;
 }

 for (i = 0; i < txr->hn_txdesc_cnt; ++i) {
  struct hn_txdesc *txd = &txr->hn_txdesc[i];

  txd->txr = txr;
  txd->chim_index = HN_NVS_CHIM_IDX_INVALID;
  STAILQ_INIT(&txd->agg_list);




         error = bus_dmamem_alloc(txr->hn_tx_rndis_dtag,
      (void **)&txd->rndis_pkt,
      BUS_DMA_WAITOK | BUS_DMA_COHERENT | BUS_DMA_ZERO,
      &txd->rndis_pkt_dmap);
  if (error) {
   device_printf(dev,
       "failed to allocate rndis_packet_msg, %d\n", i);
   return error;
  }

  error = bus_dmamap_load(txr->hn_tx_rndis_dtag,
      txd->rndis_pkt_dmap,
      txd->rndis_pkt, HN_RNDIS_PKT_LEN,
      hyperv_dma_map_paddr, &txd->rndis_pkt_paddr,
      BUS_DMA_NOWAIT);
  if (error) {
   device_printf(dev,
       "failed to load rndis_packet_msg, %d\n", i);
   bus_dmamem_free(txr->hn_tx_rndis_dtag,
       txd->rndis_pkt, txd->rndis_pkt_dmap);
   return error;
  }


  error = bus_dmamap_create(txr->hn_tx_data_dtag, 0,
      &txd->data_dmap);
  if (error) {
   device_printf(dev,
       "failed to allocate tx data dmamap\n");
   bus_dmamap_unload(txr->hn_tx_rndis_dtag,
       txd->rndis_pkt_dmap);
   bus_dmamem_free(txr->hn_tx_rndis_dtag,
       txd->rndis_pkt, txd->rndis_pkt_dmap);
   return error;
  }


  txd->flags |= HN_TXD_FLAG_ONLIST;

  SLIST_INSERT_HEAD(&txr->hn_txlist, txd, link);



 }
 txr->hn_txdesc_avail = txr->hn_txdesc_cnt;

 if (sc->hn_tx_sysctl_tree != ((void*)0)) {
  struct sysctl_oid_list *child;
  struct sysctl_ctx_list *ctx;
  char name[16];





  ctx = device_get_sysctl_ctx(dev);
  child = SYSCTL_CHILDREN(sc->hn_tx_sysctl_tree);

  snprintf(name, sizeof(name), "%d", id);
  txr->hn_tx_sysctl_tree = SYSCTL_ADD_NODE(ctx, child, OID_AUTO,
      name, CTLFLAG_RD | CTLFLAG_MPSAFE, 0, "");

  if (txr->hn_tx_sysctl_tree != ((void*)0)) {
   child = SYSCTL_CHILDREN(txr->hn_tx_sysctl_tree);
   {
    SYSCTL_ADD_INT(ctx, child, OID_AUTO, "oactive",
        CTLFLAG_RD, &txr->hn_oactive, 0,
        "over active");
   }
   SYSCTL_ADD_ULONG(ctx, child, OID_AUTO, "packets",
       CTLFLAG_RW, &txr->hn_pkts,
       "# of packets transmitted");
   SYSCTL_ADD_ULONG(ctx, child, OID_AUTO, "sends",
       CTLFLAG_RW, &txr->hn_sends, "# of sends");
  }
 }

 return 0;
}
