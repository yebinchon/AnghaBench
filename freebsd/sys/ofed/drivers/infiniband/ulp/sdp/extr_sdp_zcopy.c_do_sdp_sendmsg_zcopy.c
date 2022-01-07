
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_srcavail_state {int abort_flags; int umem; int fmr; int bytes_acked; } ;
struct socket {int dummy; } ;
struct sdp_sock {int tx_sa_lock; int * tx_sa; int srcavail_cancel_work; scalar_t__ qp_active; } ;
struct iovec {int iov_len; int iov_base; } ;
typedef enum tx_sa_flag { ____Placeholder_tx_sa_flag } tx_sa_flag ;


 int HZ ;
 int SDPSTATS_COUNTER_INC (int ) ;
 int TX_SA_ERROR ;
 int TX_SA_SENDSM ;
 int cancel_delayed_work (int *) ;
 int sdp_alloc_fmr (struct socket*,int ,int ,int *,int *) ;
 int sdp_dbg (struct socket*,char*) ;
 int sdp_dbg_data (struct socket*,char*) ;
 int sdp_free_fmr (struct socket*,int *,int *) ;
 int sdp_post_srcavail (struct socket*,struct tx_srcavail_state*) ;
 int sdp_post_srcavail_cancel (struct socket*) ;
 int sdp_reset (struct socket*) ;
 struct sdp_sock* sdp_sk (struct socket*) ;
 int sdp_update_iov_used (struct socket*,struct iovec*,int ) ;
 int sdp_wait_rdmardcompl (struct sdp_sock*,long*,int) ;
 int sdp_warn (struct socket*,char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tx_slots_free (struct sdp_sock*) ;
 scalar_t__ unlikely (int) ;
 int wait_for_sndbuf (struct socket*,long*) ;
 int zcopy_tx_error ;

__attribute__((used)) static int do_sdp_sendmsg_zcopy(struct socket *sk, struct tx_srcavail_state *tx_sa,
  struct iovec *iov, long *timeo)
{
 struct sdp_sock *ssk = sdp_sk(sk);
 int rc = 0;
 unsigned long lock_flags;

 rc = sdp_alloc_fmr(sk, iov->iov_base, iov->iov_len,
   &tx_sa->fmr, &tx_sa->umem);
 if (rc) {
  sdp_warn(sk, "Error allocating fmr: %d\n", rc);
  goto err_alloc_fmr;
 }

 if (tx_slots_free(ssk) == 0) {
  rc = wait_for_sndbuf(sk, timeo);
  if (rc) {
   sdp_warn(sk, "Couldn't get send buffer\n");
   goto err_no_tx_slots;
  }
 }

 rc = sdp_post_srcavail(sk, tx_sa);
 if (rc) {
  sdp_dbg(sk, "Error posting SrcAvail\n");
  goto err_abort_send;
 }

 rc = sdp_wait_rdmardcompl(ssk, timeo, 0);
 if (unlikely(rc)) {
  enum tx_sa_flag f = tx_sa->abort_flags;

  if (f & TX_SA_SENDSM) {
   sdp_dbg_data(sk, "Got SendSM. use SEND verb.\n");
  } else if (f & TX_SA_ERROR) {
   sdp_dbg_data(sk, "SrcAvail error completion\n");
   sdp_reset(sk);
   SDPSTATS_COUNTER_INC(zcopy_tx_error);
  } else if (ssk->qp_active) {
   sdp_post_srcavail_cancel(sk);



   *timeo = 2 * HZ;
   sdp_dbg_data(sk, "Waiting for SendSM\n");
   sdp_wait_rdmardcompl(ssk, timeo, 1);
   sdp_dbg_data(sk, "finished waiting\n");

   cancel_delayed_work(&ssk->srcavail_cancel_work);
  } else {
   sdp_dbg_data(sk, "QP was destroyed while waiting\n");
  }
 } else {
  sdp_dbg_data(sk, "got RdmaRdCompl\n");
 }

 spin_lock_irqsave(&ssk->tx_sa_lock, lock_flags);
 ssk->tx_sa = ((void*)0);
 spin_unlock_irqrestore(&ssk->tx_sa_lock, lock_flags);

err_abort_send:
 sdp_update_iov_used(sk, iov, tx_sa->bytes_acked);

err_no_tx_slots:
 sdp_free_fmr(sk, &tx_sa->fmr, &tx_sa->umem);

err_alloc_fmr:
 return rc;
}
