
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty {scalar_t__ t_pgrp; int t_bgwait; } ;
struct thread {int td_sigmask; struct proc* td_proc; } ;
struct proc {scalar_t__ p_pgrp; int p_flag; TYPE_1__* p_sigacts; } ;
struct pgrp {scalar_t__ pg_jobc; } ;
struct TYPE_6__ {int ksi_signo; int ksi_code; } ;
typedef TYPE_2__ ksiginfo_t ;
struct TYPE_5__ {int ps_sigignore; } ;


 int EIO ;
 int MA_OWNED ;
 int MPASS (int) ;
 int PGRP_LOCK (struct pgrp*) ;
 int PGRP_UNLOCK (struct pgrp*) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_PPWAIT ;
 scalar_t__ SIGISMEMBER (int ,int) ;
 int SIGTTIN ;
 int SIGTTOU ;
 int SI_KERNEL ;
 int ksiginfo_init (TYPE_2__*) ;
 int pgsignal (struct pgrp*,int,int,TYPE_2__*) ;
 int tty_is_ctty (struct tty*,struct proc*) ;
 int tty_lock_assert (struct tty*,int ) ;
 int tty_wait (struct tty*,int *) ;

int
tty_wait_background(struct tty *tp, struct thread *td, int sig)
{
 struct proc *p = td->td_proc;
 struct pgrp *pg;
 ksiginfo_t ksi;
 int error;

 MPASS(sig == SIGTTIN || sig == SIGTTOU);
 tty_lock_assert(tp, MA_OWNED);

 for (;;) {
  PROC_LOCK(p);
  if (!tty_is_ctty(tp, p) || p->p_pgrp == tp->t_pgrp) {

   PROC_UNLOCK(p);
   return (0);
  }

  if (SIGISMEMBER(p->p_sigacts->ps_sigignore, sig) ||
      SIGISMEMBER(td->td_sigmask, sig)) {

   PROC_UNLOCK(p);
   return (sig == SIGTTOU ? 0 : EIO);
  }

  pg = p->p_pgrp;
  if (p->p_flag & P_PPWAIT || pg->pg_jobc == 0) {

   PROC_UNLOCK(p);
   return (EIO);
  }
  PROC_UNLOCK(p);





  if (sig != 0) {
   ksiginfo_init(&ksi);
   ksi.ksi_code = SI_KERNEL;
   ksi.ksi_signo = sig;
   sig = 0;
  }
  PGRP_LOCK(pg);
  pgsignal(pg, ksi.ksi_signo, 1, &ksi);
  PGRP_UNLOCK(pg);

  error = tty_wait(tp, &tp->t_bgwait);
  if (error)
   return (error);
 }
}
