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
struct evdev_dev {TYPE_1__* ev_absinfo; int /*<<< orphan*/  ev_abs_flags; int /*<<< orphan*/  ev_prop_flags; } ;
typedef  size_t int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  resolution; int /*<<< orphan*/  flat; int /*<<< orphan*/  fuzz; int /*<<< orphan*/  maximum; int /*<<< orphan*/  minimum; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  EV_KEY ; 
 size_t INPUT_PROP_DIRECT ; 
 scalar_t__ FUNC0 (struct evdev_dev*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 size_t** evdev_mtstmap ; 
 int /*<<< orphan*/  FUNC2 (struct evdev_dev*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evdev_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct evdev_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct evdev_dev*,scalar_t__) ; 
 size_t FUNC6 (size_t**) ; 

void
FUNC7(struct evdev_dev *evdev)
{
	int32_t i;

	if (evdev->ev_absinfo == NULL)
		return;

	FUNC3(evdev, EV_KEY);
	FUNC4(evdev, BTN_TOUCH);

	/* Touchscreens should not advertise tap tool capabilities */
	if (!FUNC1(evdev->ev_prop_flags, INPUT_PROP_DIRECT))
		FUNC5(evdev, FUNC0(evdev) + 1);

	/* Echo 0-th MT-slot as ST-slot */
	for (i = 0; i < FUNC6(evdev_mtstmap); i++)
		if (FUNC1(evdev->ev_abs_flags, evdev_mtstmap[i][0]))
			FUNC2(evdev, evdev_mtstmap[i][1],
			    evdev->ev_absinfo[evdev_mtstmap[i][0]].value,
			    evdev->ev_absinfo[evdev_mtstmap[i][0]].minimum,
			    evdev->ev_absinfo[evdev_mtstmap[i][0]].maximum,
			    evdev->ev_absinfo[evdev_mtstmap[i][0]].fuzz,
			    evdev->ev_absinfo[evdev_mtstmap[i][0]].flat,
			    evdev->ev_absinfo[evdev_mtstmap[i][0]].resolution);
}