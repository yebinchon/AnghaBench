
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {int rw; int flags; int signal; int kill_takers; } ;


 int TTM_WRITE_LOCK_PENDING ;
 int ttm_lock_send_sig (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool __ttm_write_lock(struct ttm_lock *lock)
{
 bool locked = 0;

 if (unlikely(lock->kill_takers)) {
  ttm_lock_send_sig(lock->signal);
  return 0;
 }
 if (lock->rw == 0 && ((lock->flags & ~TTM_WRITE_LOCK_PENDING) == 0)) {
  lock->rw = -1;
  lock->flags &= ~TTM_WRITE_LOCK_PENDING;
  locked = 1;
 } else {
  lock->flags |= TTM_WRITE_LOCK_PENDING;
 }
 return locked;
}
