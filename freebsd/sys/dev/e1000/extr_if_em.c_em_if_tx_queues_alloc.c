
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct tx_ring {int me; int tx_paddr; struct e1000_tx_desc* tx_base; int * tx_rsq; struct adapter* adapter; } ;
struct em_tx_queue {int me; struct adapter* adapter; struct tx_ring txr; } ;
struct e1000_tx_desc {int dummy; } ;
struct adapter {int tx_num_queues; struct em_tx_queue* tx_queues; TYPE_1__* shared; } ;
typedef int qidx_t ;
typedef TYPE_1__* if_softc_ctx_t ;
typedef int if_ctx_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int* isc_ntxd; } ;


 int E1000_SUCCESS ;
 int ENOMEM ;
 int MPASS (int) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int QIDX_INVALID ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 int em_if_queues_free (int ) ;
 int iflib_get_dev (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 scalar_t__ malloc (int,int ,int) ;

__attribute__((used)) static int
em_if_tx_queues_alloc(if_ctx_t ctx, caddr_t *vaddrs, uint64_t *paddrs, int ntxqs, int ntxqsets)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 if_softc_ctx_t scctx = adapter->shared;
 int error = E1000_SUCCESS;
 struct em_tx_queue *que;
 int i, j;

 MPASS(adapter->tx_num_queues > 0);
 MPASS(adapter->tx_num_queues == ntxqsets);


 if (!(adapter->tx_queues =
     (struct em_tx_queue *) malloc(sizeof(struct em_tx_queue) *
     adapter->tx_num_queues, M_DEVBUF, M_NOWAIT | M_ZERO))) {
  device_printf(iflib_get_dev(ctx), "Unable to allocate queue memory\n");
  return(ENOMEM);
 }

 for (i = 0, que = adapter->tx_queues; i < adapter->tx_num_queues; i++, que++) {


  struct tx_ring *txr = &que->txr;
  txr->adapter = que->adapter = adapter;
  que->me = txr->me = i;


  if (!(txr->tx_rsq = (qidx_t *) malloc(sizeof(qidx_t) * scctx->isc_ntxd[0], M_DEVBUF, M_NOWAIT | M_ZERO))) {
   device_printf(iflib_get_dev(ctx), "failed to allocate rs_idxs memory\n");
   error = ENOMEM;
   goto fail;
  }
  for (j = 0; j < scctx->isc_ntxd[0]; j++)
   txr->tx_rsq[j] = QIDX_INVALID;

  txr->tx_base = (struct e1000_tx_desc *)vaddrs[i*ntxqs];
  txr->tx_paddr = paddrs[i*ntxqs];
 }

 if (bootverbose)
  device_printf(iflib_get_dev(ctx),
      "allocated for %d tx_queues\n", adapter->tx_num_queues);
 return (0);
fail:
 em_if_queues_free(ctx);
 return (error);
}
