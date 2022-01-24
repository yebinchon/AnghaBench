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
struct uinput_cdev_state {int /*<<< orphan*/  ucs_lock; TYPE_1__ ucs_selp; int /*<<< orphan*/  ucs_evdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_EVDEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void *data)
{
	struct uinput_cdev_state *state = (struct uinput_cdev_state *)data;

	FUNC0(state->ucs_evdev);

	FUNC2(&state->ucs_selp.si_note, 0);
	FUNC4(&state->ucs_selp);
	FUNC3(&state->ucs_selp.si_note);
	FUNC5(&state->ucs_lock);
	FUNC1(data, M_EVDEV);
}