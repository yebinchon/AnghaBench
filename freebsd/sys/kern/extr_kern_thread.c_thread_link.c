
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_slpcallout; int td_sigqueue; int td_epochs; int * td_lprof; int td_contested; int td_flags; struct proc* td_proc; int td_state; } ;
struct proc {int p_numthreads; int p_threads; } ;


 int LIST_INIT (int *) ;
 int SLIST_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct thread*,int ) ;
 int TDF_INMEM ;
 int TDS_INACTIVE ;
 int callout_init (int *,int) ;
 int sigqueue_init (int *,struct proc*) ;
 int td_plist ;

void
thread_link(struct thread *td, struct proc *p)
{






 td->td_state = TDS_INACTIVE;
 td->td_proc = p;
 td->td_flags = TDF_INMEM;

 LIST_INIT(&td->td_contested);
 LIST_INIT(&td->td_lprof[0]);
 LIST_INIT(&td->td_lprof[1]);



 sigqueue_init(&td->td_sigqueue, p);
 callout_init(&td->td_slpcallout, 1);
 TAILQ_INSERT_TAIL(&p->p_threads, td, td_plist);
 p->p_numthreads++;
}
