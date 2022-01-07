
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_17__ {int vxcr_ndesc; int vxcr_paddr; } ;
struct TYPE_15__ {int vxcr_ndesc; int vxcr_paddr; } ;
struct TYPE_14__ {int vxtxr_ndesc; int vxtxr_paddr; } ;
struct TYPE_13__ {int idi_size; int idi_paddr; } ;
struct TYPE_12__ {int idi_size; int idi_paddr; } ;
struct TYPE_10__ {int idi_size; int idi_paddr; } ;
struct vmxnet3_txqueue {int vmx_flags; scalar_t__ vmx_intr_mask_mode; TYPE_8__ vxrxq_comp_ring; TYPE_7__* vxrxq_cmd_ring; struct vmxnet3_rxq_shared* vxrxq_rs; struct vmxnet3_txqueue* vmx_rxq; TYPE_6__ vxtxq_comp_ring; TYPE_5__ vxtxq_cmd_ring; struct vmxnet3_txq_shared* vxtxq_ts; struct vmxnet3_txqueue* vmx_txq; TYPE_4__ vmx_mcast_dma; int vmx_event_intr_idx; TYPE_3__ vmx_rss_dma; TYPE_1__ vmx_qs_dma; TYPE_9__* vmx_scctx; int vmx_sctx; struct vmxnet3_driver_shared* vmx_ds; } ;
struct vmxnet3_txq_shared {int driver_data_len; void* driver_data; int comp_ring_len; int comp_ring; int cmd_ring_len; int cmd_ring; } ;
struct vmxnet3_softc {int vmx_flags; scalar_t__ vmx_intr_mask_mode; TYPE_8__ vxrxq_comp_ring; TYPE_7__* vxrxq_cmd_ring; struct vmxnet3_rxq_shared* vxrxq_rs; struct vmxnet3_softc* vmx_rxq; TYPE_6__ vxtxq_comp_ring; TYPE_5__ vxtxq_cmd_ring; struct vmxnet3_txq_shared* vxtxq_ts; struct vmxnet3_softc* vmx_txq; TYPE_4__ vmx_mcast_dma; int vmx_event_intr_idx; TYPE_3__ vmx_rss_dma; TYPE_1__ vmx_qs_dma; TYPE_9__* vmx_scctx; int vmx_sctx; struct vmxnet3_driver_shared* vmx_ds; } ;
struct vmxnet3_rxqueue {int vmx_flags; scalar_t__ vmx_intr_mask_mode; TYPE_8__ vxrxq_comp_ring; TYPE_7__* vxrxq_cmd_ring; struct vmxnet3_rxq_shared* vxrxq_rs; struct vmxnet3_rxqueue* vmx_rxq; TYPE_6__ vxtxq_comp_ring; TYPE_5__ vxtxq_cmd_ring; struct vmxnet3_txq_shared* vxtxq_ts; struct vmxnet3_rxqueue* vmx_txq; TYPE_4__ vmx_mcast_dma; int vmx_event_intr_idx; TYPE_3__ vmx_rss_dma; TYPE_1__ vmx_qs_dma; TYPE_9__* vmx_scctx; int vmx_sctx; struct vmxnet3_driver_shared* vmx_ds; } ;
struct vmxnet3_rxq_shared {int driver_data_len; void* driver_data; int comp_ring_len; int comp_ring; int * cmd_ring_len; int * cmd_ring; } ;
struct TYPE_11__ {int version; int len; int paddr; } ;
struct vmxnet3_driver_shared {int guest; int vmxnet3_revision; int upt_version; int driver_data_len; int automask; int nintr; int mcast_tablelen; int mcast_table; int * modlevel; int ictrl; int evintr; TYPE_2__ rss; int nrxsg_max; int queue_shared_len; int queue_shared; void* driver_data; int version; int magic; } ;
typedef TYPE_9__* if_softc_ctx_t ;
typedef int if_shared_ctx_t ;
struct TYPE_18__ {int isc_vectors; int isc_nrxqsets; int isc_ntxqsets; } ;
struct TYPE_16__ {int vxrxr_ndesc; int vxrxr_paddr; } ;


 int IFLIB_MAX_RX_SEGS ;
 int UPT1_IMOD_ADAPTIVE ;
 int VMXNET3_DRIVER_VERSION ;
 int VMXNET3_FLAG_RSS ;
 int VMXNET3_GOS_32BIT ;
 int VMXNET3_GOS_64BIT ;
 int VMXNET3_GOS_FREEBSD ;
 int VMXNET3_ICTRL_DISABLE_ALL ;
 scalar_t__ VMXNET3_IMM_AUTO ;
 int VMXNET3_REV1_MAGIC ;
 void* vtophys (struct vmxnet3_txqueue*) ;

__attribute__((used)) static void
vmxnet3_init_shared_data(struct vmxnet3_softc *sc)
{
 struct vmxnet3_driver_shared *ds;
 if_shared_ctx_t sctx;
 if_softc_ctx_t scctx;
 struct vmxnet3_txqueue *txq;
 struct vmxnet3_txq_shared *txs;
 struct vmxnet3_rxqueue *rxq;
 struct vmxnet3_rxq_shared *rxs;
 int i;

 ds = sc->vmx_ds;
 sctx = sc->vmx_sctx;
 scctx = sc->vmx_scctx;






 ds->magic = VMXNET3_REV1_MAGIC;


 ds->version = VMXNET3_DRIVER_VERSION;
 ds->guest = VMXNET3_GOS_FREEBSD |

     VMXNET3_GOS_64BIT;



 ds->vmxnet3_revision = 1;
 ds->upt_version = 1;


 ds->driver_data = vtophys(sc);
 ds->driver_data_len = sizeof(struct vmxnet3_softc);
 ds->queue_shared = sc->vmx_qs_dma.idi_paddr;
 ds->queue_shared_len = sc->vmx_qs_dma.idi_size;
 ds->nrxsg_max = IFLIB_MAX_RX_SEGS;


 if (sc->vmx_flags & VMXNET3_FLAG_RSS) {
  ds->rss.version = 1;
  ds->rss.paddr = sc->vmx_rss_dma.idi_paddr;
  ds->rss.len = sc->vmx_rss_dma.idi_size;
 }


 ds->automask = sc->vmx_intr_mask_mode == VMXNET3_IMM_AUTO;
 ds->nintr = (scctx->isc_vectors == 1) ?
     2 : (scctx->isc_nrxqsets + scctx->isc_ntxqsets + 1);
 ds->evintr = sc->vmx_event_intr_idx;
 ds->ictrl = VMXNET3_ICTRL_DISABLE_ALL;

 for (i = 0; i < ds->nintr; i++)
  ds->modlevel[i] = UPT1_IMOD_ADAPTIVE;


 ds->mcast_table = sc->vmx_mcast_dma.idi_paddr;
 ds->mcast_tablelen = sc->vmx_mcast_dma.idi_size;


 for (i = 0; i < scctx->isc_ntxqsets; i++) {
  txq = &sc->vmx_txq[i];
  txs = txq->vxtxq_ts;

  txs->cmd_ring = txq->vxtxq_cmd_ring.vxtxr_paddr;
  txs->cmd_ring_len = txq->vxtxq_cmd_ring.vxtxr_ndesc;
  txs->comp_ring = txq->vxtxq_comp_ring.vxcr_paddr;
  txs->comp_ring_len = txq->vxtxq_comp_ring.vxcr_ndesc;
  txs->driver_data = vtophys(txq);
  txs->driver_data_len = sizeof(struct vmxnet3_txqueue);
 }


 for (i = 0; i < scctx->isc_nrxqsets; i++) {
  rxq = &sc->vmx_rxq[i];
  rxs = rxq->vxrxq_rs;

  rxs->cmd_ring[0] = rxq->vxrxq_cmd_ring[0].vxrxr_paddr;
  rxs->cmd_ring_len[0] = rxq->vxrxq_cmd_ring[0].vxrxr_ndesc;
  rxs->cmd_ring[1] = rxq->vxrxq_cmd_ring[1].vxrxr_paddr;
  rxs->cmd_ring_len[1] = rxq->vxrxq_cmd_ring[1].vxrxr_ndesc;
  rxs->comp_ring = rxq->vxrxq_comp_ring.vxcr_paddr;
  rxs->comp_ring_len = rxq->vxrxq_comp_ring.vxcr_ndesc;
  rxs->driver_data = vtophys(rxq);
  rxs->driver_data_len = sizeof(struct vmxnet3_rxqueue);
 }
}
