
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {struct itimers* p_itimers; } ;
struct itimers {int ** its_timers; int its_worklist; int its_prof; int its_virtual; } ;


 int LIST_INIT (int *) ;
 int M_SUBPROC ;
 int M_WAITOK ;
 int M_ZERO ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int TAILQ_INIT (int *) ;
 int TIMER_MAX ;
 int free (struct itimers*,int ) ;
 struct itimers* malloc (int,int ,int) ;

__attribute__((used)) static void
itimers_alloc(struct proc *p)
{
 struct itimers *its;
 int i;

 its = malloc(sizeof (struct itimers), M_SUBPROC, M_WAITOK | M_ZERO);
 LIST_INIT(&its->its_virtual);
 LIST_INIT(&its->its_prof);
 TAILQ_INIT(&its->its_worklist);
 for (i = 0; i < TIMER_MAX; i++)
  its->its_timers[i] = ((void*)0);
 PROC_LOCK(p);
 if (p->p_itimers == ((void*)0)) {
  p->p_itimers = its;
  PROC_UNLOCK(p);
 }
 else {
  PROC_UNLOCK(p);
  free(its, M_SUBPROC);
 }
}
