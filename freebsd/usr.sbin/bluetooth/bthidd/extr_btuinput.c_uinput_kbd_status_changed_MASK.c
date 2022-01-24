#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct input_event {int type; int /*<<< orphan*/  value; int /*<<< orphan*/  code; } ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  ie ;
typedef  TYPE_1__* bthid_session_p ;
struct TYPE_3__ {scalar_t__ vkbd; } ;

/* Variables and functions */
#define  EV_LED 129 
#define  EV_REP 128 
 int /*<<< orphan*/  KDGETLED ; 
 int /*<<< orphan*/  KDSETLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * led_codes ; 
 int /*<<< orphan*/  FUNC2 (struct input_event*,int /*<<< orphan*/ *,int) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 

int32_t
FUNC4(bthid_session_p s, uint8_t *data, int32_t len)
{
	struct input_event ie;
	int32_t leds, oleds;
	size_t i;

	FUNC0(s != NULL);
	FUNC0(s->vkbd >= 0);
	FUNC0(len == sizeof(struct input_event));

	FUNC2(&ie, data, sizeof(ie));
	switch (ie.type) {
	case EV_LED:
		FUNC1(s->vkbd, KDGETLED, &oleds);
		leds = oleds;
		for (i = 0; i < FUNC3(led_codes); i++) {
			if (led_codes[i] == ie.code) {
				if (ie.value)
					leds |= 1 << i;
				else
					leds &= ~(1 << i);
				if (leds != oleds)
					FUNC1(s->vkbd, KDSETLED, leds);
				break;
			}
		}
		break;
	case EV_REP:
		/* FALLTHROUGH. Repeats are handled by evdev subsystem */
	default:
		break;
	}

	return (0);
}