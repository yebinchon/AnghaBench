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
struct evdev_dev {int /*<<< orphan*/  ev_prop_flags; int /*<<< orphan*/  ev_abs_flags; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_TRACKING_ID ; 
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  FUNC0 (struct evdev_dev*) ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  INPUT_PROP_DIRECT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct evdev_dev*) ; 
 int FUNC3 (struct evdev_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** evdev_mtstmap ; 
 int /*<<< orphan*/  FUNC4 (struct evdev_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct evdev_dev*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **) ; 

void
FUNC7(struct evdev_dev *evdev)
{
	int32_t nfingers, i;

	FUNC0(evdev);

	nfingers = FUNC2(evdev);
	FUNC4(evdev, EV_KEY, BTN_TOUCH, nfingers > 0);

	if (FUNC3(evdev, 0, ABS_MT_TRACKING_ID) != -1)
		/* Echo 0-th MT-slot as ST-slot */
		for (i = 0; i < FUNC6(evdev_mtstmap); i++)
			if (FUNC1(evdev->ev_abs_flags, evdev_mtstmap[i][1]))
				FUNC4(evdev, EV_ABS,
				    evdev_mtstmap[i][1],
				    FUNC3(evdev, 0,
				    evdev_mtstmap[i][0]));

	/* Touchscreens should not report tool taps */
	if (!FUNC1(evdev->ev_prop_flags, INPUT_PROP_DIRECT))
		FUNC5(evdev, nfingers);

	if (nfingers == 0)
		FUNC4(evdev, EV_ABS, ABS_PRESSURE, 0);
}