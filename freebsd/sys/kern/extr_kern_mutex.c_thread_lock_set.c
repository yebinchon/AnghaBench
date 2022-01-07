
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct mtx* td_lock; } ;
struct mtx {int dummy; } ;


 int MA_OWNED ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 int mtx_assert (struct mtx*,int ) ;
 int mtx_unlock_spin (struct mtx*) ;

void
thread_lock_set(struct thread *td, struct mtx *new)
{
 struct mtx *lock;

 mtx_assert(new, MA_OWNED);
 THREAD_LOCK_ASSERT(td, MA_OWNED);
 lock = td->td_lock;
 td->td_lock = new;
 mtx_unlock_spin(lock);
}
