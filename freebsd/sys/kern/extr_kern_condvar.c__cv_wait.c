
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct lock_object {int dummy; } ;
struct lock_class {int lc_flags; uintptr_t (* lc_unlock ) (struct lock_object*) ;int (* lc_lock ) (struct lock_object*,uintptr_t) ;} ;
struct cv {int cv_description; } ;
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
 int sleepq_add (struct cv*,struct lock_object*,int ,int ,int ) ;
 int sleepq_lock (struct cv*) ;
 int sleepq_release (struct cv*) ;
 int sleepq_wait (struct cv*,int ) ;
 uintptr_t stub1 (struct lock_object*) ;
 int stub2 (struct lock_object*,uintptr_t) ;

void
_cv_wait(struct cv *cvp, struct lock_object *lock)
{
 WITNESS_SAVE_DECL(lock_witness);
 struct lock_class *class;
 struct thread *td;
 uintptr_t lock_state;

 td = curthread;
 lock_state = 0;




 CV_ASSERT(cvp, lock, td);
 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, lock,
     "Waiting on \"%s\"", cvp->cv_description);
 class = LOCK_CLASS(lock);

 if (SCHEDULER_STOPPED_TD(td))
  return;

 sleepq_lock(cvp);

 CV_WAITERS_INC(cvp);
 if (lock == &Giant.lock_object)
  mtx_assert(&Giant, MA_OWNED);
 DROP_GIANT();

 sleepq_add(cvp, lock, cvp->cv_description, SLEEPQ_CONDVAR, 0);
 if (lock != &Giant.lock_object) {
  if (class->lc_flags & LC_SLEEPABLE)
   sleepq_release(cvp);
  WITNESS_SAVE(lock, lock_witness);
  lock_state = class->lc_unlock(lock);
  if (class->lc_flags & LC_SLEEPABLE)
   sleepq_lock(cvp);
 }
 sleepq_wait(cvp, 0);





 PICKUP_GIANT();
 if (lock != &Giant.lock_object) {
  class->lc_lock(lock, lock_state);
  WITNESS_RESTORE(lock, lock_witness);
 }
}
