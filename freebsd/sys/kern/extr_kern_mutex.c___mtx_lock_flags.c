
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lo_name; } ;
struct mtx {scalar_t__ mtx_lock; TYPE_1__ lock_object; int mtx_recurse; } ;


 int KASSERT (int,char*) ;
 int LOCKSTAT_PROFILE_OBTAIN_LOCK_SUCCESS (int ,struct mtx*,int ,int ,char const*,int) ;
 int * LOCK_CLASS (TYPE_1__*) ;
 int LOCK_LOG_LOCK (char*,TYPE_1__*,int,int ,char const*,int) ;
 int LOP_EXCLUSIVE ;
 int LOP_NEWORDER ;
 scalar_t__ MTX_DESTROYED ;
 int MTX_RECURSE ;
 uintptr_t MTX_UNOWNED ;
 scalar_t__ SCHEDULER_STOPPED () ;
 int TD_IS_IDLETHREAD (scalar_t__) ;
 int TD_LOCKS_INC (scalar_t__) ;
 int WITNESS_CHECKORDER (TYPE_1__*,int,char const*,int,int *) ;
 int WITNESS_LOCK (TYPE_1__*,int,char const*,int) ;
 int _mtx_lock_sleep (struct mtx*,uintptr_t,int,char const*,int) ;
 int _mtx_obtain_lock_fetch (struct mtx*,uintptr_t*,uintptr_t) ;
 int adaptive__acquire ;
 scalar_t__ curthread ;
 scalar_t__ kdb_active ;
 int lock_class_mtx_sleep ;
 struct mtx* mtxlock2mtx (uintptr_t volatile*) ;

void
__mtx_lock_flags(volatile uintptr_t *c, int opts, const char *file, int line)
{
 struct mtx *m;
 uintptr_t tid, v;

 m = mtxlock2mtx(c);

 KASSERT(kdb_active != 0 || SCHEDULER_STOPPED() ||
     !TD_IS_IDLETHREAD(curthread),
     ("mtx_lock() by idle thread %p on sleep mutex %s @ %s:%d",
     curthread, m->lock_object.lo_name, file, line));
 KASSERT(m->mtx_lock != MTX_DESTROYED,
     ("mtx_lock() of destroyed mutex @ %s:%d", file, line));
 KASSERT(LOCK_CLASS(&m->lock_object) == &lock_class_mtx_sleep,
     ("mtx_lock() of spin mutex %s @ %s:%d", m->lock_object.lo_name,
     file, line));
 WITNESS_CHECKORDER(&m->lock_object, (opts & ~MTX_RECURSE) |
     LOP_NEWORDER | LOP_EXCLUSIVE, file, line, ((void*)0));

 tid = (uintptr_t)curthread;
 v = MTX_UNOWNED;
 if (!_mtx_obtain_lock_fetch(m, &v, tid))
  _mtx_lock_sleep(m, v, opts, file, line);
 else
  LOCKSTAT_PROFILE_OBTAIN_LOCK_SUCCESS(adaptive__acquire,
      m, 0, 0, file, line);
 LOCK_LOG_LOCK("LOCK", &m->lock_object, opts, m->mtx_recurse, file,
     line);
 WITNESS_LOCK(&m->lock_object, (opts & ~MTX_RECURSE) | LOP_EXCLUSIVE,
     file, line);
 TD_LOCKS_INC(curthread);
}
