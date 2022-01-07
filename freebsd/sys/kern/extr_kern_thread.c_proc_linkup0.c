
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct proc {int p_threads; } ;


 int TAILQ_INIT (int *) ;
 int proc_linkup (struct proc*,struct thread*) ;

void
proc_linkup0(struct proc *p, struct thread *td)
{
 TAILQ_INIT(&p->p_threads);
 proc_linkup(p, td);
}
