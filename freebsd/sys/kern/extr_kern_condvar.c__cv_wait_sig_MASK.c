#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct lock_object {int dummy; } ;
struct lock_class {int lc_flags; uintptr_t (* lc_unlock ) (struct lock_object*) ;int /*<<< orphan*/  (* lc_lock ) (struct lock_object*,uintptr_t) ;} ;
struct cv {int /*<<< orphan*/  cv_description; } ;
struct TYPE_3__ {struct lock_object lock_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cv*,struct lock_object*,struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (struct cv*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ Giant ; 
 scalar_t__ FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_CSW ; 
 int LC_SLEEPABLE ; 
 struct lock_class* FUNC4 (struct lock_object*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct thread*) ; 
 int SLEEPQ_CONDVAR ; 
 int SLEEPQ_INTERRUPTIBLE ; 
 int WARN_GIANTOK ; 
 int WARN_SLEEPOK ; 
 int /*<<< orphan*/  FUNC7 (struct lock_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct lock_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,struct lock_object*,char*,int /*<<< orphan*/ ) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC11 (struct cv*) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lock_witness ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct cv*,struct lock_object*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct cv*) ; 
 int /*<<< orphan*/  FUNC16 (struct cv*) ; 
 int FUNC17 (struct cv*,int /*<<< orphan*/ ) ; 
 uintptr_t FUNC18 (struct lock_object*) ; 
 int /*<<< orphan*/  FUNC19 (struct lock_object*,uintptr_t) ; 

int
FUNC20(struct cv *cvp, struct lock_object *lock)
{
	FUNC9(lock_witness);
	struct lock_class *class;
	struct thread *td;
	uintptr_t lock_state;
	int rval;

	td = curthread;
	lock_state = 0;
#ifdef KTRACE
	if (KTRPOINT(td, KTR_CSW))
		ktrcsw(1, 0, cv_wmesg(cvp));
#endif
	FUNC0(cvp, lock, td);
	FUNC10(WARN_GIANTOK | WARN_SLEEPOK, lock,
	    "Waiting on \"%s\"", cvp->cv_description);
	class = FUNC4(lock);

	if (FUNC6(td))
		return (0);

	FUNC15(cvp);

	FUNC1(cvp);
	if (lock == &Giant.lock_object)
		FUNC13(&Giant, MA_OWNED);
	FUNC2();

	FUNC14(cvp, lock, cvp->cv_description, SLEEPQ_CONDVAR |
	    SLEEPQ_INTERRUPTIBLE, 0);
	if (lock != &Giant.lock_object) {
		if (class->lc_flags & LC_SLEEPABLE)
			FUNC16(cvp);
		FUNC8(lock, lock_witness);
		lock_state = class->lc_unlock(lock);
		if (class->lc_flags & LC_SLEEPABLE)
			FUNC15(cvp);
	}
	rval = FUNC17(cvp, 0);

#ifdef KTRACE
	if (KTRPOINT(td, KTR_CSW))
		ktrcsw(0, 0, cv_wmesg(cvp));
#endif
	FUNC5();
	if (lock != &Giant.lock_object) {
		class->lc_lock(lock, lock_state);
		FUNC7(lock, lock_witness);
	}

	return (rval);
}