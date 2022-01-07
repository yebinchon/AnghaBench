
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigacts {int ps_siginfo; int * ps_sigact; int ps_sigignore; int ps_sigcatch; int ps_mtx; } ;


 int MA_OWNED ;
 int SIGADDSET (int ,int) ;
 int SIGCONT ;
 int SIGDELSET (int ,int) ;
 int SIGPROP_IGNORE ;
 int SIG_DFL ;
 size_t _SIG_IDX (int) ;
 int mtx_assert (int *,int ) ;
 int sigprop (int) ;

__attribute__((used)) static void
sigdflt(struct sigacts *ps, int sig)
{

 mtx_assert(&ps->ps_mtx, MA_OWNED);
 SIGDELSET(ps->ps_sigcatch, sig);
 if ((sigprop(sig) & SIGPROP_IGNORE) != 0 && sig != SIGCONT)
  SIGADDSET(ps->ps_sigignore, sig);
 ps->ps_sigact[_SIG_IDX(sig)] = SIG_DFL;
 SIGDELSET(ps->ps_siginfo, sig);
}
