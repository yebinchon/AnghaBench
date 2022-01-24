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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  monitorbuf ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static void
FUNC7(sbintime_t sbt)
{
	int *state;

	state = &FUNC0(monitorbuf)->idle_state;
	FUNC2(state, STATE_SLEEPING);

	/* See comments in cpu_idle_hlt(). */
	FUNC4();
	if (FUNC6())
		FUNC5();
	else if (&cpu_idle_hook)
		FUNC3(sbt);
	else
		FUNC1();
	FUNC2(state, STATE_RUNNING);
}