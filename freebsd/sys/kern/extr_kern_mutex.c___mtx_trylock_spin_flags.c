
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lo_name; } ;
struct mtx {scalar_t__ mtx_lock; TYPE_1__ lock_object; } ;


 int KASSERT (int,char*) ;
 int * LOCK_CLASS (TYPE_1__*) ;
 int LOCK_LOG_TRY (char*,TYPE_1__*,int,int,char const*,int) ;
 int LOP_EXCLUSIVE ;
 scalar_t__ MTX_DESTROYED ;
 int MTX_RECURSE ;
 scalar_t__ SCHEDULER_STOPPED () ;
 int WITNESS_LOCK (TYPE_1__*,int,char const*,int) ;
 scalar_t__ __mtx_trylock_spin (struct mtx*,int ,int,char const*,int) ;
 int curthread ;
 int lock_class_mtx_spin ;
 struct mtx* mtxlock2mtx (uintptr_t volatile*) ;

int
__mtx_trylock_spin_flags(volatile uintptr_t *c, int opts, const char *file,
    int line)
{
 struct mtx *m;

 if (SCHEDULER_STOPPED())
  return (1);

 m = mtxlock2mtx(c);

 KASSERT(m->mtx_lock != MTX_DESTROYED,
     ("mtx_trylock_spin() of destroyed mutex @ %s:%d", file, line));
 KASSERT(LOCK_CLASS(&m->lock_object) == &lock_class_mtx_spin,
     ("mtx_trylock_spin() of sleep mutex %s @ %s:%d",
     m->lock_object.lo_name, file, line));
 KASSERT((opts & MTX_RECURSE) == 0,
     ("mtx_trylock_spin: unsupp. opt MTX_RECURSE on mutex %s @ %s:%d\n",
     m->lock_object.lo_name, file, line));
 if (__mtx_trylock_spin(m, curthread, opts, file, line)) {
  LOCK_LOG_TRY("LOCK", &m->lock_object, opts, 1, file, line);
  WITNESS_LOCK(&m->lock_object, opts | LOP_EXCLUSIVE, file, line);
  return (1);
 }
 LOCK_LOG_TRY("LOCK", &m->lock_object, opts, 0, file, line);
 return (0);
}
