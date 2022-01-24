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
typedef  int /*<<< orphan*/  uint16_t ;
struct evdev_dev {int ev_kdb_active; int /*<<< orphan*/  ev_flags; scalar_t__ ev_report_opened; int /*<<< orphan*/  ev_led_states; int /*<<< orphan*/  ev_kdb_led_states; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct evdev_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdev_dev*) ; 
 int /*<<< orphan*/  EVDEV_FLAG_MT_AUTOREL ; 
 int /*<<< orphan*/  EVDEV_FLAG_MT_STCOMPAT ; 
 int /*<<< orphan*/  EV_LED ; 
 int /*<<< orphan*/  EV_SYN ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  SYN_REPORT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct evdev_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct evdev_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct evdev_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct evdev_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct evdev_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct evdev_dev*) ; 
 scalar_t__ kdb_active ; 

int
FUNC11(struct evdev_dev *evdev, uint16_t type, uint16_t code,
    int32_t value)
{

	if (FUNC5(evdev, type, code, value) != 0)
		return (EINVAL);

	/*
	 * Discard all but LEDs kdb events as unrelated to userspace.
	 * Aggregate LED updates and postpone reporting until kdb deactivation.
	 */
	if (kdb_active || FUNC2()) {
		evdev->ev_kdb_active = true;
		if (type == EV_LED)
			FUNC3(evdev->ev_kdb_led_states,
			    FUNC4(evdev->ev_led_states, code) != value);
		return (0);
	}

	FUNC0(evdev);

	/* Fix evdev state corrupted with discarding of kdb events */
	if (evdev->ev_kdb_active) {
		evdev->ev_kdb_active = false;
		FUNC7(evdev);
	}

	FUNC6(evdev, type, code, &value);
	if (type == EV_SYN && code == SYN_REPORT &&
	     FUNC4(evdev->ev_flags, EVDEV_FLAG_MT_AUTOREL))
		FUNC9(evdev);
	if (type == EV_SYN && code == SYN_REPORT && evdev->ev_report_opened &&
	    FUNC4(evdev->ev_flags, EVDEV_FLAG_MT_STCOMPAT))
		FUNC10(evdev);
	FUNC8(evdev, type, code, value);

	FUNC1(evdev);

	return (0);
}