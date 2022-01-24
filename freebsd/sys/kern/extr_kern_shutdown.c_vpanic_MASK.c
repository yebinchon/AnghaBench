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
typedef  int /*<<< orphan*/  va_list ;
struct thread {int td_stopsched; int /*<<< orphan*/  td_flags; } ;
typedef  int intmax_t ;
typedef  int /*<<< orphan*/  cpuset_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KDB_WHY_PANIC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int RB_AUTOBOOT ; 
 int RB_DUMP ; 
 int RB_NOSYNC ; 
 int RB_POWERCYCLE ; 
 int RB_POWEROFF ; 
 int /*<<< orphan*/  TDF_INPANIC ; 
 int /*<<< orphan*/  all_cpus ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  cpuid ; 
 struct thread* curthread ; 
 scalar_t__ debugger_on_panic ; 
 int /*<<< orphan*/  kdb_active ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 char const* panicstr ; 
 scalar_t__ powercycle_on_panic ; 
 scalar_t__ poweroff_on_panic ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sync_on_panic ; 
 scalar_t__ time_second ; 
 scalar_t__ trace_all_panics ; 
 scalar_t__ trace_on_panic ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char const*,int /*<<< orphan*/ ) ; 

void
FUNC11(const char *fmt, va_list ap)
{
#ifdef SMP
	cpuset_t other_cpus;
#endif
	struct thread *td = curthread;
	int bootopt, newpanic;
	static char buf[256];

	FUNC7();

#ifdef SMP
	/*
	 * stop_cpus_hard(other_cpus) should prevent multiple CPUs from
	 * concurrently entering panic.  Only the winner will proceed
	 * further.
	 */
	if (panicstr == NULL && !kdb_active) {
		other_cpus = all_cpus;
		CPU_CLR(PCPU_GET(cpuid), &other_cpus);
		stop_cpus_hard(other_cpus);
	}
#endif

	/*
	 * Ensure that the scheduler is stopped while panicking, even if panic
	 * has been entered from kdb.
	 */
	td->td_stopsched = 1;

	bootopt = RB_AUTOBOOT;
	newpanic = 0;
	if (panicstr)
		bootopt |= RB_NOSYNC;
	else {
		bootopt |= RB_DUMP;
		panicstr = fmt;
		newpanic = 1;
	}

	if (newpanic) {
		(void)FUNC10(buf, sizeof(buf), fmt, ap);
		panicstr = buf;
		FUNC2();
		FUNC6("panic: %s\n", buf);
	} else {
		FUNC6("panic: ");
		FUNC9(fmt, ap);
		FUNC6("\n");
	}
#ifdef SMP
	printf("cpuid = %d\n", PCPU_GET(cpuid));
#endif
	FUNC6("time = %jd\n", (intmax_t )time_second);
#ifdef KDB
	if ((newpanic || trace_all_panics) && trace_on_panic)
		kdb_backtrace();
	if (debugger_on_panic)
		kdb_enter(KDB_WHY_PANIC, "panic");
#endif
	/*thread_lock(td); */
	td->td_flags |= TDF_INPANIC;
	/* thread_unlock(td); */
	if (!sync_on_panic)
		bootopt |= RB_NOSYNC;
	if (poweroff_on_panic)
		bootopt |= RB_POWEROFF;
	if (powercycle_on_panic)
		bootopt |= RB_POWERCYCLE;
	FUNC5(bootopt);
}