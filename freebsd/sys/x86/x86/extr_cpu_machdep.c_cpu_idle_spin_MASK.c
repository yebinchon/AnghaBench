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
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  monitorbuf ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void
FUNC4(sbintime_t sbt)
{
	int *state;
	int i;

	state = &FUNC0(monitorbuf)->idle_state;
	FUNC1(state, STATE_RUNNING);

	/*
	 * The sched_runnable() call is racy but as long as there is
	 * a loop missing it one time will have just a little impact if any 
	 * (and it is much better than missing the check at all).
	 */
	for (i = 0; i < 1000; i++) {
		if (FUNC3())
			return;
		FUNC2();
	}
}