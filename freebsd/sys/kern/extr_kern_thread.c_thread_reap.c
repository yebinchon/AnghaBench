
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int TAILQ_EMPTY (int *) ;
 struct thread* TAILQ_FIRST (int *) ;
 int TAILQ_INIT (int *) ;
 struct thread* TAILQ_NEXT (struct thread*,int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int td_slpq ;
 int thread_cow_free (struct thread*) ;
 int thread_free (struct thread*) ;
 int zombie_lock ;
 int zombie_threads ;

void
thread_reap(void)
{
 struct thread *td_first, *td_next;





 if (!TAILQ_EMPTY(&zombie_threads)) {
  mtx_lock_spin(&zombie_lock);
  td_first = TAILQ_FIRST(&zombie_threads);
  if (td_first)
   TAILQ_INIT(&zombie_threads);
  mtx_unlock_spin(&zombie_lock);
  while (td_first) {
   td_next = TAILQ_NEXT(td_first, td_slpq);
   thread_cow_free(td_first);
   thread_free(td_first);
   td_first = td_next;
  }
 }
}
