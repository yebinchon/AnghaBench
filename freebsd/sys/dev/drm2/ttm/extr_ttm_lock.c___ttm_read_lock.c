
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {scalar_t__ rw; scalar_t__ flags; int signal; int kill_takers; } ;


 int ttm_lock_send_sig (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool __ttm_read_lock(struct ttm_lock *lock)
{
 bool locked = 0;

 if (unlikely(lock->kill_takers)) {
  ttm_lock_send_sig(lock->signal);
  return 0;
 }
 if (lock->rw >= 0 && lock->flags == 0) {
  ++lock->rw;
  locked = 1;
 }
 return locked;
}
