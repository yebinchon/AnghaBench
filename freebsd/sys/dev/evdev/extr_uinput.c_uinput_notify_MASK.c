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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct uinput_cdev_state {int ucs_blocked; int ucs_selected; TYPE_1__ ucs_selp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uinput_cdev_state*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct uinput_cdev_state*) ; 

__attribute__((used)) static void
FUNC4(struct uinput_cdev_state *state)
{

	FUNC1(state);

	if (state->ucs_blocked) {
		state->ucs_blocked = false;
		FUNC3(state);
	}
	if (state->ucs_selected) {
		state->ucs_selected = false;
		FUNC2(&state->ucs_selp);
	}
	FUNC0(&state->ucs_selp.si_note, 0);
}