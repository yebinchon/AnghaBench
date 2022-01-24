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
struct thread {int /*<<< orphan*/  td_intr_nesting_level; } ;
struct pcpu_state {int /*<<< orphan*/  now; } ;
typedef  int /*<<< orphan*/  sbintime_t ;

/* Variables and functions */
 struct pcpu_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcpu_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcpu_state*) ; 
 int /*<<< orphan*/  curcpu ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  timerstate ; 

void
FUNC8(void)
{
	sbintime_t now;
	struct pcpu_state *state;
	struct thread *td;

	state = FUNC0(timerstate);
	now = FUNC5();
	FUNC1(state);
	state->now = now;
	FUNC4(curcpu);
	FUNC6();
	FUNC2(state);
	td = curthread;
	td->td_intr_nesting_level++;
	FUNC3(state->now, 2);
	td->td_intr_nesting_level--;
	FUNC7();
}