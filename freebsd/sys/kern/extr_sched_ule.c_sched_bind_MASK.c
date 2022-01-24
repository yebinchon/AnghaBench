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
struct td_sched {int ts_flags; int ts_cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MA_NOTRECURSED ; 
 int MA_OWNED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_VOL ; 
 int FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int) ; 
 int TSF_BOUND ; 
 int /*<<< orphan*/  cpuid ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 
 struct td_sched* FUNC7 (struct thread*) ; 

void
FUNC8(struct thread *td, int cpu)
{
	struct td_sched *ts;

	FUNC3(td, MA_OWNED|MA_NOTRECURSED);
	FUNC0(td == curthread, ("sched_bind: can only bind curthread"));
	ts = FUNC7(td);
	if (ts->ts_flags & TSF_BOUND)
		FUNC6(td);
	FUNC0(FUNC2(td), ("%p must be migratable", td));
	ts->ts_flags |= TSF_BOUND;
	FUNC5();
	if (FUNC1(cpuid) == cpu)
		return;
	ts->ts_cpu = cpu;
	/* When we return from mi_switch we'll be on the correct cpu. */
	FUNC4(SW_VOL, NULL);
}