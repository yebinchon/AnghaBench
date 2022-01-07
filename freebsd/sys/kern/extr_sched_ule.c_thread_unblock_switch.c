
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_lock; } ;
struct mtx {int dummy; } ;


 int atomic_store_rel_ptr (uintptr_t volatile*,uintptr_t) ;

__attribute__((used)) static inline void
thread_unblock_switch(struct thread *td, struct mtx *mtx)
{
 atomic_store_rel_ptr((volatile uintptr_t *)&td->td_lock,
     (uintptr_t)mtx);
}
