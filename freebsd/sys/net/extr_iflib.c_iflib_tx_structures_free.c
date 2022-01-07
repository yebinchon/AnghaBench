
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* iflib_txq_t ;
typedef TYPE_2__* if_shared_ctx_t ;
typedef TYPE_3__* if_ctx_t ;
struct TYPE_11__ {TYPE_1__* ifc_txqs; TYPE_2__* ifc_sctx; } ;
struct TYPE_10__ {int isc_ntxqs; } ;
struct TYPE_9__ {int * ift_ifdi; } ;


 int IFDI_QUEUES_FREE (TYPE_3__*) ;
 int M_IFLIB ;
 int NTXQSETS (TYPE_3__*) ;
 int free (TYPE_1__*,int ) ;
 int iflib_dma_free (int *) ;
 int iflib_txq_destroy (TYPE_1__*) ;

__attribute__((used)) static void
iflib_tx_structures_free(if_ctx_t ctx)
{
 iflib_txq_t txq = ctx->ifc_txqs;
 if_shared_ctx_t sctx = ctx->ifc_sctx;
 int i, j;

 for (i = 0; i < NTXQSETS(ctx); i++, txq++) {
  for (j = 0; j < sctx->isc_ntxqs; j++)
   iflib_dma_free(&txq->ift_ifdi[j]);
  iflib_txq_destroy(txq);
 }
 free(ctx->ifc_txqs, M_IFLIB);
 ctx->ifc_txqs = ((void*)0);
 IFDI_QUEUES_FREE(ctx);
}
