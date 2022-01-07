
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int dummy; } ;
struct TYPE_4__ {int * rdma_inflight; } ;
struct sdp_sock {scalar_t__ srcavail_cancel_mseq; scalar_t__ qp_active; TYPE_1__ tx_ring; int rcv_nxt; int wq; int socket; } ;
struct rx_srcavail_state {int len; scalar_t__ mseq; int used; int flags; TYPE_2__* umem; int fmr; } ;
struct mbuf {int dummy; } ;
struct iovec {int iov_base; int iov_len; } ;
struct TYPE_5__ {int length; } ;


 int ECONNRESET ;
 int EPIPE ;
 int RX_SA_ABORTED ;
 struct rx_srcavail_state* RX_SRCAVAIL_STATE (struct mbuf*) ;
 int SOCK_REF_RDMA_RD ;
 int WARN_ON (int) ;
 int atomic_add (int,int *) ;
 int sdp_alloc_fmr (struct socket*,int ,int,int *,TYPE_2__**) ;
 int sdp_arm_tx_cq (struct socket*) ;
 int sdp_dbg_data (struct socket*,char*,...) ;
 int sdp_free_fmr (struct socket*,int *,TYPE_2__**) ;
 int sdp_post_rdma_read (struct socket*,struct rx_srcavail_state*) ;
 int sdp_prf (struct socket*,struct mbuf*,char*,int) ;
 int sdp_set_error (int ,int ) ;
 struct sdp_sock* sdp_sk (struct socket*) ;
 int sdp_update_iov_used (struct socket*,struct iovec*,int) ;
 int sdp_wait_rdma_wr_finished (struct sdp_sock*) ;
 int sdp_warn (struct socket*,char*,...) ;
 int sock_hold (struct socket*,int ) ;
 int sock_put (struct socket*,int ) ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;

int sdp_rdma_to_iovec(struct socket *sk, struct iovec *iov, struct mbuf *mb,
  unsigned long *used)
{
 struct sdp_sock *ssk = sdp_sk(sk);
 struct rx_srcavail_state *rx_sa = RX_SRCAVAIL_STATE(mb);
 int got_srcavail_cancel;
 int rc = 0;
 int len = *used;
 int copied;

 sdp_dbg_data(ssk->socket, "preparing RDMA read."
  " len: 0x%x. buffer len: 0x%lx\n", len, iov->iov_len);

 sock_hold(sk, SOCK_REF_RDMA_RD);

 if (len > rx_sa->len) {
  sdp_warn(sk, "len:0x%x > rx_sa->len: 0x%x\n", len, rx_sa->len);
  WARN_ON(1);
  len = rx_sa->len;
 }

 rc = sdp_alloc_fmr(sk, iov->iov_base, len, &rx_sa->fmr, &rx_sa->umem);
 if (rc) {
  sdp_warn(sk, "Error allocating fmr: %d\n", rc);
  goto err_alloc_fmr;
 }

 rc = sdp_post_rdma_read(sk, rx_sa);
 if (unlikely(rc)) {
  sdp_warn(sk, "ib_post_send failed with status %d.\n", rc);
  sdp_set_error(ssk->socket, -ECONNRESET);
  wake_up(&ssk->wq);
  goto err_post_send;
 }

 sdp_prf(sk, mb, "Finished posting(rc=%d), now to wait", rc);

 got_srcavail_cancel = ssk->srcavail_cancel_mseq > rx_sa->mseq;

 sdp_arm_tx_cq(sk);

 sdp_wait_rdma_wr_finished(ssk);

 sdp_prf(sk, mb, "Finished waiting(rc=%d)", rc);
 if (!ssk->qp_active) {
  sdp_dbg_data(sk, "QP destroyed during RDMA read\n");
  rc = -EPIPE;
  goto err_post_send;
 }

 copied = rx_sa->umem->length;

 sdp_update_iov_used(sk, iov, copied);
 rx_sa->used += copied;
 atomic_add(copied, &ssk->rcv_nxt);
 *used = copied;

 ssk->tx_ring.rdma_inflight = ((void*)0);

err_post_send:
 sdp_free_fmr(sk, &rx_sa->fmr, &rx_sa->umem);

err_alloc_fmr:
 if (rc && ssk->qp_active) {
  sdp_warn(sk, "Couldn't do RDMA - post sendsm\n");
  rx_sa->flags |= RX_SA_ABORTED;
 }

 sock_put(sk, SOCK_REF_RDMA_RD);

 return rc;
}
