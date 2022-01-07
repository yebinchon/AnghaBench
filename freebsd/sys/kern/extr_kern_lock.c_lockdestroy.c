
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock {scalar_t__ lk_lock; scalar_t__ lk_recurse; scalar_t__ lk_exslpfail; int lock_object; } ;


 int KASSERT (int,char*) ;
 scalar_t__ LK_UNLOCKED ;
 int lock_destroy (int *) ;

void
lockdestroy(struct lock *lk)
{

 KASSERT(lk->lk_lock == LK_UNLOCKED, ("lockmgr still held"));
 KASSERT(lk->lk_recurse == 0, ("lockmgr still recursed"));
 KASSERT(lk->lk_exslpfail == 0, ("lockmgr still exclusive waiters"));
 lock_destroy(&lk->lock_object);
}
