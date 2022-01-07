
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_xsig; } ;


 int childproc_jobstate (struct proc*,int,int ) ;

void
childproc_stopped(struct proc *p, int reason)
{

 childproc_jobstate(p, reason, p->p_xsig);
}
