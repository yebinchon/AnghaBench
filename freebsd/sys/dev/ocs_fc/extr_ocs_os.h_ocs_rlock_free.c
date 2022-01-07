
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ ocs_rlock_t ;


 int mtx_destroy (int *) ;
 scalar_t__ mtx_initialized (int *) ;
 int panic (char*) ;

__attribute__((used)) static inline void
ocs_rlock_free(ocs_rlock_t *lock)
{
 if (mtx_initialized(&(lock)->lock)) {
  mtx_destroy(&(lock)->lock);
 } else {
  panic("XXX trying to free with un-initialized mtx!?!?\n");
 }
}
