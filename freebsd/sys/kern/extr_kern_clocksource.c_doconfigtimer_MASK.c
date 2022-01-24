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
struct pcpu_state {int /*<<< orphan*/  handle; int /*<<< orphan*/  action; } ;
typedef  int /*<<< orphan*/  sbintime_t ;

/* Variables and functions */
 struct pcpu_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcpu_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcpu_state*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  busy ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  timerstate ; 

__attribute__((used)) static int
FUNC10(void)
{
	sbintime_t now;
	struct pcpu_state *state;

	state = FUNC0(timerstate);
	switch (FUNC3(&state->action)) {
	case 1:
		now = FUNC9();
		FUNC1(state);
		FUNC8(now, 1);
		FUNC2(state);
		state->handle = 0;
		FUNC5(&state->action, 0);
		return (1);
	case 2:
		FUNC1(state);
		FUNC6(timer);
		FUNC2(state);
		state->handle = 0;
		FUNC5(&state->action, 0);
		return (1);
	}
	if (FUNC4(&state->handle) && !busy) {
		now = FUNC9();
		FUNC7(now, 0);
		return (1);
	}
	return (0);
}