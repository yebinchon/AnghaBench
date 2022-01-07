
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {int rx_ring; int rx_comp_work; int socket; } ;


 int queue_work (int ,int *) ;
 int rx_comp_wq ;
 int rx_ring_trylock (int *) ;
 int rx_ring_unlock (int *) ;
 int sdp_arm_rx_cq (struct sdp_sock*) ;
 int sdp_dbg (int ,char*) ;
 int sdp_poll_rx_cq (struct sdp_sock*) ;
 int sdp_prf (int ,int *,char*,int,...) ;
 int tx_credits (struct sdp_sock*) ;

int
sdp_process_rx(struct sdp_sock *ssk)
{
 int wc_processed = 0;
 int credits_before;

 if (!rx_ring_trylock(&ssk->rx_ring)) {
  sdp_dbg(ssk->socket, "ring destroyed. not polling it\n");
  return 0;
 }

 credits_before = tx_credits(ssk);

 wc_processed = sdp_poll_rx_cq(ssk);
 sdp_prf(ssk->socket, ((void*)0), "processed %d", wc_processed);

 if (wc_processed) {
  sdp_prf(ssk->socket, ((void*)0), "credits:  %d -> %d",
    credits_before, tx_credits(ssk));
  queue_work(rx_comp_wq, &ssk->rx_comp_work);
 }
 sdp_arm_rx_cq(ssk);

 rx_ring_unlock(&ssk->rx_ring);

 return (wc_processed);
}
