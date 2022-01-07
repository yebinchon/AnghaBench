
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cq; } ;
struct sdp_sock {int socket; TYPE_1__ tx_ring; } ;
struct ib_wc {int dummy; } ;


 int M_NOWAIT ;
 int SDP_NUM_WC ;
 int SDP_WLOCK_ASSERT (struct sdp_sock*) ;
 int ib_poll_cq (int ,int,struct ib_wc*) ;
 int sdp_dbg (int ,char*) ;
 int sdp_post_sends (struct sdp_sock*,int ) ;
 int sdp_prf1 (int ,int *,char*,int ) ;
 int sdp_process_tx_wc (struct sdp_sock*,struct ib_wc*) ;
 int sk ;
 int sowwakeup (int ) ;
 scalar_t__ tx_ring_posted (struct sdp_sock*) ;

__attribute__((used)) static int
sdp_process_tx_cq(struct sdp_sock *ssk)
{
 struct ib_wc ibwc[SDP_NUM_WC];
 int n, i;
 int wc_processed = 0;

 SDP_WLOCK_ASSERT(ssk);

 if (!ssk->tx_ring.cq) {
  sdp_dbg(ssk->socket, "tx irq on destroyed tx_cq\n");
  return 0;
 }

 do {
  n = ib_poll_cq(ssk->tx_ring.cq, SDP_NUM_WC, ibwc);
  for (i = 0; i < n; ++i) {
   sdp_process_tx_wc(ssk, ibwc + i);
   wc_processed++;
  }
 } while (n == SDP_NUM_WC);

 if (wc_processed) {
  sdp_post_sends(ssk, M_NOWAIT);
  sdp_prf1(sk, ((void*)0), "Waking sendmsg. inflight=%d",
    (u32) tx_ring_posted(ssk));
  sowwakeup(ssk->socket);
 }

 return wc_processed;
}
