
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct tx_ring {int me; struct ixl_tx_queue* que; int tx_paddr; struct i40e_tx_desc* tx_base; int tail; int * tx_rsq; } ;
struct ixl_vsi {int enable_head_writeback; struct ixl_tx_queue* tx_queues; TYPE_1__* shared; } ;
struct ixl_tx_queue {struct ixl_vsi* vsi; struct tx_ring txr; } ;
struct ixl_pf {struct ixl_vsi vsi; } ;
struct i40e_tx_desc {int dummy; } ;
typedef int qidx_t ;
typedef TYPE_1__* if_softc_ctx_t ;
typedef int if_ctx_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int isc_ntxqsets; int* isc_ntxd; } ;


 int ENOMEM ;
 int I40E_QTX_TAIL (int) ;
 int MPASS (int) ;
 int M_IXL ;
 int M_NOWAIT ;
 int M_ZERO ;
 int QIDX_INVALID ;
 int device_printf (int ,char*) ;
 int iflib_get_dev (int ) ;
 struct ixl_pf* iflib_get_softc (int ) ;
 int ixl_if_queues_free (int ) ;
 int * malloc (int,int ,int) ;

__attribute__((used)) static int
ixl_if_tx_queues_alloc(if_ctx_t ctx, caddr_t *vaddrs, uint64_t *paddrs, int ntxqs, int ntxqsets)
{
 struct ixl_pf *pf = iflib_get_softc(ctx);
 struct ixl_vsi *vsi = &pf->vsi;
 if_softc_ctx_t scctx = vsi->shared;
 struct ixl_tx_queue *que;
 int i, j, error = 0;

 MPASS(scctx->isc_ntxqsets > 0);
 MPASS(ntxqs == 1);
 MPASS(scctx->isc_ntxqsets == ntxqsets);


 if (!(vsi->tx_queues =
     (struct ixl_tx_queue *) malloc(sizeof(struct ixl_tx_queue) *ntxqsets, M_IXL, M_NOWAIT | M_ZERO))) {
  device_printf(iflib_get_dev(ctx), "Unable to allocate TX ring memory\n");
  return (ENOMEM);
 }

 for (i = 0, que = vsi->tx_queues; i < ntxqsets; i++, que++) {
  struct tx_ring *txr = &que->txr;

  txr->me = i;
  que->vsi = vsi;

  if (!vsi->enable_head_writeback) {

   if (!(txr->tx_rsq = malloc(sizeof(qidx_t) * scctx->isc_ntxd[0], M_IXL, M_NOWAIT))) {
    device_printf(iflib_get_dev(ctx), "failed to allocate tx_rsq memory\n");
    error = ENOMEM;
    goto fail;
   }

   for (j = 0; j < scctx->isc_ntxd[0]; j++)
    txr->tx_rsq[j] = QIDX_INVALID;
  }

  txr->tail = I40E_QTX_TAIL(txr->me);
  txr->tx_base = (struct i40e_tx_desc *)vaddrs[i * ntxqs];
  txr->tx_paddr = paddrs[i * ntxqs];
  txr->que = que;
 }

 return (0);
fail:
 ixl_if_queues_free(ctx);
 return (error);
}
