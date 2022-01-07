
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct TYPE_4__ {int cq; } ;
struct TYPE_3__ {int cq; } ;
struct sdp_sock {scalar_t__ state; TYPE_2__ tx_ring; TYPE_1__ rx_ring; int rxctlq; int qp_active; struct socket* socket; } ;
struct mbuf {int dummy; } ;


 int M_NOWAIT ;
 scalar_t__ SDP_MIN_TX_CREDITS ;
 int SDP_WLOCK_ASSERT (struct sdp_sock*) ;
 scalar_t__ TCPS_TIME_WAIT ;
 scalar_t__ credit_update_needed (struct sdp_sock*) ;
 struct mbuf* mbufq_dequeue (int *) ;
 int sdp_dbg (struct socket*,char*) ;
 int sdp_post_recvs (struct sdp_sock*) ;
 int sdp_post_sends (struct sdp_sock*,int ) ;
 int sdp_prf (struct socket*,int *,char*) ;
 int sdp_process_rx_ctl_mb (struct sdp_sock*,struct mbuf*) ;
 int sdp_xmit_poll (struct sdp_sock*,int) ;
 scalar_t__ tx_credits (struct sdp_sock*) ;
 scalar_t__ tx_ring_posted (struct sdp_sock*) ;

void
sdp_do_posts(struct sdp_sock *ssk)
{
 struct socket *sk = ssk->socket;
 int xmit_poll_force;
 struct mbuf *mb;

 SDP_WLOCK_ASSERT(ssk);
 if (!ssk->qp_active) {
  sdp_dbg(sk, "QP is deactivated\n");
  return;
 }

 while ((mb = mbufq_dequeue(&ssk->rxctlq)) != ((void*)0))
  sdp_process_rx_ctl_mb(ssk, mb);

 if (ssk->state == TCPS_TIME_WAIT)
  return;

 if (!ssk->rx_ring.cq || !ssk->tx_ring.cq)
  return;

 sdp_post_recvs(ssk);

 if (tx_ring_posted(ssk))
  sdp_xmit_poll(ssk, 1);

 sdp_post_sends(ssk, M_NOWAIT);

 xmit_poll_force = tx_credits(ssk) < SDP_MIN_TX_CREDITS;

 if (credit_update_needed(ssk) || xmit_poll_force) {

  sdp_prf(sk, ((void*)0), "Processing to free pending sends");
  sdp_xmit_poll(ssk, xmit_poll_force);
  sdp_prf(sk, ((void*)0), "Sending credit update");
  sdp_post_sends(ssk, M_NOWAIT);
 }

}
