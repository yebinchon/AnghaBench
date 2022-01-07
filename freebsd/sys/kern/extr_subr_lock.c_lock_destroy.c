
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_object {int lo_flags; } ;


 int KASSERT (int ,char*) ;
 int LOCK_LOG_DESTROY (struct lock_object*,int ) ;
 int LO_INITIALIZED ;
 int WITNESS_DESTROY (struct lock_object*) ;
 int lock_initialized (struct lock_object*) ;

void
lock_destroy(struct lock_object *lock)
{

 KASSERT(lock_initialized(lock), ("lock %p is not initialized", lock));
 WITNESS_DESTROY(lock);
 LOCK_LOG_DESTROY(lock, 0);
 lock->lo_flags &= ~LO_INITIALIZED;
}
