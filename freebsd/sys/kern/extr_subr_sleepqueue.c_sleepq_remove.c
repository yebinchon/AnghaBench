
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {void* td_wchan; } ;
struct sleepqueue {int dummy; } ;


 int MPASS (int) ;
 int TD_ON_SLEEPQ (struct thread*) ;
 int kick_proc0 () ;
 int sleepq_lock (void*) ;
 struct sleepqueue* sleepq_lookup (void*) ;
 int sleepq_release (void*) ;
 int sleepq_resume_thread (struct sleepqueue*,struct thread*,int ) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

void
sleepq_remove(struct thread *td, void *wchan)
{
 struct sleepqueue *sq;
 int wakeup_swapper;






 MPASS(wchan != ((void*)0));
 sleepq_lock(wchan);
 sq = sleepq_lookup(wchan);






 if (!TD_ON_SLEEPQ(td) || td->td_wchan != wchan) {
  sleepq_release(wchan);
  return;
 }

 thread_lock(td);
 MPASS(sq != ((void*)0));
 MPASS(td->td_wchan == wchan);
 wakeup_swapper = sleepq_resume_thread(sq, td, 0);
 thread_unlock(td);
 sleepq_release(wchan);
 if (wakeup_swapper)
  kick_proc0();
}
