
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct mtx* td_lock; } ;
struct mtx {int dummy; } ;


 int MA_OWNED ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 struct mtx blocked_lock ;
 int mtx_unlock_spin (struct mtx*) ;

struct mtx *
thread_lock_block(struct thread *td)
{
 struct mtx *lock;

 THREAD_LOCK_ASSERT(td, MA_OWNED);
 lock = td->td_lock;
 td->td_lock = &blocked_lock;
 mtx_unlock_spin(lock);

 return (lock);
}
