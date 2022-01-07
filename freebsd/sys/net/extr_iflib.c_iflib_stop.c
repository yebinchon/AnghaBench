
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_1__* iflib_txq_t ;
typedef TYPE_2__* iflib_rxq_t ;
typedef int iflib_fl_t ;
typedef TYPE_3__* iflib_dma_info_t ;
typedef TYPE_4__* if_softc_ctx_t ;
typedef TYPE_5__* if_shared_ctx_t ;
typedef TYPE_6__* if_ctx_t ;
struct TYPE_18__ {int isc_ntxqsets; int isc_nrxqsets; } ;
struct TYPE_20__ {int ifc_ifp; TYPE_5__* ifc_sctx; TYPE_4__ ifc_softc_ctx; TYPE_2__* ifc_rxqs; TYPE_1__* ifc_txqs; } ;
struct TYPE_19__ {int isc_ntxqs; int isc_nrxqs; } ;
struct TYPE_17__ {int idi_size; scalar_t__ idi_vaddr; } ;
struct TYPE_16__ {int ifr_nfl; int ifr_fl; TYPE_3__* ifr_ifdi; scalar_t__ ifr_cq_cidx; } ;
struct TYPE_15__ {int ift_size; TYPE_3__* ift_ifdi; int ift_br; scalar_t__ ift_pullups; scalar_t__ ift_map_failed; scalar_t__ ift_txd_encap_efbig; scalar_t__ ift_no_tx_dma_setup; scalar_t__ ift_mbuf_defrag_failed; scalar_t__ ift_mbuf_defrag; scalar_t__ ift_closed; scalar_t__ ift_no_desc_avail; scalar_t__ ift_pidx; scalar_t__ ift_cidx; scalar_t__ ift_gen; scalar_t__ ift_in_use; scalar_t__ ift_cidx_processed; scalar_t__ ift_cleaned; scalar_t__ ift_processed; int ift_timer; } ;


 int CALLOUT_LOCK (TYPE_1__*) ;
 int CALLOUT_UNLOCK (TYPE_1__*) ;
 int DELAY (int) ;
 int IFDI_INTR_DISABLE (TYPE_6__*) ;
 int IFDI_STOP (TYPE_6__*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int bzero (void*,int ) ;
 int callout_stop (int *) ;
 int if_setdrvflagbits (int ,int ,int ) ;
 int iflib_debug_reset () ;
 int iflib_fl_bufs_free (int ) ;
 int iflib_ifmp_purge (TYPE_1__*) ;
 int iflib_txsd_free (TYPE_6__*,TYPE_1__*,int) ;
 int ifmp_ring_reset_stats (int ) ;

void
iflib_stop(if_ctx_t ctx)
{
 iflib_txq_t txq = ctx->ifc_txqs;
 iflib_rxq_t rxq = ctx->ifc_rxqs;
 if_softc_ctx_t scctx = &ctx->ifc_softc_ctx;
 if_shared_ctx_t sctx = ctx->ifc_sctx;
 iflib_dma_info_t di;
 iflib_fl_t fl;
 int i, j;


 if_setdrvflagbits(ctx->ifc_ifp, IFF_DRV_OACTIVE, IFF_DRV_RUNNING);

 IFDI_INTR_DISABLE(ctx);
 DELAY(1000);
 IFDI_STOP(ctx);
 DELAY(1000);

 iflib_debug_reset();

 for (i = 0; i < scctx->isc_ntxqsets; i++, txq++) {


  CALLOUT_LOCK(txq);
  callout_stop(&txq->ift_timer);
  CALLOUT_UNLOCK(txq);


  iflib_ifmp_purge(txq);

  for (j = 0; j < txq->ift_size; j++) {
   iflib_txsd_free(ctx, txq, j);
  }
  txq->ift_processed = txq->ift_cleaned = txq->ift_cidx_processed = 0;
  txq->ift_in_use = txq->ift_gen = txq->ift_cidx = txq->ift_pidx = txq->ift_no_desc_avail = 0;
  txq->ift_closed = txq->ift_mbuf_defrag = txq->ift_mbuf_defrag_failed = 0;
  txq->ift_no_tx_dma_setup = txq->ift_txd_encap_efbig = txq->ift_map_failed = 0;
  txq->ift_pullups = 0;
  ifmp_ring_reset_stats(txq->ift_br);
  for (j = 0, di = txq->ift_ifdi; j < sctx->isc_ntxqs; j++, di++)
   bzero((void *)di->idi_vaddr, di->idi_size);
 }
 for (i = 0; i < scctx->isc_nrxqsets; i++, rxq++) {


  rxq->ifr_cq_cidx = 0;
  for (j = 0, di = rxq->ifr_ifdi; j < sctx->isc_nrxqs; j++, di++)
   bzero((void *)di->idi_vaddr, di->idi_size);

  for (j = 0, fl = rxq->ifr_fl; j < rxq->ifr_nfl; j++, fl++)
   iflib_fl_bufs_free(fl);
 }
}
