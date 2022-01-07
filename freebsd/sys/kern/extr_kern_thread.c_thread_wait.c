
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_slpcallout; int * td_cpuset; } ;
struct proc {int p_numthreads; scalar_t__ p_exitthreads; } ;


 struct thread* FIRST_THREAD_IN_PROC (struct proc*) ;
 int Giant ;
 int KASSERT (int,char*) ;
 int MA_NOTOWNED ;
 int callout_drain (int *) ;
 int cpu_thread_clean (struct thread*) ;
 int cpuset_rel (int *) ;
 int lock_profile_thread_exit (struct thread*) ;
 int mtx_assert (int *,int ) ;
 int thread_cow_free (struct thread*) ;
 int thread_lock (struct thread*) ;
 int thread_reap () ;
 int thread_unlock (struct thread*) ;

void
thread_wait(struct proc *p)
{
 struct thread *td;

 mtx_assert(&Giant, MA_NOTOWNED);
 KASSERT(p->p_numthreads == 1, ("multiple threads in thread_wait()"));
 KASSERT(p->p_exitthreads == 0, ("p_exitthreads leaking"));
 td = FIRST_THREAD_IN_PROC(p);

 thread_lock(td);
 thread_unlock(td);
 lock_profile_thread_exit(td);
 cpuset_rel(td->td_cpuset);
 td->td_cpuset = ((void*)0);
 cpu_thread_clean(td);
 thread_cow_free(td);
 callout_drain(&td->td_slpcallout);
 thread_reap();
}
