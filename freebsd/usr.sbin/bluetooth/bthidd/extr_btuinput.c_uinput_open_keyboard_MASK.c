#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
typedef  TYPE_1__* hid_device_p ;
typedef  int /*<<< orphan*/  bdaddr_p ;
struct TYPE_4__ {scalar_t__ has_cons; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_LED ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  EV_SYN ; 
 int /*<<< orphan*/  LED_CAPSL ; 
 int /*<<< orphan*/  LED_NUML ; 
 int /*<<< orphan*/  LED_SCROLLL ; 
 scalar_t__ NONE ; 
 int /*<<< orphan*/  UI_DEV_CREATE ; 
 int /*<<< orphan*/  UI_SET_EVBIT ; 
 int /*<<< orphan*/  UI_SET_KEYBIT ; 
 int /*<<< orphan*/  UI_SET_LEDBIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__* consmap ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,...) ; 
 scalar_t__* keymap ; 
 size_t FUNC3 (scalar_t__*) ; 
 scalar_t__ FUNC4 (TYPE_1__* const,int /*<<< orphan*/ ,char*) ; 

int32_t
FUNC5(hid_device_p const p, bdaddr_p local)
{
	size_t	i;
	int32_t	fd;

	FUNC0(p != NULL);

	if ((fd = FUNC4(p, local, "Bluetooth Keyboard")) < 0)
		goto bail_out;

	/* Advertise key events and LEDs */
	if (FUNC2(fd, UI_SET_EVBIT, EV_KEY) < 0 ||
	    FUNC2(fd, UI_SET_EVBIT, EV_LED) < 0 ||
	    FUNC2(fd, UI_SET_EVBIT, EV_SYN) < 0 ||
	    FUNC2(fd, UI_SET_EVBIT, EV_REP) < 0 ||
	    FUNC2(fd, UI_SET_LEDBIT, LED_CAPSL) < 0 ||
	    FUNC2(fd, UI_SET_LEDBIT, LED_NUML) < 0 ||
	    FUNC2(fd, UI_SET_LEDBIT, LED_SCROLLL))
		goto bail_out;

	/* Advertise keycodes */
	for (i = 0; i < FUNC3(keymap); i++)
		if (keymap[i] != NONE &&
		    FUNC2(fd, UI_SET_KEYBIT, keymap[i]) < 0)
			goto bail_out;

	/* Advertise consumer page keys if any */
	if (p->has_cons) {
		for (i = 0; i < FUNC3(consmap); i++) {
			if (consmap[i] != NONE &&
			    FUNC2(fd, UI_SET_KEYBIT, consmap[i]) < 0)
				goto bail_out;
		}
	}

	if (FUNC2(fd, UI_DEV_CREATE) >= 0)
		return (fd); /* SUCCESS */

bail_out:
	if (fd >= 0)
		FUNC1(fd);
	return (-1);
}