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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int idle_state; } ;

/* Variables and functions */
 int IA32_SPEC_CTRL_IBRS ; 
 int IA32_SPEC_CTRL_SSBD ; 
 int IA32_SPEC_CTRL_STIBP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MSR_IA32_SPEC_CTRL ; 
 int /*<<< orphan*/  MWAIT_INTRBREAK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ STATE_MWAIT ; 
 scalar_t__ STATE_RUNNING ; 
 scalar_t__ STATE_SLEEPING ; 
 scalar_t__ FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ hw_ssb_active ; 
 int /*<<< orphan*/  ibpb_set ; 
 int /*<<< orphan*/  monitorbuf ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

void
FUNC9(uint32_t mwait_hint)
{
	int *state;
	uint64_t v;

	/*
	 * A comment in Linux patch claims that 'CPUs run faster with
	 * speculation protection disabled. All CPU threads in a core
	 * must disable speculation protection for it to be
	 * disabled. Disable it while we are idle so the other
	 * hyperthread can run fast.'
	 *
	 * XXXKIB.  Software coordination mode should be supported,
	 * but all Intel CPUs provide hardware coordination.
	 */

	state = &FUNC2(monitorbuf)->idle_state;
	FUNC0(FUNC3(state) == STATE_SLEEPING,
	    ("cpu_mwait_cx: wrong monitorbuf state"));
	FUNC4(state, STATE_MWAIT);
	if (FUNC1(ibpb_set) || hw_ssb_active) {
		v = FUNC7(MSR_IA32_SPEC_CTRL);
		FUNC8(MSR_IA32_SPEC_CTRL, v & ~(IA32_SPEC_CTRL_IBRS |
		    IA32_SPEC_CTRL_STIBP | IA32_SPEC_CTRL_SSBD));
	} else {
		v = 0;
	}
	FUNC5(state, 0, 0);
	if (FUNC3(state) == STATE_MWAIT)
		FUNC6(MWAIT_INTRBREAK, mwait_hint);

	/*
	 * SSB cannot be disabled while we sleep, or rather, if it was
	 * disabled, the sysctl thread will bind to our cpu to tweak
	 * MSR.
	 */
	if (v != 0)
		FUNC8(MSR_IA32_SPEC_CTRL, v);

	/*
	 * We should exit on any event that interrupts mwait, because
	 * that event might be a wanted interrupt.
	 */
	FUNC4(state, STATE_RUNNING);
}