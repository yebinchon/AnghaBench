
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct socket {int dummy; } ;
struct TYPE_5__ {TYPE_1__* rdma_inflight; int timer; } ;
struct sdp_sock {scalar_t__ state; TYPE_2__ tx_ring; struct socket* socket; } ;
struct TYPE_4__ {scalar_t__ busy; } ;


 int SDPSTATS_COUNTER_INC (int ) ;
 int SDP_TX_POLL_TIMEOUT ;
 scalar_t__ TCPS_CLOSED ;
 int callout_reset (int *,int ,int ,struct sdp_sock*) ;
 int ring_head (TYPE_2__) ;
 int ring_tail (TYPE_2__) ;
 int sdp_arm_tx_cq (struct sdp_sock*) ;
 int sdp_poll_tx_timeout ;
 int sdp_prf1 (struct socket*,int *,char*,...) ;
 scalar_t__ sdp_process_tx_cq (struct sdp_sock*) ;
 int sdp_warn (struct socket*,char*) ;
 int tx_poll_hit ;
 int tx_poll_miss ;
 scalar_t__ tx_ring_posted (struct sdp_sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
sdp_poll_tx(struct sdp_sock *ssk)
{
 struct socket *sk = ssk->socket;
 u32 inflight, wc_processed;

 sdp_prf1(ssk->socket, ((void*)0), "TX timeout: inflight=%d, head=%d tail=%d",
  (u32) tx_ring_posted(ssk),
  ring_head(ssk->tx_ring), ring_tail(ssk->tx_ring));

 if (unlikely(ssk->state == TCPS_CLOSED)) {
  sdp_warn(sk, "Socket is closed\n");
  goto out;
 }

 wc_processed = sdp_process_tx_cq(ssk);
 if (!wc_processed)
  SDPSTATS_COUNTER_INC(tx_poll_miss);
 else
  SDPSTATS_COUNTER_INC(tx_poll_hit);

 inflight = (u32) tx_ring_posted(ssk);
 sdp_prf1(ssk->socket, ((void*)0), "finished tx processing. inflight = %d",
     inflight);




 if (inflight)
  callout_reset(&ssk->tx_ring.timer, SDP_TX_POLL_TIMEOUT,
      sdp_poll_tx_timeout, ssk);
out:






 return;
}
