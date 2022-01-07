
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rwlock {int dummy; } ;
struct lock_object {int dummy; } ;


 int rw_rlock (struct rwlock*) ;
 int rw_wlock (struct rwlock*) ;

void
lock_rw(struct lock_object *lock, uintptr_t how)
{
 struct rwlock *rw;

 rw = (struct rwlock *)lock;
 if (how)
  rw_rlock(rw);
 else
  rw_wlock(rw);
}
