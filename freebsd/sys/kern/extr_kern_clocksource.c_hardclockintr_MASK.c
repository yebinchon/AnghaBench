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
typedef  int /*<<< orphan*/  u_int ;
struct pcpu_state {int now; } ;
typedef  int sbintime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct pcpu_state* FUNC1 (int /*<<< orphan*/ ) ; 
 int FILTER_HANDLED ; 
 int FILTER_STRAY ; 
 int /*<<< orphan*/  KTR_SPARE2 ; 
 scalar_t__ busy ; 
 int /*<<< orphan*/  curcpu ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timerstate ; 

int
FUNC4(void)
{
	sbintime_t now;
	struct pcpu_state *state;
	int done;

	if (FUNC2() || busy)
		return (FILTER_HANDLED);
	state = FUNC1(timerstate);
	now = state->now;
	FUNC0(KTR_SPARE2, "ipi  at %d:    now  %d.%08x",
	    curcpu, (int)(now >> 32), (u_int)(now & 0xffffffff));
	done = FUNC3(now, 0);
	return (done ? FILTER_HANDLED : FILTER_STRAY);
}