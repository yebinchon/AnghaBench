
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int * td_lock; } ;
struct mtx {int dummy; } ;


 int MA_OWNED ;
 int MPASS (int) ;
 int atomic_store_rel_ptr (void volatile*,uintptr_t) ;
 int blocked_lock ;
 int mtx_assert (struct mtx*,int ) ;

void
thread_lock_unblock(struct thread *td, struct mtx *new)
{
 mtx_assert(new, MA_OWNED);
 MPASS(td->td_lock == &blocked_lock);
 atomic_store_rel_ptr((volatile void *)&td->td_lock, (uintptr_t)new);
}
