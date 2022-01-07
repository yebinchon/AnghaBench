
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int destroyed_lock; } ;
struct sdp_sock {int flags; int lock; TYPE_1__ rx_ring; int * qp; scalar_t__ qp_active; int cred; int * socket; } ;


 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct sdp_sock*,int ) ;
 int SDP_DESTROY ;
 int SDP_LIST_WLOCK () ;
 int SDP_LIST_WUNLOCK () ;
 int SDP_WLOCK_ASSERT (struct sdp_sock*) ;
 int SDP_WUNLOCK (struct sdp_sock*) ;
 int crfree (int ) ;
 int ib_destroy_qp (int *) ;
 int list ;
 int rw_destroy (int *) ;
 int sdp_count ;
 int sdp_dbg (int *,char*) ;
 int sdp_destroy_cma (struct sdp_sock*) ;
 int sdp_rx_ring_destroy (struct sdp_sock*) ;
 int sdp_tx_ring_destroy (struct sdp_sock*) ;
 int sdp_zone ;
 int uma_zfree (int ,struct sdp_sock*) ;

__attribute__((used)) static void
sdp_pcbfree(struct sdp_sock *ssk)
{

 KASSERT(ssk->socket == ((void*)0), ("ssk %p socket still attached", ssk));
 KASSERT((ssk->flags & SDP_DESTROY) == 0,
     ("ssk %p already destroyed", ssk));

 sdp_dbg(ssk->socket, "Freeing pcb");
 SDP_WLOCK_ASSERT(ssk);
 ssk->flags |= SDP_DESTROY;
 SDP_WUNLOCK(ssk);
 SDP_LIST_WLOCK();
 sdp_count--;
 LIST_REMOVE(ssk, list);
 SDP_LIST_WUNLOCK();
 crfree(ssk->cred);
 ssk->qp_active = 0;
 if (ssk->qp) {
  ib_destroy_qp(ssk->qp);
  ssk->qp = ((void*)0);
 }
 sdp_tx_ring_destroy(ssk);
 sdp_rx_ring_destroy(ssk);
 sdp_destroy_cma(ssk);
 rw_destroy(&ssk->rx_ring.destroyed_lock);
 rw_destroy(&ssk->lock);
 uma_zfree(sdp_zone, ssk);
}
