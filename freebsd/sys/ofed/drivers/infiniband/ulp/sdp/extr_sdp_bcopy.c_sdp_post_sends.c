
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct mbuf* sb_sndptr; struct mbuf* sb_mb; } ;
struct socket {TYPE_1__ so_snd; } ;
struct sdp_sock {scalar_t__ recv_request_head; scalar_t__ state; int flags; int nagle_last_unacked; int nagle_timer; struct socket* socket; scalar_t__ recv_request; scalar_t__ recv_bytes; int rx_ring; int id; } ;
struct mbuf {struct mbuf* m_next; struct mbuf* m_nextpkt; } ;


 int ECONNRESET ;
 int SB_EMPTY_FIXUP (TYPE_1__*) ;
 int SDPSTATS_COUNTER_INC (int ) ;
 scalar_t__ SDP_HEAD_SIZE ;
 int SDP_MIN_TX_CREDITS ;
 int SDP_NEEDFIN ;
 int SDP_TX_SIZE ;
 int SOCKBUF_LOCK (TYPE_1__*) ;
 int SOCKBUF_UNLOCK (TYPE_1__*) ;
 scalar_t__ TCPS_ESTABLISHED ;
 scalar_t__ TCPS_FIN_WAIT_2 ;
 int callout_reset (int *,int,int ,struct sdp_sock*) ;
 scalar_t__ credit_update_needed (struct sdp_sock*) ;
 int post_send_credits ;
 scalar_t__ ring_tail (int ) ;
 int sbfree (TYPE_1__*,struct mbuf*) ;
 struct mbuf* sdp_alloc_mb_chrcvbuf_ack (struct socket*,scalar_t__,int) ;
 struct mbuf* sdp_alloc_mb_data (struct socket*,int) ;
 struct mbuf* sdp_alloc_mb_disconnect (struct socket*,int) ;
 int sdp_arm_tx_cq (struct sdp_sock*) ;
 int sdp_dbg (struct socket*,char*) ;
 scalar_t__ sdp_nagle_off (struct sdp_sock*,struct mbuf*) ;
 int sdp_nagle_timeout ;
 int sdp_notify (struct sdp_sock*,int ) ;
 int sdp_post_send (struct sdp_sock*,struct mbuf*) ;
 int sdp_tx_ring_slots_left (struct sdp_sock*) ;
 scalar_t__ sdp_xmit_poll (struct sdp_sock*,int) ;
 int send_miss_no_credits ;
 int tx_credits (struct sdp_sock*) ;
 scalar_t__ unlikely (int) ;

void
sdp_post_sends(struct sdp_sock *ssk, int wait)
{
 struct mbuf *mb;
 int post_count = 0;
 struct socket *sk;
 int low;

 sk = ssk->socket;
 if (unlikely(!ssk->id)) {
  if (sk->so_snd.sb_sndptr) {
   sdp_dbg(ssk->socket,
    "Send on socket without cmid ECONNRESET.\n");
   sdp_notify(ssk, ECONNRESET);
  }
  return;
 }
again:
 if (sdp_tx_ring_slots_left(ssk) < SDP_TX_SIZE / 2)
  sdp_xmit_poll(ssk, 1);

 if (ssk->recv_request &&
     ring_tail(ssk->rx_ring) >= ssk->recv_request_head &&
     tx_credits(ssk) >= SDP_MIN_TX_CREDITS &&
     sdp_tx_ring_slots_left(ssk)) {
  mb = sdp_alloc_mb_chrcvbuf_ack(sk,
      ssk->recv_bytes - SDP_HEAD_SIZE, wait);
  if (mb == ((void*)0))
   goto allocfail;
  ssk->recv_request = 0;
  sdp_post_send(ssk, mb);
  post_count++;
 }

 if (tx_credits(ssk) <= SDP_MIN_TX_CREDITS &&
     sdp_tx_ring_slots_left(ssk) && sk->so_snd.sb_sndptr &&
     sdp_nagle_off(ssk, sk->so_snd.sb_sndptr)) {
  SDPSTATS_COUNTER_INC(send_miss_no_credits);
 }

 while (tx_credits(ssk) > SDP_MIN_TX_CREDITS &&
     sdp_tx_ring_slots_left(ssk) && (mb = sk->so_snd.sb_sndptr) &&
     sdp_nagle_off(ssk, mb)) {
  struct mbuf *n;

  SOCKBUF_LOCK(&sk->so_snd);
  sk->so_snd.sb_sndptr = mb->m_nextpkt;
  sk->so_snd.sb_mb = mb->m_nextpkt;
  mb->m_nextpkt = ((void*)0);
  SB_EMPTY_FIXUP(&sk->so_snd);
  for (n = mb; n != ((void*)0); n = n->m_next)
   sbfree(&sk->so_snd, n);
  SOCKBUF_UNLOCK(&sk->so_snd);
  sdp_post_send(ssk, mb);
  post_count++;
 }

 if (credit_update_needed(ssk) && ssk->state >= TCPS_ESTABLISHED &&
     ssk->state < TCPS_FIN_WAIT_2) {
  mb = sdp_alloc_mb_data(ssk->socket, wait);
  if (mb == ((void*)0))
   goto allocfail;
  sdp_post_send(ssk, mb);

  SDPSTATS_COUNTER_INC(post_send_credits);
  post_count++;
 }






 if ((ssk->flags & SDP_NEEDFIN) && !sk->so_snd.sb_sndptr &&
     tx_credits(ssk) > 1) {
  mb = sdp_alloc_mb_disconnect(sk, wait);
  if (mb == ((void*)0))
   goto allocfail;
  ssk->flags &= ~SDP_NEEDFIN;
  sdp_post_send(ssk, mb);
  post_count++;
 }
 low = (sdp_tx_ring_slots_left(ssk) <= SDP_MIN_TX_CREDITS);
 if (post_count || low) {
  if (low)
   sdp_arm_tx_cq(ssk);
  if (sdp_xmit_poll(ssk, low))
   goto again;
 }
 return;

allocfail:
 ssk->nagle_last_unacked = -1;
 callout_reset(&ssk->nagle_timer, 1, sdp_nagle_timeout, ssk);
 return;
}
