
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ ocs_rlock_t ;


 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 scalar_t__ mtx_initialized (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;

__attribute__((used)) static inline void
ocs_rlock_release(ocs_rlock_t *lock)
{
 if (mtx_initialized(&(lock)->lock)) {
  mtx_assert(&(lock)->lock, MA_OWNED);
  mtx_unlock(&(lock)->lock);
 } else {
  panic("XXX trying to unlock with un-initialized mtx!?!?\n");
 }
}
