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
struct thread {int /*<<< orphan*/  td_name; TYPE_1__* td_proc; int /*<<< orphan*/  td_tid; } ;
struct mtx {int /*<<< orphan*/  lock_object; } ;
typedef  int /*<<< orphan*/  sbintime_t ;
struct TYPE_2__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_CSW ; 
 int /*<<< orphan*/  KTR_PROC ; 
 int MA_NOTRECURSED ; 
 int MA_OWNED ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct thread*) ; 
 int /*<<< orphan*/  SLEEPQ_SLEEP ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 
 int WARN_GIANTOK ; 
 int WARN_SLEEPOK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct mtx*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct mtx*) ; 
 int /*<<< orphan*/  FUNC9 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *,char*,char const*) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct mtx*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC14 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC15 (void*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 int /*<<< orphan*/  FUNC18 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (void*,int /*<<< orphan*/ ) ; 

int
FUNC21(void *ident, struct mtx *mtx, const char *wmesg,
    sbintime_t sbt, sbintime_t pr, int flags)
{
	struct thread *td;
	int rval;
	FUNC9(mtx);

	td = curthread;
	FUNC2(mtx != NULL, ("sleeping without a mutex"));
	FUNC2(ident != NULL, ("msleep_spin_sbt: NULL ident"));
	FUNC2(FUNC6(td), ("msleep_spin_sbt: curthread not running"));

	if (FUNC5(td))
		return (0);

	FUNC16(ident);
	FUNC0(KTR_PROC, "msleep_spin: thread %ld (pid %ld, %s) on %s (%p)",
	    td->td_tid, td->td_proc->p_pid, td->td_name, wmesg, ident);

	FUNC1();
	FUNC12(mtx, MA_OWNED | MA_NOTRECURSED);
	FUNC8(&mtx->lock_object, mtx);
	FUNC14(mtx);

	/*
	 * We put ourselves on the sleep queue and start our timeout.
	 */
	FUNC15(ident, &mtx->lock_object, wmesg, SLEEPQ_SLEEP, 0);
	if (sbt != 0)
		FUNC18(ident, sbt, pr, flags);

	/*
	 * Can't call ktrace with any spin locks held so it can lock the
	 * ktrace_mtx lock, and WITNESS_WARN considers it an error to hold
	 * any spin lock.  Thus, we have to drop the sleepq spin lock while
	 * we handle those requests.  This is safe since we have placed our
	 * thread on the sleep queue already.
	 */
#ifdef KTRACE
	if (KTRPOINT(td, KTR_CSW)) {
		sleepq_release(ident);
		ktrcsw(1, 0, wmesg);
		sleepq_lock(ident);
	}
#endif
#ifdef WITNESS
	sleepq_release(ident);
	WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, NULL, "Sleeping on \"%s\"",
	    wmesg);
	sleepq_lock(ident);
#endif
	if (sbt != 0)
		rval = FUNC19(ident, 0);
	else {
		FUNC20(ident, 0);
		rval = 0;
	}
#ifdef KTRACE
	if (KTRPOINT(td, KTR_CSW))
		ktrcsw(0, 0, wmesg);
#endif
	FUNC4();
	FUNC13(mtx);
	FUNC7(&mtx->lock_object, mtx);
	return (rval);
}