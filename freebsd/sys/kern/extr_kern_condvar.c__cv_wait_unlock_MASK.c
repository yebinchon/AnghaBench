#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct lock_object {int dummy; } ;
struct lock_class {int lc_flags; int /*<<< orphan*/  (* lc_unlock ) (struct lock_object*) ;} ;
struct cv {int /*<<< orphan*/  cv_description; } ;
struct TYPE_2__ {struct lock_object lock_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cv*,struct lock_object*,struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (struct cv*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ Giant ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_CSW ; 
 int LC_SLEEPABLE ; 
 struct lock_class* FUNC5 (struct lock_object*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  SLEEPQ_CONDVAR ; 
 int WARN_GIANTOK ; 
 int WARN_SLEEPOK ; 
 int /*<<< orphan*/  FUNC8 (int,struct lock_object*,char*,int /*<<< orphan*/ ) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC9 (struct cv*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cv*,struct lock_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cv*) ; 
 int /*<<< orphan*/  FUNC13 (struct cv*) ; 
 int /*<<< orphan*/  FUNC14 (struct cv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct lock_object*) ; 
 int /*<<< orphan*/  FUNC16 (struct lock_object*) ; 

void
FUNC17(struct cv *cvp, struct lock_object *lock)
{
	struct lock_class *class;
	struct thread *td;

	td = curthread;
#ifdef KTRACE
	if (KTRPOINT(td, KTR_CSW))
		ktrcsw(1, 0, cv_wmesg(cvp));
#endif
	FUNC0(cvp, lock, td);
	FUNC8(WARN_GIANTOK | WARN_SLEEPOK, lock,
	    "Waiting on \"%s\"", cvp->cv_description);
	FUNC3(lock != &Giant.lock_object,
	    ("cv_wait_unlock cannot be used with Giant"));
	class = FUNC5(lock);

	if (FUNC7(td)) {
		class->lc_unlock(lock);
		return;
	}

	FUNC12(cvp);

	FUNC1(cvp);
	FUNC2();

	FUNC11(cvp, lock, cvp->cv_description, SLEEPQ_CONDVAR, 0);
	if (class->lc_flags & LC_SLEEPABLE)
		FUNC13(cvp);
	class->lc_unlock(lock);
	if (class->lc_flags & LC_SLEEPABLE)
		FUNC12(cvp);
	FUNC14(cvp, 0);

#ifdef KTRACE
	if (KTRPOINT(td, KTR_CSW))
		ktrcsw(0, 0, cv_wmesg(cvp));
#endif
	FUNC6();
}