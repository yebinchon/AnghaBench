
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct lock_object {int dummy; } ;
struct lock_class {int lc_flags; int (* lc_unlock ) (struct lock_object*) ;} ;
struct cv {int cv_description; } ;
struct TYPE_2__ {struct lock_object lock_object; } ;


 int CV_ASSERT (struct cv*,struct lock_object*,struct thread*) ;
 int CV_WAITERS_INC (struct cv*) ;
 int DROP_GIANT () ;
 TYPE_1__ Giant ;
 int KASSERT (int,char*) ;
 scalar_t__ KTRPOINT (struct thread*,int ) ;
 int KTR_CSW ;
 int LC_SLEEPABLE ;
 struct lock_class* LOCK_CLASS (struct lock_object*) ;
 int PICKUP_GIANT () ;
 scalar_t__ SCHEDULER_STOPPED_TD (struct thread*) ;
 int SLEEPQ_CONDVAR ;
 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,struct lock_object*,char*,int ) ;
 struct thread* curthread ;
 int cv_wmesg (struct cv*) ;
 int ktrcsw (int,int ,int ) ;
 int sleepq_add (struct cv*,struct lock_object*,int ,int ,int ) ;
 int sleepq_lock (struct cv*) ;
 int sleepq_release (struct cv*) ;
 int sleepq_wait (struct cv*,int ) ;
 int stub1 (struct lock_object*) ;
 int stub2 (struct lock_object*) ;

void
_cv_wait_unlock(struct cv *cvp, struct lock_object *lock)
{
 struct lock_class *class;
 struct thread *td;

 td = curthread;




 CV_ASSERT(cvp, lock, td);
 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, lock,
     "Waiting on \"%s\"", cvp->cv_description);
 KASSERT(lock != &Giant.lock_object,
     ("cv_wait_unlock cannot be used with Giant"));
 class = LOCK_CLASS(lock);

 if (SCHEDULER_STOPPED_TD(td)) {
  class->lc_unlock(lock);
  return;
 }

 sleepq_lock(cvp);

 CV_WAITERS_INC(cvp);
 DROP_GIANT();

 sleepq_add(cvp, lock, cvp->cv_description, SLEEPQ_CONDVAR, 0);
 if (class->lc_flags & LC_SLEEPABLE)
  sleepq_release(cvp);
 class->lc_unlock(lock);
 if (class->lc_flags & LC_SLEEPABLE)
  sleepq_lock(cvp);
 sleepq_wait(cvp, 0);





 PICKUP_GIANT();
}
