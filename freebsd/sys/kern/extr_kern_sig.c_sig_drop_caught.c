
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigacts {int ps_sigcatch; int ps_mtx; } ;
struct proc {struct sigacts* p_sigacts; } ;


 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 scalar_t__ SIGNOTEMPTY (int ) ;
 int SIGPROP_IGNORE ;
 int mtx_assert (int *,int ) ;
 int sig_ffs (int *) ;
 int sigdflt (struct sigacts*,int) ;
 int sigprop (int) ;
 int sigqueue_delete_proc (struct proc*,int) ;

void
sig_drop_caught(struct proc *p)
{
 int sig;
 struct sigacts *ps;

 ps = p->p_sigacts;
 PROC_LOCK_ASSERT(p, MA_OWNED);
 mtx_assert(&ps->ps_mtx, MA_OWNED);
 while (SIGNOTEMPTY(ps->ps_sigcatch)) {
  sig = sig_ffs(&ps->ps_sigcatch);
  sigdflt(ps, sig);
  if ((sigprop(sig) & SIGPROP_IGNORE) != 0)
   sigqueue_delete_proc(p, sig);
 }
}
