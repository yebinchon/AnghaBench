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
struct evdev_dev {int /*<<< orphan*/  ev_key_states; int /*<<< orphan*/  ev_kdb_led_states; int /*<<< orphan*/  ev_led_states; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdev_dev*) ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_LED ; 
 int /*<<< orphan*/  EV_SYN ; 
 int KEY_CNT ; 
 int KEY_EVENT_UP ; 
 int LED_CNT ; 
 int /*<<< orphan*/  LED_MAX ; 
 int SYN_REPORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct evdev_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct evdev_dev*) ; 

void
FUNC5(struct evdev_dev *evdev)
{
	int code;

	FUNC0(evdev);

	/* Report postponed leds */
	for (code = 0; code < LED_CNT; code++)
		if (FUNC2(evdev->ev_kdb_led_states, code))
			FUNC3(evdev, EV_LED, code,
			    !FUNC2(evdev->ev_led_states, code));
	FUNC1(evdev->ev_kdb_led_states, 0, LED_MAX);

	/* Release stuck keys (CTRL + ALT + ESC) */
	FUNC4(evdev);
	for (code = 0; code < KEY_CNT; code++) {
		if (FUNC2(evdev->ev_key_states, code)) {
			FUNC3(evdev, EV_KEY, code, KEY_EVENT_UP);
			FUNC3(evdev, EV_SYN, SYN_REPORT, 1);
		}
	}
}