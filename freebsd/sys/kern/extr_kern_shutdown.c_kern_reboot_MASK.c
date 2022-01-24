#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int RB_DUMP ; 
 int RB_HALT ; 
 int RB_NOSYNC ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  cold ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dumping ; 
 scalar_t__ kdb_active ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int rebooting ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  show_busybufs ; 
 int /*<<< orphan*/  shutdown_final ; 
 int /*<<< orphan*/  shutdown_post_sync ; 
 int /*<<< orphan*/  shutdown_pre_sync ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void
FUNC14(int howto)
{
	static int once = 0;

	/*
	 * Normal paths here don't hold Giant, but we can wind up here
	 * unexpectedly with it held.  Drop it now so we don't have to
	 * drop and pick it up elsewhere. The paths it is locking will
	 * never be returned to, and it is preferable to preclude
	 * deadlock than to lock against code that won't ever
	 * continue.
	 */
	while (FUNC8(&Giant))
		FUNC9(&Giant);

#if defined(SMP)
	/*
	 * Bind us to the first CPU so that all shutdown code runs there.  Some
	 * systems don't shutdown properly (i.e., ACPI power off) if we
	 * run on another processor.
	 */
	if (!SCHEDULER_STOPPED()) {
		thread_lock(curthread);
		sched_bind(curthread, CPU_FIRST());
		thread_unlock(curthread);
		KASSERT(PCPU_GET(cpuid) == CPU_FIRST(),
		    ("boot: not running on cpu 0"));
	}
#endif
	/* We're in the process of rebooting. */
	rebooting = 1;

	/* We are out of the debugger now. */
	kdb_active = 0;

	/*
	 * Do any callouts that should be done BEFORE syncing the filesystems.
	 */
	FUNC1(shutdown_pre_sync, howto);

	/* 
	 * Now sync filesystems
	 */
	if (!cold && (howto & RB_NOSYNC) == 0 && once == 0) {
		once = 1;
		FUNC5(show_busybufs);
	}

	FUNC10();

	FUNC6();

	/*
	 * Ok, now do things that assume all filesystem activity has
	 * been completed.
	 */
	FUNC1(shutdown_post_sync, howto);

	if ((howto & (RB_HALT|RB_DUMP)) == RB_DUMP && !cold && !dumping) 
		FUNC7(TRUE);

	/* Now that we're going to really halt the system... */
	FUNC1(shutdown_final, howto);

	for(;;) ;	/* safety against shutdown_reset not working */
	/* NOTREACHED */
}