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
struct evdev_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * evdev_led_codes ; 
 int /*<<< orphan*/  FUNC0 (struct evdev_dev*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct evdev_dev *evdev, int leds)
{
	size_t i;

	/* Some drivers initialize leds before evdev */
	if (evdev == NULL)
		return;

	for (i = 0; i < FUNC1(evdev_led_codes); i++)
		FUNC0(evdev, evdev_led_codes[i], leds & (1 << i));
}