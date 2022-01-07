
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct lock_object {int dummy; } ;
struct lock_class {int lc_flags; int (* lc_unlock ) (struct lock_object*) ;int (* lc_lock ) (struct lock_object*,int) ;} ;
struct cv {int cv_description; } ;
typedef int sbintime_t ;
struct TYPE_3__ {struct lock_object lock_object; } ;


 int CV_ASSERT (struct cv*,struct lock_object*,struct thread*) ;
 int CV_WAITERS_INC (struct cv*) ;
 int DROP_GIANT () ;
 TYPE_1__ Giant ;
 scalar_t__ KTRPOINT (struct thread*,int ) ;
 int KTR_CSW ;
 int LC_SLEEPABLE ;
 struct lock_class* LOCK_CLASS (struct lock_object*) ;
 int MA_OWNED ;
 int PICKUP_GIANT () ;
 scalar_t__ SCHEDULER_STOPPED_TD (struct thread*) ;
 int SLEEPQ_CONDVAR ;
 int SLEEPQ_INTERRUPTIBLE ;
 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_RESTORE (struct lock_object*,int ) ;
 int WITNESS_SAVE (struct lock_object*,int ) ;
 int WITNESS_SAVE_DECL (int ) ;
 int WITNESS_WARN (int,struct lock_object*,char*,int ) ;
 struct thread* curthread ;
 int cv_wmesg (struct cv*) ;
 int ktrcsw (int,int ,int ) ;
 int lock_witness ;
 int mtx_assert (TYPE_1__*,int ) ;
 int sleepq_add (struct cv*,struct lock_object*,int ,int,int ) ;
 int sleepq_lock (struct cv*) ;
 int sleepq_release (struct cv*) ;
 int sleepq_set_timeout_sbt (struct cv*,int ,int ,int) ;
 int sleepq_timedwait_sig (struct cv*,int ) ;
 int stub1 (struct lock_object*) ;
 int stub2 (struct lock_object*,int) ;

int
_cv_timedwait_sig_sbt(struct cv *cvp, struct lock_object *lock,
    sbintime_t sbt, sbintime_t pr, int flags)
{
 WITNESS_SAVE_DECL(lock_witness);
 struct lock_class *class;
 struct thread *td;
 int lock_state, rval;

 td = curthread;
 lock_state = 0;




 CV_ASSERT(cvp, lock, td);
 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, lock,
     "Waiting on \"%s\"", cvp->cv_description);
 class = LOCK_CLASS(lock);

 if (SCHEDULER_STOPPED_TD(td))
  return (0);

 sleepq_lock(cvp);

 CV_WAITERS_INC(cvp);
 if (lock == &Giant.lock_object)
  mtx_assert(&Giant, MA_OWNED);
 DROP_GIANT();

 sleepq_add(cvp, lock, cvp->cv_description, SLEEPQ_CONDVAR |
     SLEEPQ_INTERRUPTIBLE, 0);
 sleepq_set_timeout_sbt(cvp, sbt, pr, flags);
 if (lock != &Giant.lock_object) {
  if (class->lc_flags & LC_SLEEPABLE)
   sleepq_release(cvp);
  WITNESS_SAVE(lock, lock_witness);
  lock_state = class->lc_unlock(lock);
  if (class->lc_flags & LC_SLEEPABLE)
   sleepq_lock(cvp);
 }
 rval = sleepq_timedwait_sig(cvp, 0);





 PICKUP_GIANT();
 if (lock != &Giant.lock_object) {
  class->lc_lock(lock, lock_state);
  WITNESS_RESTORE(lock, lock_witness);
 }

 return (rval);
}
