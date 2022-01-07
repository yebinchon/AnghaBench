
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int c_lflag; } ;
struct tty {int * t_pgrp; TYPE_1__ t_termios; int t_flags; } ;
struct TYPE_6__ {int ksi_signo; int ksi_code; } ;
typedef TYPE_2__ ksiginfo_t ;


 int MA_OWNED ;
 int MPASS (int) ;
 int NOKERNINFO ;
 int NSIG ;
 int PGRP_LOCK (int *) ;
 int PGRP_UNLOCK (int *) ;
 int SIGINFO ;
 int SI_KERNEL ;
 int TF_STOPPED ;
 int ksiginfo_init (TYPE_2__*) ;
 int pgsignal (int *,int,int,TYPE_2__*) ;
 int tty_info (struct tty*) ;
 int tty_lock_assert (struct tty*,int ) ;

void
tty_signal_pgrp(struct tty *tp, int sig)
{
 ksiginfo_t ksi;

 tty_lock_assert(tp, MA_OWNED);
 MPASS(sig >= 1 && sig < NSIG);


 tp->t_flags &= ~TF_STOPPED;

 if (sig == SIGINFO && !(tp->t_termios.c_lflag & NOKERNINFO))
  tty_info(tp);
 if (tp->t_pgrp != ((void*)0)) {
  ksiginfo_init(&ksi);
  ksi.ksi_signo = sig;
  ksi.ksi_code = SI_KERNEL;
  PGRP_LOCK(tp->t_pgrp);
  pgsignal(tp->t_pgrp, sig, 1, &ksi);
  PGRP_UNLOCK(tp->t_pgrp);
 }
}
