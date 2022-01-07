
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty {TYPE_1__* t_session; int t_flags; } ;
struct proc {int dummy; } ;
struct TYPE_2__ {struct proc* s_leader; } ;


 int MA_OWNED ;
 int MPASS (int) ;
 int NSIG ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int TF_STOPPED ;
 int kern_psignal (struct proc*,int) ;
 int tty_lock_assert (struct tty*,int ) ;

void
tty_signal_sessleader(struct tty *tp, int sig)
{
 struct proc *p;

 tty_lock_assert(tp, MA_OWNED);
 MPASS(sig >= 1 && sig < NSIG);


 tp->t_flags &= ~TF_STOPPED;

 if (tp->t_session != ((void*)0) && tp->t_session->s_leader != ((void*)0)) {
  p = tp->t_session->s_leader;
  PROC_LOCK(p);
  kern_psignal(p, sig);
  PROC_UNLOCK(p);
 }
}
