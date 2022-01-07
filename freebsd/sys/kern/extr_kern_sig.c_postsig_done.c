
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ru_nsignals; } ;
struct thread {TYPE_1__ td_ru; } ;
struct sigacts {int ps_sigreset; int ps_signodefer; int * ps_catchmask; int ps_mtx; } ;
typedef int sigset_t ;


 int MA_OWNED ;
 int SIGADDSET (int ,int) ;
 scalar_t__ SIGISMEMBER (int ,int) ;
 int SIGPROCMASK_PROC_LOCKED ;
 int SIGPROCMASK_PS_LOCKED ;
 int SIG_BLOCK ;
 size_t _SIG_IDX (int) ;
 int kern_sigprocmask (struct thread*,int ,int *,int *,int) ;
 int mtx_assert (int *,int ) ;
 int sigdflt (struct sigacts*,int) ;

__attribute__((used)) static void
postsig_done(int sig, struct thread *td, struct sigacts *ps)
{
 sigset_t mask;

 mtx_assert(&ps->ps_mtx, MA_OWNED);
 td->td_ru.ru_nsignals++;
 mask = ps->ps_catchmask[_SIG_IDX(sig)];
 if (!SIGISMEMBER(ps->ps_signodefer, sig))
  SIGADDSET(mask, sig);
 kern_sigprocmask(td, SIG_BLOCK, &mask, ((void*)0),
     SIGPROCMASK_PROC_LOCKED | SIGPROCMASK_PS_LOCKED);
 if (SIGISMEMBER(ps->ps_sigreset, sig))
  sigdflt(ps, sig);
}
