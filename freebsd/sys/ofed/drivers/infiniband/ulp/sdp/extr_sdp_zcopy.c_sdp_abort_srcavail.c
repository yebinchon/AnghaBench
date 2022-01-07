
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_srcavail_state {int umem; int fmr; } ;
struct socket {int dummy; } ;
struct sdp_sock {int tx_sa_lock; struct tx_srcavail_state* tx_sa; int srcavail_cancel_work; } ;


 int cancel_delayed_work (int *) ;
 int flush_scheduled_work () ;
 int sdp_free_fmr (struct socket*,int *,int *) ;
 struct sdp_sock* sdp_sk (struct socket*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void sdp_abort_srcavail(struct socket *sk)
{
 struct sdp_sock *ssk = sdp_sk(sk);
 struct tx_srcavail_state *tx_sa = ssk->tx_sa;
 unsigned long flags;

 if (!tx_sa)
  return;

 cancel_delayed_work(&ssk->srcavail_cancel_work);
 flush_scheduled_work();

 spin_lock_irqsave(&ssk->tx_sa_lock, flags);

 sdp_free_fmr(sk, &tx_sa->fmr, &tx_sa->umem);

 ssk->tx_sa = ((void*)0);

 spin_unlock_irqrestore(&ssk->tx_sa_lock, flags);
}
