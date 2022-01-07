
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_xexit; int p_xsig; } ;


 int CLD_DUMPED ;
 int CLD_EXITED ;
 int CLD_KILLED ;
 scalar_t__ WCOREDUMP (int ) ;
 scalar_t__ WIFSIGNALED (int ) ;
 int WTERMSIG (int ) ;
 int sigparent (struct proc*,int,int) ;

void
childproc_exited(struct proc *p)
{
 int reason, status;

 if (WCOREDUMP(p->p_xsig)) {
  reason = CLD_DUMPED;
  status = WTERMSIG(p->p_xsig);
 } else if (WIFSIGNALED(p->p_xsig)) {
  reason = CLD_KILLED;
  status = WTERMSIG(p->p_xsig);
 } else {
  reason = CLD_EXITED;
  status = p->p_xexit;
 }




 sigparent(p, reason, status);
}
