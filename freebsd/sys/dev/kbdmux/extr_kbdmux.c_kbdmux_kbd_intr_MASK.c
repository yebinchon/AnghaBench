#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ kb_data; } ;
typedef  TYPE_1__ keyboard_t ;
struct TYPE_7__ {int /*<<< orphan*/  ks_task; int /*<<< orphan*/  ks_flags; } ;
typedef  TYPE_2__ kbdmux_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  TASK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(void *xkbd, int pending)
{
	keyboard_t	*kbd = (keyboard_t *) xkbd;
	kbdmux_state_t	*state = (kbdmux_state_t *) kbd->kb_data;

	FUNC2(kbd, NULL);

	FUNC0(state);

	state->ks_flags &= ~TASK;
	FUNC3(&state->ks_task);

	FUNC1(state);
}