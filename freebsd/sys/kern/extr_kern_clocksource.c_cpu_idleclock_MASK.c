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
typedef  int /*<<< orphan*/  u_int ;
struct pcpu_state {int now; int idle; int nextevent; } ;
typedef  int sbintime_t ;
struct TYPE_2__ {int et_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 struct pcpu_state* FUNC2 (int /*<<< orphan*/ ) ; 
 int ET_FLAGS_PERCPU ; 
 int /*<<< orphan*/  FUNC3 (struct pcpu_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcpu_state*) ; 
 int /*<<< orphan*/  KTR_SPARE2 ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ busy ; 
 scalar_t__ curcpu ; 
 int FUNC6 (int) ; 
 scalar_t__ idletick ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ periodic ; 
 int FUNC8 () ; 
 TYPE_1__* timer ; 
 int /*<<< orphan*/  timerstate ; 

sbintime_t
FUNC9(void)
{
	sbintime_t now, t;
	struct pcpu_state *state;

	if (idletick || busy ||
	    (periodic && (timer->et_flags & ET_FLAGS_PERCPU))
#ifdef DEVICE_POLLING
	    || curcpu == CPU_FIRST()
#endif
	    )
		return (-1);
	state = FUNC2(timerstate);
	if (periodic)
		now = state->now;
	else
		now = FUNC8();
	FUNC1(KTR_SPARE2, "idle at %d:    now  %d.%08x",
	    curcpu, (int)(now >> 32), (u_int)(now & 0xffffffff));
	t = FUNC6(1);
	FUNC3(state);
	state->idle = 1;
	state->nextevent = t;
	if (!periodic)
		FUNC7(now, 0);
	FUNC4(state);
	return (FUNC5(t - now, 0));
}