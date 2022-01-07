
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct socket {int sk_sleep; } ;
struct sdp_sock {int tx_sa_lock; int srcavail_cancel_work; TYPE_1__* tx_sa; struct socket* socket; } ;
struct TYPE_2__ {int abort_flags; int mseq; } ;


 int TX_SA_SENDSM ;
 int cancel_delayed_work (int *) ;
 int sdp_dbg_data (struct socket*,char*,...) ;
 int sdp_prf1 (struct socket*,int *,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int ) ;

void sdp_handle_sendsm(struct sdp_sock *ssk, u32 mseq_ack)
{
 struct socket *sk = ssk->socket;
 unsigned long flags;

 spin_lock_irqsave(&ssk->tx_sa_lock, flags);

 if (!ssk->tx_sa) {
  sdp_prf1(sk, ((void*)0), "SendSM for cancelled/finished SrcAvail");
  goto out;
 }

 if (ssk->tx_sa->mseq > mseq_ack) {
  sdp_dbg_data(sk, "SendSM arrived for old SrcAvail. "
   "SendSM mseq_ack: 0x%x, SrcAvail mseq: 0x%x\n",
   mseq_ack, ssk->tx_sa->mseq);
  goto out;
 }

 sdp_dbg_data(sk, "Got SendSM - aborting SrcAvail\n");

 ssk->tx_sa->abort_flags |= TX_SA_SENDSM;
 cancel_delayed_work(&ssk->srcavail_cancel_work);

 wake_up(sk->sk_sleep);
 sdp_dbg_data(sk, "woke up sleepers\n");

out:
 spin_unlock_irqrestore(&ssk->tx_sa_lock, flags);
}
