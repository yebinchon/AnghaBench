
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rwlock {scalar_t__ rw_lock; int rw_recurse; int lock_object; } ;


 int KASSERT (int,char*) ;
 int LOCK_LOG_LOCK (char*,int *,int ,int ,char const*,int) ;
 int LOP_EXCLUSIVE ;
 int RA_WLOCKED ;
 scalar_t__ RW_DESTROYED ;
 int TD_LOCKS_DEC (scalar_t__) ;
 int WITNESS_UNLOCK (int *,int ,char const*,int) ;
 int __rw_assert (uintptr_t volatile*,int ,char const*,int) ;
 int __rw_wunlock (struct rwlock*,scalar_t__,char const*,int) ;
 int _rw_wunlock_hard (struct rwlock*,uintptr_t,char const*,int) ;
 scalar_t__ curthread ;
 struct rwlock* rwlock2rw (uintptr_t volatile*) ;

void
_rw_wunlock_cookie(volatile uintptr_t *c, const char *file, int line)
{
 struct rwlock *rw;

 rw = rwlock2rw(c);

 KASSERT(rw->rw_lock != RW_DESTROYED,
     ("rw_wunlock() of destroyed rwlock @ %s:%d", file, line));
 __rw_assert(c, RA_WLOCKED, file, line);
 WITNESS_UNLOCK(&rw->lock_object, LOP_EXCLUSIVE, file, line);
 LOCK_LOG_LOCK("WUNLOCK", &rw->lock_object, 0, rw->rw_recurse, file,
     line);




 __rw_wunlock(rw, curthread, file, line);


 TD_LOCKS_DEC(curthread);
}
