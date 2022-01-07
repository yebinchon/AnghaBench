
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_txq {int full; int ring; int xen_intr_handle; struct buf_ring* br; struct netfront_info* info; } ;
struct netfront_info {struct ifnet* xn_ifp; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct buf_ring {int dummy; } ;


 int IFF_DRV_RUNNING ;
 scalar_t__ RING_FULL (int *) ;
 int RING_PUSH_REQUESTS_AND_CHECK_NOTIFY (int *,int) ;
 int XN_TX_LOCK_ASSERT (struct netfront_txq*) ;
 int drbr_advance (struct ifnet*,struct buf_ring*) ;
 int drbr_enqueue (struct ifnet*,struct buf_ring*,struct mbuf*) ;
 struct mbuf* drbr_peek (struct ifnet*,struct buf_ring*) ;
 int drbr_putback (struct ifnet*,struct buf_ring*,struct mbuf*) ;
 int netfront_carrier_ok (struct netfront_info*) ;
 int xen_intr_signal (int ) ;
 int xn_assemble_tx_request (struct netfront_txq*,struct mbuf*) ;
 int xn_tx_slot_available (struct netfront_txq*) ;

__attribute__((used)) static int
xn_txq_mq_start_locked(struct netfront_txq *txq, struct mbuf *m)
{
 struct netfront_info *np;
 struct ifnet *ifp;
 struct buf_ring *br;
 int error, notify;

 np = txq->info;
 br = txq->br;
 ifp = np->xn_ifp;
 error = 0;

 XN_TX_LOCK_ASSERT(txq);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0 ||
     !netfront_carrier_ok(np)) {
  if (m != ((void*)0))
   error = drbr_enqueue(ifp, br, m);
  return (error);
 }

 if (m != ((void*)0)) {
  error = drbr_enqueue(ifp, br, m);
  if (error != 0)
   return (error);
 }

 while ((m = drbr_peek(ifp, br)) != ((void*)0)) {
  if (!xn_tx_slot_available(txq)) {
   drbr_putback(ifp, br, m);
   break;
  }

  error = xn_assemble_tx_request(txq, m);

  if (error != 0) {
   drbr_advance(ifp, br);
   break;
  }

  RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(&txq->ring, notify);
  if (notify)
   xen_intr_signal(txq->xen_intr_handle);

  drbr_advance(ifp, br);
 }

 if (RING_FULL(&txq->ring))
  txq->full = 1;

 return (0);
}
