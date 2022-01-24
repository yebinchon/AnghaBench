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
struct thread {int dummy; } ;
struct tdq {scalar_t__ tdq_load; int tdq_switchcnt; int tdq_oldswitchcnt; int tdq_cpu_idle; } ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int SWT_IDLE ; 
 int SW_VOL ; 
 scalar_t__ FUNC0 (struct tdq*) ; 
 struct tdq* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ always_steal ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int sched_idlespins ; 
 int sched_idlespinthresh ; 
 scalar_t__ FUNC8 (struct tdq*) ; 
 int /*<<< orphan*/  FUNC9 (struct thread*) ; 
 int /*<<< orphan*/  FUNC10 (struct thread*) ; 

void
FUNC11(void *dummy)
{
	struct thread *td;
	struct tdq *tdq;
	int oldswitchcnt, switchcnt;
	int i;

	FUNC7(&Giant, MA_NOTOWNED);
	td = curthread;
	tdq = FUNC1();
	FUNC2();
	oldswitchcnt = -1;
	for (;;) {
		if (tdq->tdq_load) {
			FUNC9(td);
			FUNC6(SW_VOL | SWT_IDLE, NULL);
			FUNC10(td);
		}
		switchcnt = tdq->tdq_switchcnt + tdq->tdq_oldswitchcnt;
#ifdef SMP
		if (always_steal || switchcnt != oldswitchcnt) {
			oldswitchcnt = switchcnt;
			if (tdq_idled(tdq) == 0)
				continue;
		}
		switchcnt = tdq->tdq_switchcnt + tdq->tdq_oldswitchcnt;
#else
		oldswitchcnt = switchcnt;
#endif
		/*
		 * If we're switching very frequently, spin while checking
		 * for load rather than entering a low power state that 
		 * may require an IPI.  However, don't do any busy
		 * loops while on SMT machines as this simply steals
		 * cycles from cores doing useful work.
		 */
		if (FUNC0(tdq) && switchcnt > sched_idlespinthresh) {
			for (i = 0; i < sched_idlespins; i++) {
				if (tdq->tdq_load)
					break;
				FUNC5();
			}
		}

		/* If there was context switch during spin, restart it. */
		switchcnt = tdq->tdq_switchcnt + tdq->tdq_oldswitchcnt;
		if (tdq->tdq_load != 0 || switchcnt != oldswitchcnt)
			continue;

		/* Run main MD idle handler. */
		tdq->tdq_cpu_idle = 1;
		/*
		 * Make sure that tdq_cpu_idle update is globally visible
		 * before cpu_idle() read tdq_load.  The order is important
		 * to avoid race with tdq_notify.
		 */
		FUNC3();
		/*
		 * Checking for again after the fence picks up assigned
		 * threads often enough to make it worthwhile to do so in
		 * order to avoid calling cpu_idle().
		 */
		if (tdq->tdq_load != 0) {
			tdq->tdq_cpu_idle = 0;
			continue;
		}
		FUNC4(switchcnt * 4 > sched_idlespinthresh);
		tdq->tdq_cpu_idle = 0;

		/*
		 * Account thread-less hardware interrupts and
		 * other wakeup reasons equal to context switches.
		 */
		switchcnt = tdq->tdq_switchcnt + tdq->tdq_oldswitchcnt;
		if (switchcnt != oldswitchcnt)
			continue;
		tdq->tdq_switchcnt++;
		oldswitchcnt++;
	}
}