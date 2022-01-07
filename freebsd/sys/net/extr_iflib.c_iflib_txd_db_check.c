
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ qidx_t ;
typedef TYPE_2__* iflib_txq_t ;
typedef TYPE_3__* if_ctx_t ;
struct TYPE_9__ {int ifc_softc; int (* isc_txd_flush ) (int ,int ,scalar_t__) ;} ;
struct TYPE_8__ {scalar_t__ ift_db_pending; scalar_t__ ift_npending; scalar_t__ ift_pidx; int ift_id; TYPE_1__* ift_ifdi; } ;
struct TYPE_7__ {int idi_map; int idi_tag; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 scalar_t__ TXQ_MAX_DB_DEFERRED (TYPE_2__*,scalar_t__) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int stub1 (int ,int ,scalar_t__) ;

__attribute__((used)) static inline bool
iflib_txd_db_check(if_ctx_t ctx, iflib_txq_t txq, int ring, qidx_t in_use)
{
 qidx_t dbval, max;
 bool rang;

 rang = 0;
 max = TXQ_MAX_DB_DEFERRED(txq, in_use);
 if (ring || txq->ift_db_pending >= max) {
  dbval = txq->ift_npending ? txq->ift_npending : txq->ift_pidx;
  bus_dmamap_sync(txq->ift_ifdi->idi_tag, txq->ift_ifdi->idi_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
  ctx->isc_txd_flush(ctx->ifc_softc, txq->ift_id, dbval);
  txq->ift_db_pending = txq->ift_npending = 0;
  rang = 1;
 }
 return (rang);
}
