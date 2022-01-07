
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
typedef int uint64_t ;
struct tx_ring {int me; scalar_t__ total_packets; scalar_t__ bytes; int tx_paddr; union ixgbe_adv_tx_desc* tx_base; int tail; int * tx_rsq; struct adapter* adapter; } ;
struct ix_tx_queue {struct adapter* adapter; struct tx_ring txr; } ;
struct adapter {int num_tx_queues; struct ix_tx_queue* tx_queues; TYPE_1__* shared; } ;
typedef int qidx_t ;
typedef TYPE_1__* if_softc_ctx_t ;
typedef int if_ctx_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int* isc_ntxd; } ;


 int ENOMEM ;
 int IXGBE_VFTDT (int) ;
 int MPASS (int) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int QIDX_INVALID ;
 int device_printf (int ,char*,...) ;
 int iflib_get_dev (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int ixv_if_queues_free (int ) ;
 scalar_t__ malloc (int,int ,int) ;

__attribute__((used)) static int
ixv_if_tx_queues_alloc(if_ctx_t ctx, caddr_t *vaddrs, uint64_t *paddrs,
                       int ntxqs, int ntxqsets)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 if_softc_ctx_t scctx = adapter->shared;
 struct ix_tx_queue *que;
 int i, j, error;

 MPASS(adapter->num_tx_queues == ntxqsets);
 MPASS(ntxqs == 1);


 adapter->tx_queues =
     (struct ix_tx_queue *)malloc(sizeof(struct ix_tx_queue) * ntxqsets,
                                  M_DEVBUF, M_NOWAIT | M_ZERO);
 if (!adapter->tx_queues) {
  device_printf(iflib_get_dev(ctx),
      "Unable to allocate TX ring memory\n");
  return (ENOMEM);
 }

 for (i = 0, que = adapter->tx_queues; i < ntxqsets; i++, que++) {
  struct tx_ring *txr = &que->txr;

  txr->me = i;
  txr->adapter = que->adapter = adapter;


  if (!(txr->tx_rsq = (qidx_t *)malloc(sizeof(qidx_t) * scctx->isc_ntxd[0], M_DEVBUF, M_NOWAIT | M_ZERO))) {
   error = ENOMEM;
   goto fail;
  }
  for (j = 0; j < scctx->isc_ntxd[0]; j++)
   txr->tx_rsq[j] = QIDX_INVALID;

  txr->tail = IXGBE_VFTDT(txr->me);
  txr->tx_base = (union ixgbe_adv_tx_desc *)vaddrs[i*ntxqs];
  txr->tx_paddr = paddrs[i*ntxqs];

  txr->bytes = 0;
  txr->total_packets = 0;

 }

 device_printf(iflib_get_dev(ctx), "allocated for %d queues\n",
     adapter->num_tx_queues);

 return (0);

 fail:
 ixv_if_queues_free(ctx);

 return (error);
}
