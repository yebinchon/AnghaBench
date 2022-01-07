
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int TAILQ_INSERT_HEAD (int *,struct thread*,int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int td_slpq ;
 int zombie_lock ;
 int zombie_threads ;

void
thread_zombie(struct thread *td)
{
 mtx_lock_spin(&zombie_lock);
 TAILQ_INSERT_HEAD(&zombie_threads, td, td_slpq);
 mtx_unlock_spin(&zombie_lock);
}
