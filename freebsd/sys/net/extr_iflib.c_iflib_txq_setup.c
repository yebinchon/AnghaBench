
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* iflib_txq_t ;
typedef TYPE_2__* iflib_dma_info_t ;
typedef TYPE_3__* if_softc_ctx_t ;
typedef TYPE_4__* if_shared_ctx_t ;
typedef TYPE_5__* if_ctx_t ;
struct TYPE_10__ {int * isc_ntxd; } ;
struct TYPE_12__ {TYPE_4__* ifc_sctx; TYPE_3__ ifc_softc_ctx; } ;
struct TYPE_11__ {int isc_ntxqs; } ;
struct TYPE_9__ {int idi_map; int idi_tag; int idi_size; scalar_t__ idi_vaddr; } ;
struct TYPE_8__ {size_t ift_br_offset; TYPE_2__* ift_ifdi; int ift_id; int ift_size; scalar_t__ ift_npending; scalar_t__ ift_cidx; scalar_t__ ift_pidx; scalar_t__ ift_cidx_processed; int ift_update_freq; int ift_qstatus; TYPE_5__* ift_ctx; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int IFDI_TXQ_SETUP (TYPE_5__*,int ) ;
 int IFLIB_DEFAULT_TX_UPDATE_FREQ ;
 int IFLIB_QUEUE_IDLE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (void*,int ) ;

__attribute__((used)) static int
iflib_txq_setup(iflib_txq_t txq)
{
 if_ctx_t ctx = txq->ift_ctx;
 if_softc_ctx_t scctx = &ctx->ifc_softc_ctx;
 if_shared_ctx_t sctx = ctx->ifc_sctx;
 iflib_dma_info_t di;
 int i;


 txq->ift_qstatus = IFLIB_QUEUE_IDLE;

 txq->ift_update_freq = IFLIB_DEFAULT_TX_UPDATE_FREQ;


 txq->ift_cidx_processed = 0;
 txq->ift_pidx = txq->ift_cidx = txq->ift_npending = 0;
 txq->ift_size = scctx->isc_ntxd[txq->ift_br_offset];

 for (i = 0, di = txq->ift_ifdi; i < sctx->isc_ntxqs; i++, di++)
  bzero((void *)di->idi_vaddr, di->idi_size);

 IFDI_TXQ_SETUP(ctx, txq->ift_id);
 for (i = 0, di = txq->ift_ifdi; i < sctx->isc_ntxqs; i++, di++)
  bus_dmamap_sync(di->idi_tag, di->idi_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 return (0);
}
