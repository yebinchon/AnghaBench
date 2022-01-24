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
struct thread {int /*<<< orphan*/  td_intr_nesting_level; } ;
struct pcpu_state {scalar_t__ idle; int now; } ;
typedef  int sbintime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct pcpu_state* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_SPARE2 ; 
 scalar_t__ busy ; 
 int /*<<< orphan*/  curcpu ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ periodic ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  timerstate ; 

void
FUNC6(void)
{
	sbintime_t now;
	struct pcpu_state *state;
	struct thread *td;

	state = FUNC1(timerstate);
	if (state->idle == 0 || busy)
		return;
	if (periodic)
		now = state->now;
	else
		now = FUNC3();
	FUNC0(KTR_SPARE2, "active at %d:  now  %d.%08x",
	    curcpu, (int)(now >> 32), (u_int)(now & 0xffffffff));
	FUNC4();
	td = curthread;
	td->td_intr_nesting_level++;
	FUNC2(now, 1);
	td->td_intr_nesting_level--;
	FUNC5();
}