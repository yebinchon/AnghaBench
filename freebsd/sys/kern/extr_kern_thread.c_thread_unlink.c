
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_epochs; struct proc* td_proc; } ;
struct proc {int p_numthreads; int p_threads; } ;


 int MA_OWNED ;
 int MPASS (int ) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int SLIST_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct thread*,int ) ;
 int td_plist ;

void
thread_unlink(struct thread *td)
{
 struct proc *p = td->td_proc;

 PROC_LOCK_ASSERT(p, MA_OWNED);




 TAILQ_REMOVE(&p->p_threads, td, td_plist);
 p->p_numthreads--;


}
