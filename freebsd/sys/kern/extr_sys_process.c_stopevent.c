
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_step; unsigned int p_xsig; unsigned int p_stype; int p_mtx; int * p_xthread; int p_pid; } ;


 int CTR3 (int ,char*,int ,unsigned int,unsigned int) ;
 int KTR_PTRACE ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PWAIT ;
 unsigned int S_EXIT ;
 int msleep (int*,int *,int ,char*,int ) ;
 int wakeup (unsigned int*) ;

void
stopevent(struct proc *p, unsigned int event, unsigned int val)
{

 PROC_LOCK_ASSERT(p, MA_OWNED);
 p->p_step = 1;
 CTR3(KTR_PTRACE, "stopevent: pid %d event %u val %u", p->p_pid, event,
     val);
 do {
  if (event != S_EXIT)
   p->p_xsig = val;
  p->p_xthread = ((void*)0);
  p->p_stype = event;
  wakeup(&p->p_stype);
  msleep(&p->p_step, &p->p_mtx, PWAIT, "stopevent", 0);
 } while (p->p_step);
}
