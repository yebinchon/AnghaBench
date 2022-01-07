
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_flags; int td_intrval; void* td_wchan; scalar_t__ td_name; TYPE_1__* td_proc; } ;
struct sleepqueue {int dummy; } ;
struct TYPE_2__ {scalar_t__ p_pid; } ;


 int CTR3 (int ,char*,void*,long,void*) ;
 int EINTR ;
 int ERESTART ;
 int KTR_PROC ;
 int MA_OWNED ;
 int MPASS (int) ;
 int TDF_SINTR ;
 int TDF_SLEEPABORT ;
 int TDF_TIMEOUT ;
 int TD_IS_SLEEPING (struct thread*) ;
 int TD_ON_SLEEPQ (struct thread*) ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 struct sleepqueue* sleepq_lookup (void*) ;
 int sleepq_resume_thread (struct sleepqueue*,struct thread*,int ) ;

int
sleepq_abort(struct thread *td, int intrval)
{
 struct sleepqueue *sq;
 void *wchan;

 THREAD_LOCK_ASSERT(td, MA_OWNED);
 MPASS(TD_ON_SLEEPQ(td));
 MPASS(td->td_flags & TDF_SINTR);
 MPASS(intrval == EINTR || intrval == ERESTART);





 if (td->td_flags & TDF_TIMEOUT)
  return (0);

 CTR3(KTR_PROC, "sleepq_abort: thread %p (pid %ld, %s)",
     (void *)td, (long)td->td_proc->p_pid, (void *)td->td_name);
 td->td_intrval = intrval;
 td->td_flags |= TDF_SLEEPABORT;





 if (!TD_IS_SLEEPING(td))
  return (0);
 wchan = td->td_wchan;
 MPASS(wchan != ((void*)0));
 sq = sleepq_lookup(wchan);
 MPASS(sq != ((void*)0));


 return (sleepq_resume_thread(sq, td, 0));
}
