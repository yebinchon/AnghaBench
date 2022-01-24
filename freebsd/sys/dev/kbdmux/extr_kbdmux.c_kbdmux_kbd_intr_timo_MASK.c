#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ ks_inq_length; int ks_flags; int /*<<< orphan*/  ks_timo; } ;
typedef  TYPE_1__ kbdmux_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int TASK ; 
 int /*<<< orphan*/  TICKS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),TYPE_1__*) ; 

void
FUNC6(void *xstate)
{
	kbdmux_state_t	*state = (kbdmux_state_t *) xstate;

	FUNC0(state, MA_OWNED);

	if (FUNC4(&state->ks_timo))
		return; /* callout was reset */

	if (!FUNC2(&state->ks_timo))
		return; /* callout was stopped */

	FUNC3(&state->ks_timo);

	/* queue interrupt task if needed */
	if (state->ks_inq_length > 0 && !(state->ks_flags & TASK) &&
	    FUNC1(state) == 0)
		state->ks_flags |= TASK;

	/* re-schedule timeout */
	FUNC5(&state->ks_timo, TICKS, kbdmux_kbd_intr_timo, state);
}