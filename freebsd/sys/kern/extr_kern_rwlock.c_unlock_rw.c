
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rwlock {int rw_lock; } ;
struct lock_object {int dummy; } ;


 int LA_NOTRECURSED ;
 int RA_LOCKED ;
 int RW_LOCK_READ ;
 int rw_assert (struct rwlock*,int) ;
 int rw_runlock (struct rwlock*) ;
 int rw_wunlock (struct rwlock*) ;

uintptr_t
unlock_rw(struct lock_object *lock)
{
 struct rwlock *rw;

 rw = (struct rwlock *)lock;
 rw_assert(rw, RA_LOCKED | LA_NOTRECURSED);
 if (rw->rw_lock & RW_LOCK_READ) {
  rw_runlock(rw);
  return (1);
 } else {
  rw_wunlock(rw);
  return (0);
 }
}
