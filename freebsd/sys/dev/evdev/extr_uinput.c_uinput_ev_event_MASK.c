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
typedef  scalar_t__ uint16_t ;
struct uinput_cdev_state {scalar_t__ ucs_state; } ;
struct evdev_dev {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ EV_LED ; 
 int /*<<< orphan*/  FUNC0 (struct uinput_cdev_state*) ; 
 scalar_t__ UINPUT_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct uinput_cdev_state*) ; 
 struct uinput_cdev_state* FUNC2 (struct evdev_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct evdev_dev*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uinput_cdev_state*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uinput_cdev_state*) ; 

__attribute__((used)) static void
FUNC6(struct evdev_dev *evdev, uint16_t type, uint16_t code,
    int32_t value)
{
	struct uinput_cdev_state *state = FUNC2(evdev);

	if (type == EV_LED)
		FUNC3(evdev, type, code, value);

	FUNC0(state);
	if (state->ucs_state == UINPUT_RUNNING) {
		FUNC4(state, type, code, value);
		FUNC5(state);
	}
	FUNC1(state);
}