
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {struct proc* td_proc; } ;
struct TYPE_2__ {int * md_utrap; int * md_sigtramp; } ;
struct proc {TYPE_1__ p_md; } ;


 int utrap_free (int *) ;

void
cpu_exit(struct thread *td)
{
 struct proc *p;

 p = td->td_proc;
 p->p_md.md_sigtramp = ((void*)0);
 if (p->p_md.md_utrap != ((void*)0)) {
  utrap_free(p->p_md.md_utrap);
  p->p_md.md_utrap = ((void*)0);
 }
}
