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
typedef  int /*<<< orphan*/  sbintime_t ;
struct TYPE_2__ {int idle_state; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATE_RUNNING ; 
 int /*<<< orphan*/  STATE_SLEEPING ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  monitorbuf ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static void
FUNC6(sbintime_t sbt)
{
	int *state;

	state = &FUNC0(monitorbuf)->idle_state;
	FUNC2(state, STATE_SLEEPING);

	/*
	 * Since we may be in a critical section from cpu_idle(), if
	 * an interrupt fires during that critical section we may have
	 * a pending preemption.  If the CPU halts, then that thread
	 * may not execute until a later interrupt awakens the CPU.
	 * To handle this race, check for a runnable thread after
	 * disabling interrupts and immediately return if one is
	 * found.  Also, we must absolutely guarentee that hlt is
	 * the next instruction after sti.  This ensures that any
	 * interrupt that fires after the call to disable_intr() will
	 * immediately awaken the CPU from hlt.  Finally, please note
	 * that on x86 this works fine because of interrupts enabled only
	 * after the instruction following sti takes place, while IF is set
	 * to 1 immediately, allowing hlt instruction to acknowledge the
	 * interrupt.
	 */
	FUNC3();
	if (FUNC5())
		FUNC4();
	else
		FUNC1();
	FUNC2(state, STATE_RUNNING);
}