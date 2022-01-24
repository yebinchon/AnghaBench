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
struct thread {int /*<<< orphan*/  td_flags; } ;
struct td_sched {int /*<<< orphan*/ * ts_runq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MA_NOTRECURSED ; 
 int MA_OWNED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_VOL ; 
 int /*<<< orphan*/  TDF_BOUND ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int) ; 
 int /*<<< orphan*/  cpuid ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * runq_pcpu ; 
 struct td_sched* FUNC4 (struct thread*) ; 

void
FUNC5(struct thread *td, int cpu)
{
	struct td_sched *ts;

	FUNC2(td, MA_OWNED|MA_NOTRECURSED);
	FUNC0(td == curthread, ("sched_bind: can only bind curthread"));

	ts = FUNC4(td);

	td->td_flags |= TDF_BOUND;
#ifdef SMP
	ts->ts_runq = &runq_pcpu[cpu];
	if (PCPU_GET(cpuid) == cpu)
		return;

	mi_switch(SW_VOL, NULL);
#endif
}