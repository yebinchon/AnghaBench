
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_sticks; scalar_t__ td_iticks; scalar_t__ td_uticks; scalar_t__ td_incruntime; int td_rux; } ;
struct proc {int p_rux; } ;


 int ruxagg_locked (int *,struct thread*) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

void
ruxagg(struct proc *p, struct thread *td)
{

 thread_lock(td);
 ruxagg_locked(&p->p_rux, td);
 ruxagg_locked(&td->td_rux, td);
 td->td_incruntime = 0;
 td->td_uticks = 0;
 td->td_iticks = 0;
 td->td_sticks = 0;
 thread_unlock(td);
}
