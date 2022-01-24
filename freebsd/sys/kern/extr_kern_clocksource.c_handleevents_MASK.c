#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct trapframe {int dummy; } ;
struct pcpu_state {int nexthard; int nextstat; int nextprof; int nextcallopt; int nextcall; int nextevent; scalar_t__ idle; } ;
typedef  int sbintime_t ;
struct TYPE_4__ {struct trapframe* td_intr_frame; } ;
struct TYPE_3__ {int et_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int ET_FLAGS_PERCPU ; 
 int /*<<< orphan*/  FUNC2 (struct pcpu_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcpu_state*) ; 
 int /*<<< orphan*/  KTR_SPARE2 ; 
 int SBT_MAX ; 
 int /*<<< orphan*/  FUNC4 (struct trapframe*) ; 
 int FUNC5 (struct trapframe*) ; 
 int /*<<< orphan*/  busy ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  curcpu ; 
 TYPE_2__* curthread ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  hardclocktime ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ profiling ; 
 int profperiod ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int statperiod ; 
 int tick_sbt ; 
 TYPE_1__* timer ; 
 int /*<<< orphan*/  timerstate ; 

__attribute__((used)) static int
FUNC12(sbintime_t now, int fake)
{
	sbintime_t t, *hct;
	struct trapframe *frame;
	struct pcpu_state *state;
	int usermode;
	int done, runs;

	FUNC0(KTR_SPARE2, "handle at %d:  now  %d.%08x",
	    curcpu, (int)(now >> 32), (u_int)(now & 0xffffffff));
	done = 0;
	if (fake) {
		frame = NULL;
		usermode = 0;
	} else {
		frame = curthread->td_intr_frame;
		usermode = FUNC5(frame);
	}

	state = FUNC1(timerstate);

	runs = 0;
	while (now >= state->nexthard) {
		state->nexthard += tick_sbt;
		runs++;
	}
	if (runs) {
		hct = FUNC1(hardclocktime);
		*hct = state->nexthard - tick_sbt;
		if (fake < 2) {
			FUNC8(runs, usermode);
			done = 1;
		}
	}
	runs = 0;
	while (now >= state->nextstat) {
		state->nextstat += statperiod;
		runs++;
	}
	if (runs && fake < 2) {
		FUNC11(runs, usermode);
		done = 1;
	}
	if (profiling) {
		runs = 0;
		while (now >= state->nextprof) {
			state->nextprof += profperiod;
			runs++;
		}
		if (runs && !fake) {
			FUNC10(runs, usermode, FUNC4(frame));
			done = 1;
		}
	} else
		state->nextprof = state->nextstat;
	if (now >= state->nextcallopt || now >= state->nextcall) {
		state->nextcall = state->nextcallopt = SBT_MAX;
		FUNC6(now);
	}

	t = FUNC7(0);
	FUNC2(state);
	if (!busy) {
		state->idle = 0;
		state->nextevent = t;
		FUNC9(now, (fake == 2) &&
		    (timer->et_flags & ET_FLAGS_PERCPU));
	}
	FUNC3(state);
	return (done);
}