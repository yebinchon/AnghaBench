
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_ring {int tx_cidx_processed; int * tx_rsq; int tx_rs_pidx; int tx_rs_cidx; } ;
struct ixl_vsi {int num_tx_queues; struct ixl_tx_queue* tx_queues; TYPE_1__* shared; } ;
struct ixl_tx_queue {struct tx_ring txr; } ;
typedef TYPE_1__* if_softc_ctx_t ;
struct TYPE_2__ {int* isc_ntxd; } ;


 int QIDX_INVALID ;

void
ixl_init_tx_rsqs(struct ixl_vsi *vsi)
{
 if_softc_ctx_t scctx = vsi->shared;
 struct ixl_tx_queue *tx_que;
 int i, j;

 for (i = 0, tx_que = vsi->tx_queues; i < vsi->num_tx_queues; i++, tx_que++) {
  struct tx_ring *txr = &tx_que->txr;

  txr->tx_rs_cidx = txr->tx_rs_pidx;






  txr->tx_cidx_processed = scctx->isc_ntxd[0] - 1;

  for (j = 0; j < scctx->isc_ntxd[0]; j++)
   txr->tx_rsq[j] = QIDX_INVALID;
 }
}
