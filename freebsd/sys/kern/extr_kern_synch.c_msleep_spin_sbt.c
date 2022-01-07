
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_name; TYPE_1__* td_proc; int td_tid; } ;
struct mtx {int lock_object; } ;
typedef int sbintime_t ;
struct TYPE_2__ {int p_pid; } ;


 int CTR5 (int ,char*,int ,int ,int ,char const*,void*) ;
 int DROP_GIANT () ;
 int KASSERT (int ,char*) ;
 scalar_t__ KTRPOINT (struct thread*,int ) ;
 int KTR_CSW ;
 int KTR_PROC ;
 int MA_NOTRECURSED ;
 int MA_OWNED ;
 int PICKUP_GIANT () ;
 scalar_t__ SCHEDULER_STOPPED_TD (struct thread*) ;
 int SLEEPQ_SLEEP ;
 int TD_IS_RUNNING (struct thread*) ;
 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_RESTORE (int *,struct mtx*) ;
 int WITNESS_SAVE (int *,struct mtx*) ;
 int WITNESS_SAVE_DECL (struct mtx*) ;
 int WITNESS_WARN (int,int *,char*,char const*) ;
 struct thread* curthread ;
 int ktrcsw (int,int ,char const*) ;
 int mtx_assert (struct mtx*,int) ;
 int mtx_lock_spin (struct mtx*) ;
 int mtx_unlock_spin (struct mtx*) ;
 int sleepq_add (void*,int *,char const*,int ,int ) ;
 int sleepq_lock (void*) ;
 int sleepq_release (void*) ;
 int sleepq_set_timeout_sbt (void*,int ,int ,int) ;
 int sleepq_timedwait (void*,int ) ;
 int sleepq_wait (void*,int ) ;

int
msleep_spin_sbt(void *ident, struct mtx *mtx, const char *wmesg,
    sbintime_t sbt, sbintime_t pr, int flags)
{
 struct thread *td;
 int rval;
 WITNESS_SAVE_DECL(mtx);

 td = curthread;
 KASSERT(mtx != ((void*)0), ("sleeping without a mutex"));
 KASSERT(ident != ((void*)0), ("msleep_spin_sbt: NULL ident"));
 KASSERT(TD_IS_RUNNING(td), ("msleep_spin_sbt: curthread not running"));

 if (SCHEDULER_STOPPED_TD(td))
  return (0);

 sleepq_lock(ident);
 CTR5(KTR_PROC, "msleep_spin: thread %ld (pid %ld, %s) on %s (%p)",
     td->td_tid, td->td_proc->p_pid, td->td_name, wmesg, ident);

 DROP_GIANT();
 mtx_assert(mtx, MA_OWNED | MA_NOTRECURSED);
 WITNESS_SAVE(&mtx->lock_object, mtx);
 mtx_unlock_spin(mtx);




 sleepq_add(ident, &mtx->lock_object, wmesg, SLEEPQ_SLEEP, 0);
 if (sbt != 0)
  sleepq_set_timeout_sbt(ident, sbt, pr, flags);
 if (sbt != 0)
  rval = sleepq_timedwait(ident, 0);
 else {
  sleepq_wait(ident, 0);
  rval = 0;
 }




 PICKUP_GIANT();
 mtx_lock_spin(mtx);
 WITNESS_RESTORE(&mtx->lock_object, mtx);
 return (rval);
}
