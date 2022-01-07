
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lo_name; } ;
struct rwlock {scalar_t__ rw_lock; TYPE_1__ lock_object; int rw_recurse; } ;


 int KASSERT (int,char*) ;
 int LOCKSTAT_PROFILE_OBTAIN_RWLOCK_SUCCESS (int ,struct rwlock*,int ,int ,char const*,int,int ) ;
 int LOCKSTAT_WRITER ;
 int LOCK_LOG_LOCK (char*,TYPE_1__*,int ,int ,char const*,int) ;
 int LOP_EXCLUSIVE ;
 int LOP_NEWORDER ;
 scalar_t__ RW_DESTROYED ;
 uintptr_t RW_UNLOCKED ;
 scalar_t__ SCHEDULER_STOPPED () ;
 int TD_IS_IDLETHREAD (scalar_t__) ;
 int TD_LOCKS_INC (scalar_t__) ;
 int WITNESS_CHECKORDER (TYPE_1__*,int,char const*,int,int *) ;
 int WITNESS_LOCK (TYPE_1__*,int,char const*,int) ;
 int _rw_wlock_hard (struct rwlock*,uintptr_t,char const*,int) ;
 int _rw_write_lock_fetch (struct rwlock*,uintptr_t*,uintptr_t) ;
 scalar_t__ curthread ;
 scalar_t__ kdb_active ;
 int rw__acquire ;
 struct rwlock* rwlock2rw (uintptr_t volatile*) ;

void
_rw_wlock_cookie(volatile uintptr_t *c, const char *file, int line)
{
 struct rwlock *rw;
 uintptr_t tid, v;

 rw = rwlock2rw(c);

 KASSERT(kdb_active != 0 || SCHEDULER_STOPPED() ||
     !TD_IS_IDLETHREAD(curthread),
     ("rw_wlock() by idle thread %p on rwlock %s @ %s:%d",
     curthread, rw->lock_object.lo_name, file, line));
 KASSERT(rw->rw_lock != RW_DESTROYED,
     ("rw_wlock() of destroyed rwlock @ %s:%d", file, line));
 WITNESS_CHECKORDER(&rw->lock_object, LOP_NEWORDER | LOP_EXCLUSIVE, file,
     line, ((void*)0));
 tid = (uintptr_t)curthread;
 v = RW_UNLOCKED;
 if (!_rw_write_lock_fetch(rw, &v, tid))
  _rw_wlock_hard(rw, v, file, line);
 else
  LOCKSTAT_PROFILE_OBTAIN_RWLOCK_SUCCESS(rw__acquire, rw,
      0, 0, file, line, LOCKSTAT_WRITER);

 LOCK_LOG_LOCK("WLOCK", &rw->lock_object, 0, rw->rw_recurse, file, line);
 WITNESS_LOCK(&rw->lock_object, LOP_EXCLUSIVE, file, line);
 TD_LOCKS_INC(curthread);
}
