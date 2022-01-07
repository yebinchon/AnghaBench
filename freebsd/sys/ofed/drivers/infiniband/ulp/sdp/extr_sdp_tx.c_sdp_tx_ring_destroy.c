
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cq; int * buffer; int timer; } ;
struct sdp_sock {TYPE_1__ tx_ring; int socket; int nagle_timer; } ;


 int M_SDP ;
 int SDP_WLOCK (struct sdp_sock*) ;
 int SDP_WUNLOCK (struct sdp_sock*) ;
 int WARN_ON (int) ;
 int callout_drain (int *) ;
 int callout_stop (int *) ;
 int free (int *,int ) ;
 scalar_t__ ib_destroy_cq (int *) ;
 scalar_t__ ring_head (TYPE_1__) ;
 scalar_t__ ring_tail (TYPE_1__) ;
 int sdp_dbg (int ,char*) ;
 int sdp_tx_ring_purge (struct sdp_sock*) ;
 int sdp_warn (int ,char*,int *) ;

void
sdp_tx_ring_destroy(struct sdp_sock *ssk)
{

 sdp_dbg(ssk->socket, "tx ring destroy\n");
 SDP_WLOCK(ssk);
 callout_stop(&ssk->tx_ring.timer);
 callout_stop(&ssk->nagle_timer);
 SDP_WUNLOCK(ssk);
 callout_drain(&ssk->tx_ring.timer);
 callout_drain(&ssk->nagle_timer);

 if (ssk->tx_ring.buffer) {
  sdp_tx_ring_purge(ssk);
  free(ssk->tx_ring.buffer, M_SDP);
  ssk->tx_ring.buffer = ((void*)0);
 }

 if (ssk->tx_ring.cq) {
  if (ib_destroy_cq(ssk->tx_ring.cq)) {
   sdp_warn(ssk->socket, "destroy cq(%p) failed\n",
     ssk->tx_ring.cq);
  } else {
   ssk->tx_ring.cq = ((void*)0);
  }
 }

 WARN_ON(ring_head(ssk->tx_ring) != ring_tail(ssk->tx_ring));
}
