#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct thread {int /*<<< orphan*/  td_name; TYPE_1__* td_proc; int /*<<< orphan*/  td_tid; } ;
struct lock_object {int dummy; } ;
struct lock_class {uintptr_t (* lc_unlock ) (struct lock_object*) ;int lc_flags; int /*<<< orphan*/  (* lc_lock ) (struct lock_object*,uintptr_t) ;} ;
typedef  int /*<<< orphan*/  sbintime_t ;
struct TYPE_6__ {struct lock_object lock_object; } ;
struct TYPE_5__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ Giant ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_CSW ; 
 int /*<<< orphan*/  KTR_PROC ; 
 int LC_SLEEPABLE ; 
 struct lock_class* FUNC4 (struct lock_object*) ; 
 int MAXCPU ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int PCATCH ; 
 int PDROP ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int PRIMASK ; 
 scalar_t__ FUNC6 (struct thread*) ; 
 int SLEEPQ_INTERRUPTIBLE ; 
 int SLEEPQ_PAUSE ; 
 int SLEEPQ_SLEEP ; 
 int FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*) ; 
 int WARN_GIANTOK ; 
 int WARN_SLEEPOK ; 
 int /*<<< orphan*/  FUNC9 (struct lock_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct lock_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,struct lock_object*,char*,char const*) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  lock_witness ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/ * pause_wchan ; 
 int /*<<< orphan*/  FUNC16 (void*,struct lock_object*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 
 int /*<<< orphan*/  FUNC19 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (void*,int) ; 
 int FUNC21 (void*,int) ; 
 int /*<<< orphan*/  FUNC22 (void*,int) ; 
 int FUNC23 (void*,int) ; 
 uintptr_t FUNC24 (struct lock_object*) ; 
 uintptr_t FUNC25 (struct lock_object*) ; 
 uintptr_t FUNC26 (struct lock_object*) ; 
 int /*<<< orphan*/  FUNC27 (struct lock_object*,uintptr_t) ; 

int
FUNC28(void *ident, struct lock_object *lock, int priority,
    const char *wmesg, sbintime_t sbt, sbintime_t pr, int flags)
{
	struct thread *td;
	struct lock_class *class;
	uintptr_t lock_state;
	int catch, pri, rval, sleepq_flags;
	FUNC11(lock_witness);

	td = curthread;
#ifdef KTRACE
	if (KTRPOINT(td, KTR_CSW))
		ktrcsw(1, 0, wmesg);
#endif
	FUNC12(WARN_GIANTOK | WARN_SLEEPOK, lock,
	    "Sleeping on \"%s\"", wmesg);
	FUNC2(sbt != 0 || FUNC15(&Giant) || lock != NULL,
	    ("sleeping without a lock"));
	FUNC2(ident != NULL, ("_sleep: NULL ident"));
	FUNC2(FUNC7(td), ("_sleep: curthread not running"));
	if (priority & PDROP)
		FUNC2(lock != NULL && lock != &Giant.lock_object,
		    ("PDROP requires a non-Giant lock"));
	if (lock != NULL)
		class = FUNC4(lock);
	else
		class = NULL;

	if (FUNC6(td)) {
		if (lock != NULL && priority & PDROP)
			class->lc_unlock(lock);
		return (0);
	}
	catch = priority & PCATCH;
	pri = priority & PRIMASK;

	FUNC2(!FUNC8(td), ("recursive sleep"));

	if ((uint8_t *)ident >= &pause_wchan[0] &&
	    (uint8_t *)ident <= &pause_wchan[MAXCPU - 1])
		sleepq_flags = SLEEPQ_PAUSE;
	else
		sleepq_flags = SLEEPQ_SLEEP;
	if (catch)
		sleepq_flags |= SLEEPQ_INTERRUPTIBLE;

	FUNC17(ident);
	FUNC0(KTR_PROC, "sleep: thread %ld (pid %ld, %s) on %s (%p)",
	    td->td_tid, td->td_proc->p_pid, td->td_name, wmesg, ident);

	if (lock == &Giant.lock_object)
		FUNC14(&Giant, MA_OWNED);
	FUNC1();
	if (lock != NULL && lock != &Giant.lock_object &&
	    !(class->lc_flags & LC_SLEEPABLE)) {
		FUNC10(lock, lock_witness);
		lock_state = class->lc_unlock(lock);
	} else
		/* GCC needs to follow the Yellow Brick Road */
		lock_state = -1;

	/*
	 * We put ourselves on the sleep queue and start our timeout
	 * before calling thread_suspend_check, as we could stop there,
	 * and a wakeup or a SIGCONT (or both) could occur while we were
	 * stopped without resuming us.  Thus, we must be ready for sleep
	 * when cursig() is called.  If the wakeup happens while we're
	 * stopped, then td will no longer be on a sleep queue upon
	 * return from cursig().
	 */
	FUNC16(ident, lock, wmesg, sleepq_flags, 0);
	if (sbt != 0)
		FUNC19(ident, sbt, pr, flags);
	if (lock != NULL && class->lc_flags & LC_SLEEPABLE) {
		FUNC18(ident);
		FUNC10(lock, lock_witness);
		lock_state = class->lc_unlock(lock);
		FUNC17(ident);
	}
	if (sbt != 0 && catch)
		rval = FUNC21(ident, pri);
	else if (sbt != 0)
		rval = FUNC20(ident, pri);
	else if (catch)
		rval = FUNC23(ident, pri);
	else {
		FUNC22(ident, pri);
		rval = 0;
	}
#ifdef KTRACE
	if (KTRPOINT(td, KTR_CSW))
		ktrcsw(0, 0, wmesg);
#endif
	FUNC5();
	if (lock != NULL && lock != &Giant.lock_object && !(priority & PDROP)) {
		class->lc_lock(lock, lock_state);
		FUNC9(lock, lock_witness);
	}
	return (rval);
}