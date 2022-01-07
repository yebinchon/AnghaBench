
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_srcavail_state {int abort_flags; scalar_t__ bytes_acked; scalar_t__ bytes_sent; } ;
struct socket {int sk_sleep; } ;
struct sdp_sock {scalar_t__ qp_active; struct socket* socket; scalar_t__ rx_sa; struct tx_srcavail_state* tx_sa; } ;


 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int EINTR ;
 int EINVAL ;
 int ETIME ;
 long MAX_SCHEDULE_TIMEOUT ;
 int SDPSTATS_COUNTER_INC (int ) ;
 int TASK_INTERRUPTIBLE ;
 int TX_SA_CROSS_SEND ;
 int TX_SA_ERROR ;
 int TX_SA_INTRRUPTED ;
 int TX_SA_SENDSM ;
 int TX_SA_TIMEDOUT ;
 int current ;
 int finish_wait (int ,int *) ;
 int posts_handler_get (struct sdp_sock*) ;
 int posts_handler_put (struct sdp_sock*) ;
 int prepare_to_wait (int ,int *,int ) ;
 int sdp_dbg (struct socket*,char*) ;
 int sdp_dbg_data (struct socket*,char*,...) ;
 int sdp_prf1 (struct socket*,int *,char*) ;
 scalar_t__ signal_pending (int ) ;
 int sk_wait_event (struct socket*,long*,int) ;
 scalar_t__ unlikely (int) ;
 int wait ;
 int zcopy_cross_send ;
 int zcopy_tx_aborted ;
 int zcopy_tx_timeout ;

__attribute__((used)) static int sdp_wait_rdmardcompl(struct sdp_sock *ssk, long *timeo_p,
  int ignore_signals)
{
 struct socket *sk = ssk->socket;
 int err = 0;
 long vm_wait = 0;
 long current_timeo = *timeo_p;
 struct tx_srcavail_state *tx_sa = ssk->tx_sa;
 DEFINE_WAIT(wait);

 sdp_dbg_data(sk, "sleep till RdmaRdCompl. timeo = %ld.\n", *timeo_p);
 sdp_prf1(sk, ((void*)0), "Going to sleep");
 while (ssk->qp_active) {
  prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);

  if (unlikely(!*timeo_p)) {
   err = -ETIME;
   tx_sa->abort_flags |= TX_SA_TIMEDOUT;
   sdp_prf1(sk, ((void*)0), "timeout");
   SDPSTATS_COUNTER_INC(zcopy_tx_timeout);
   break;
  }

  else if (tx_sa->bytes_acked > tx_sa->bytes_sent) {
   err = -EINVAL;
   sdp_dbg_data(sk, "acked bytes > sent bytes\n");
   tx_sa->abort_flags |= TX_SA_ERROR;
   break;
  }

  if (tx_sa->abort_flags & TX_SA_SENDSM) {
   sdp_prf1(sk, ((void*)0), "Aborting SrcAvail sending");
   SDPSTATS_COUNTER_INC(zcopy_tx_aborted);
   err = -EAGAIN;
   break ;
  }

  if (!ignore_signals) {
   if (signal_pending(current)) {
    err = -EINTR;
    sdp_prf1(sk, ((void*)0), "signalled");
    tx_sa->abort_flags |= TX_SA_INTRRUPTED;
    break;
   }

   if (ssk->rx_sa && (tx_sa->bytes_acked < tx_sa->bytes_sent)) {
    sdp_dbg_data(sk, "Crossing SrcAvail - aborting this\n");
    tx_sa->abort_flags |= TX_SA_CROSS_SEND;
    SDPSTATS_COUNTER_INC(zcopy_cross_send);
    err = -ETIME;
    break ;
   }
  }

  posts_handler_put(ssk);

  sk_wait_event(sk, &current_timeo,
    tx_sa->abort_flags &&
    ssk->rx_sa &&
    (tx_sa->bytes_acked < tx_sa->bytes_sent) &&
    vm_wait);
  sdp_dbg_data(ssk->socket, "woke up sleepers\n");

  posts_handler_get(ssk);

  if (tx_sa->bytes_acked == tx_sa->bytes_sent)
   break;

  if (vm_wait) {
   vm_wait -= current_timeo;
   current_timeo = *timeo_p;
   if (current_timeo != MAX_SCHEDULE_TIMEOUT &&
       (current_timeo -= vm_wait) < 0)
    current_timeo = 0;
   vm_wait = 0;
  }
  *timeo_p = current_timeo;
 }

 finish_wait(sk->sk_sleep, &wait);

 sdp_dbg_data(sk, "Finished waiting - RdmaRdCompl: %d/%d bytes, flags: 0x%x\n",
   tx_sa->bytes_acked, tx_sa->bytes_sent, tx_sa->abort_flags);

 if (!ssk->qp_active) {
  sdp_dbg(sk, "QP destroyed while waiting\n");
  return -EINVAL;
 }
 return err;
}
