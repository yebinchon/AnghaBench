#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_int ;
struct pcpu_state {int nexttick; } ;
typedef  int sbintime_t ;
struct TYPE_3__ {int et_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct pcpu_state* FUNC2 (int /*<<< orphan*/ ) ; 
 int ET_FLAGS_PERCPU ; 
 int /*<<< orphan*/  KTR_SPARE2 ; 
 int /*<<< orphan*/  curcpu ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int FUNC4 () ; 
 int nexttick ; 
 scalar_t__ periodic ; 
 TYPE_1__* timer ; 
 int timerperiod ; 
 int /*<<< orphan*/  timerstate ; 

__attribute__((used)) static void
FUNC5(sbintime_t now, int start)
{
	struct pcpu_state *state;
	sbintime_t new;
	sbintime_t *next;
	uint64_t tmp;
	int eq;

	if (timer->et_flags & ET_FLAGS_PERCPU) {
		state = FUNC2(timerstate);
		next = &state->nexttick;
	} else
		next = &nexttick;
	if (periodic) {
		if (start) {
			/*
			 * Try to start all periodic timers aligned
			 * to period to make events synchronous.
			 */
			tmp = now % timerperiod;
			new = timerperiod - tmp;
			if (new < tmp)		/* Left less then passed. */
				new += timerperiod;
			FUNC1(KTR_SPARE2, "load p at %d:   now %d.%08x first in %d.%08x",
			    curcpu, (int)(now >> 32), (u_int)(now & 0xffffffff),
			    (int)(new >> 32), (u_int)(new & 0xffffffff));
			*next = new + now;
			FUNC3(timer, new, timerperiod);
		}
	} else {
		new = FUNC4();
		eq = (new == *next);
		FUNC0(KTR_SPARE2, "load at %d:    next %d.%08x eq %d",
		    curcpu, (int)(new >> 32), (u_int)(new & 0xffffffff), eq);
		if (!eq) {
			*next = new;
			FUNC3(timer, new - now, 0);
		}
	}
}