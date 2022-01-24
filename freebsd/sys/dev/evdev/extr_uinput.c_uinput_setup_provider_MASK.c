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
struct uinput_user_dev {int /*<<< orphan*/ * absflat; int /*<<< orphan*/ * absfuzz; int /*<<< orphan*/ * absmax; int /*<<< orphan*/ * absmin; int /*<<< orphan*/  ff_effects_max; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct uinput_cdev_state {TYPE_1__* ucs_evdev; } ;
struct input_absinfo {int /*<<< orphan*/  flat; int /*<<< orphan*/  fuzz; int /*<<< orphan*/  maximum; int /*<<< orphan*/  minimum; } ;
struct TYPE_2__ {int /*<<< orphan*/  ev_abs_flags; } ;

/* Variables and functions */
 int ABS_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_absinfo*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uinput_cdev_state*,char*,struct uinput_user_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,struct input_absinfo*) ; 
 int FUNC4 (struct uinput_cdev_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uinput_cdev_state *state,
    struct uinput_user_dev *udev)
{
	struct input_absinfo absinfo;
	int i, ret;

	FUNC2(state, "setup_provider called, udev=%p", udev);

	ret = FUNC4(state, &udev->id, udev->name,
	    udev->ff_effects_max);
	if (ret)
		return (ret);

	FUNC1(&absinfo, sizeof(struct input_absinfo));
	for (i = 0; i < ABS_CNT; i++) {
		if (!FUNC0(state->ucs_evdev->ev_abs_flags, i))
			continue;

		absinfo.minimum = udev->absmin[i];
		absinfo.maximum = udev->absmax[i];
		absinfo.fuzz = udev->absfuzz[i];
		absinfo.flat = udev->absflat[i];
		FUNC3(state->ucs_evdev, i, &absinfo);
	}

	return (0);
}