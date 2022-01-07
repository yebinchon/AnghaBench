
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;


 int CLD_CONTINUED ;
 int SIGCONT ;
 int childproc_jobstate (struct proc*,int ,int ) ;

void
childproc_continued(struct proc *p)
{
 childproc_jobstate(p, CLD_CONTINUED, SIGCONT);
}
