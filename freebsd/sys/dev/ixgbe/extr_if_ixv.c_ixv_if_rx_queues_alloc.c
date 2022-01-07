
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
typedef int uint64_t ;
struct rx_ring {int me; struct ix_rx_queue* que; scalar_t__ bytes; int rx_paddr; union ixgbe_adv_rx_desc* rx_base; int tail; struct adapter* adapter; } ;
struct ix_rx_queue {struct adapter* adapter; struct rx_ring rxr; } ;
struct adapter {int num_rx_queues; struct ix_rx_queue* rx_queues; } ;
typedef int if_ctx_t ;
typedef scalar_t__ caddr_t ;


 int ENOMEM ;
 int IXGBE_VFRDT (int) ;
 int MPASS (int) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int device_printf (int ,char*,...) ;
 int iflib_get_dev (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int ixv_if_queues_free (int ) ;
 scalar_t__ malloc (int,int ,int) ;

__attribute__((used)) static int
ixv_if_rx_queues_alloc(if_ctx_t ctx, caddr_t *vaddrs, uint64_t *paddrs,
                       int nrxqs, int nrxqsets)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ix_rx_queue *que;
 int i, error;

 MPASS(adapter->num_rx_queues == nrxqsets);
 MPASS(nrxqs == 1);


 adapter->rx_queues =
     (struct ix_rx_queue *)malloc(sizeof(struct ix_rx_queue) * nrxqsets,
                                  M_DEVBUF, M_NOWAIT | M_ZERO);
 if (!adapter->rx_queues) {
  device_printf(iflib_get_dev(ctx),
      "Unable to allocate TX ring memory\n");
  error = ENOMEM;
  goto fail;
 }

 for (i = 0, que = adapter->rx_queues; i < nrxqsets; i++, que++) {
  struct rx_ring *rxr = &que->rxr;
  rxr->me = i;
  rxr->adapter = que->adapter = adapter;



  rxr->tail = IXGBE_VFRDT(rxr->me);
  rxr->rx_base = (union ixgbe_adv_rx_desc *)vaddrs[i];
  rxr->rx_paddr = paddrs[i*nrxqs];
  rxr->bytes = 0;
  rxr->que = que;
 }

 device_printf(iflib_get_dev(ctx), "allocated for %d rx queues\n",
     adapter->num_rx_queues);

 return (0);

fail:
 ixv_if_queues_free(ctx);

 return (error);
}
