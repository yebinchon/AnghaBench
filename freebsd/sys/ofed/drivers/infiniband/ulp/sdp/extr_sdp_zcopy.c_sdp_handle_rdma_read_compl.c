
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct socket {int sk_sleep; } ;
struct sdp_sock {int tx_sa_lock; TYPE_1__* tx_sa; struct socket* socket; } ;
struct TYPE_2__ {int bytes_acked; scalar_t__ mseq; } ;


 int BUG_ON (int) ;
 int sdp_dbg_data (struct socket*,char*,...) ;
 int sdp_prf1 (struct socket*,int *,char*,struct sdp_sock*,TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int ) ;

void sdp_handle_rdma_read_compl(struct sdp_sock *ssk, u32 mseq_ack,
  u32 bytes_completed)
{
 struct socket *sk = ssk->socket;
 unsigned long flags;

 sdp_prf1(sk, ((void*)0), "RdmaRdCompl ssk=%p tx_sa=%p", ssk, ssk->tx_sa);
 sdp_dbg_data(sk, "RdmaRdCompl ssk=%p tx_sa=%p\n", ssk, ssk->tx_sa);

 spin_lock_irqsave(&ssk->tx_sa_lock, flags);

 BUG_ON(!ssk);

 if (!ssk->tx_sa) {
  sdp_dbg_data(sk, "Got RdmaRdCompl for aborted SrcAvail\n");
  goto out;
 }

 if (ssk->tx_sa->mseq > mseq_ack) {
  sdp_dbg_data(sk, "RdmaRdCompl arrived for old SrcAvail. "
   "SendSM mseq_ack: 0x%x, SrcAvail mseq: 0x%x\n",
   mseq_ack, ssk->tx_sa->mseq);
  goto out;
 }

 ssk->tx_sa->bytes_acked += bytes_completed;

 wake_up(sk->sk_sleep);
 sdp_dbg_data(sk, "woke up sleepers\n");

out:
 spin_unlock_irqrestore(&ssk->tx_sa_lock, flags);
 return;
}
