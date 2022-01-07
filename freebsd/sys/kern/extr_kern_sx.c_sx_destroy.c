
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx {scalar_t__ sx_lock; scalar_t__ sx_recurse; int lock_object; } ;


 int KASSERT (int,char*) ;
 scalar_t__ SX_LOCK_DESTROYED ;
 scalar_t__ SX_LOCK_UNLOCKED ;
 int lock_destroy (int *) ;

void
sx_destroy(struct sx *sx)
{

 KASSERT(sx->sx_lock == SX_LOCK_UNLOCKED, ("sx lock still held"));
 KASSERT(sx->sx_recurse == 0, ("sx lock still recursed"));
 sx->sx_lock = SX_LOCK_DESTROYED;
 lock_destroy(&sx->lock_object);
}
