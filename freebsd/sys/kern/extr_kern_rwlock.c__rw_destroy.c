
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rwlock {scalar_t__ rw_lock; scalar_t__ rw_recurse; int lock_object; } ;


 int KASSERT (int,char*) ;
 scalar_t__ RW_DESTROYED ;
 scalar_t__ RW_UNLOCKED ;
 int lock_destroy (int *) ;
 struct rwlock* rwlock2rw (uintptr_t volatile*) ;

void
_rw_destroy(volatile uintptr_t *c)
{
 struct rwlock *rw;

 rw = rwlock2rw(c);

 KASSERT(rw->rw_lock == RW_UNLOCKED, ("rw lock %p not unlocked", rw));
 KASSERT(rw->rw_recurse == 0, ("rw lock %p still recursed", rw));
 rw->rw_lock = RW_DESTROYED;
 lock_destroy(&rw->lock_object);
}
