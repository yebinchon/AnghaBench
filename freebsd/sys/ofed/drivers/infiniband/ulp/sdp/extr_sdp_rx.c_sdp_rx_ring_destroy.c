
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * cq; int * buffer; } ;
struct sdp_sock {TYPE_1__ rx_ring; int socket; int rx_comp_work; } ;


 int M_SDP ;
 int WARN_ON (int) ;
 int cancel_work_sync (int *) ;
 int free (int *,int ) ;
 scalar_t__ ib_destroy_cq (int *) ;
 scalar_t__ ring_head (TYPE_1__) ;
 scalar_t__ ring_tail (TYPE_1__) ;
 int rx_ring_destroy_lock (TYPE_1__*) ;
 int sdp_rx_ring_purge (struct sdp_sock*) ;
 int sdp_warn (int ,char*,int *) ;

void
sdp_rx_ring_destroy(struct sdp_sock *ssk)
{

 cancel_work_sync(&ssk->rx_comp_work);
 rx_ring_destroy_lock(&ssk->rx_ring);

 if (ssk->rx_ring.buffer) {
  sdp_rx_ring_purge(ssk);
  free(ssk->rx_ring.buffer, M_SDP);
  ssk->rx_ring.buffer = ((void*)0);
 }

 if (ssk->rx_ring.cq) {
  if (ib_destroy_cq(ssk->rx_ring.cq)) {
   sdp_warn(ssk->socket, "destroy cq(%p) failed\n",
    ssk->rx_ring.cq);
  } else {
   ssk->rx_ring.cq = ((void*)0);
  }
 }

 WARN_ON(ring_head(ssk->rx_ring) != ring_tail(ssk->rx_ring));
}
