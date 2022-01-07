
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lo_flags; int lo_name; } ;
struct mtx {scalar_t__ mtx_lock; TYPE_1__ lock_object; int mtx_recurse; } ;


 int KASSERT (int,char*) ;
 int LOCKSTAT_PROFILE_OBTAIN_LOCK_SUCCESS (int ,struct mtx*,int ,int ,char const*,int) ;
 int * LOCK_CLASS (TYPE_1__*) ;
 int LOCK_LOG_LOCK (char*,TYPE_1__*,int,int ,char const*,int) ;
 int LOP_EXCLUSIVE ;
 int LOP_NEWORDER ;
 int LO_RECURSABLE ;
 scalar_t__ MTX_DESTROYED ;
 int MTX_RECURSE ;
 uintptr_t MTX_UNOWNED ;
 int WITNESS_CHECKORDER (TYPE_1__*,int,char const*,int,int *) ;
 int WITNESS_LOCK (TYPE_1__*,int,char const*,int) ;
 int __mtx_lock_spin (struct mtx*,scalar_t__,int,char const*,int) ;
 int _mtx_lock_spin (struct mtx*,uintptr_t,int,char const*,int) ;
 int _mtx_obtain_lock_fetch (struct mtx*,uintptr_t*,uintptr_t) ;
 scalar_t__ curthread ;
 int lock_class_mtx_spin ;
 scalar_t__ mtx_owned (struct mtx*) ;
 struct mtx* mtxlock2mtx (uintptr_t volatile*) ;
 int spin__acquire ;
 int spinlock_enter () ;

void
__mtx_lock_spin_flags(volatile uintptr_t *c, int opts, const char *file,
    int line)
{
 struct mtx *m;




 m = mtxlock2mtx(c);

 KASSERT(m->mtx_lock != MTX_DESTROYED,
     ("mtx_lock_spin() of destroyed mutex @ %s:%d", file, line));
 KASSERT(LOCK_CLASS(&m->lock_object) == &lock_class_mtx_spin,
     ("mtx_lock_spin() of sleep mutex %s @ %s:%d",
     m->lock_object.lo_name, file, line));
 if (mtx_owned(m))
  KASSERT((m->lock_object.lo_flags & LO_RECURSABLE) != 0 ||
      (opts & MTX_RECURSE) != 0,
     ("mtx_lock_spin: recursed on non-recursive mutex %s @ %s:%d\n",
      m->lock_object.lo_name, file, line));
 opts &= ~MTX_RECURSE;
 WITNESS_CHECKORDER(&m->lock_object, opts | LOP_NEWORDER | LOP_EXCLUSIVE,
     file, line, ((void*)0));
 __mtx_lock_spin(m, curthread, opts, file, line);

 LOCK_LOG_LOCK("LOCK", &m->lock_object, opts, m->mtx_recurse, file,
     line);
 WITNESS_LOCK(&m->lock_object, opts | LOP_EXCLUSIVE, file, line);
}
