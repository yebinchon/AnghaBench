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
typedef  int uint16_t ;
struct evdev_dev {int /*<<< orphan*/  ev_clients; int /*<<< orphan*/  ev_key_states; int /*<<< orphan*/  ev_flags; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int EVDEV_FLAG_SOFTREPEAT ; 
 int /*<<< orphan*/  FUNC0 (struct evdev_dev*) ; 
#define  EV_ABS 129 
#define  EV_KEY 128 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  KEY_EVENT_DOWN ; 
 int /*<<< orphan*/  KEY_EVENT_REPEAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct evdev_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct evdev_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct evdev_dev*) ; 

__attribute__((used)) static void
FUNC6(struct evdev_dev *evdev, uint16_t type, uint16_t code,
    int32_t *value)
{

	FUNC0(evdev);

	switch (type) {
	case EV_KEY:
		if (!FUNC3(evdev, EV_REP))
			break;

		if (!FUNC2(evdev->ev_flags, EVDEV_FLAG_SOFTREPEAT)) {
			/* Detect driver key repeats. */
			if (FUNC2(evdev->ev_key_states, code) &&
			    *value == KEY_EVENT_DOWN)
				*value = KEY_EVENT_REPEAT;
		} else {
			/* Start/stop callout for evdev repeats */
			if (FUNC2(evdev->ev_key_states, code) == !*value &&
			    !FUNC1(&evdev->ev_clients)) {
				if (*value == KEY_EVENT_DOWN)
					FUNC4(evdev, code);
				else
					FUNC5(evdev);
			}
		}
		break;

	case EV_ABS:
		/* TBD: implement fuzz */
		break;
	}
}