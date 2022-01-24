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
struct TYPE_4__ {scalar_t__ has_hwheel; scalar_t__ has_wheel; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  EV_SYN ; 
 int /*<<< orphan*/  INPUT_PROP_POINTER ; 
 int /*<<< orphan*/  REL_HWHEEL ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  UI_DEV_CREATE ; 
 int /*<<< orphan*/  UI_SET_EVBIT ; 
 int /*<<< orphan*/  UI_SET_KEYBIT ; 
 int /*<<< orphan*/  UI_SET_PROPBIT ; 
 int /*<<< orphan*/  UI_SET_RELBIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * mbuttons ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__* const,int /*<<< orphan*/ ,char*) ; 

int32_t
FUNC5(hid_device_p const p, bdaddr_p local)
{
	size_t	i;
	int32_t	fd;

	FUNC0(p != NULL);

	if ((fd = FUNC4(p, local, "Bluetooth Mouse")) < 0)
		goto bail_out;

	/* Advertise events and axes */
	if (FUNC2(fd, UI_SET_EVBIT, EV_SYN) < 0 ||
	    FUNC2(fd, UI_SET_EVBIT, EV_KEY) < 0 ||
	    FUNC2(fd, UI_SET_EVBIT, EV_REL) < 0 ||
	    FUNC2(fd, UI_SET_RELBIT, REL_X) < 0 ||
	    FUNC2(fd, UI_SET_RELBIT, REL_Y) < 0 ||
	    (p->has_wheel && FUNC2(fd, UI_SET_RELBIT, REL_WHEEL) < 0) ||
	    (p->has_hwheel && FUNC2(fd, UI_SET_RELBIT, REL_HWHEEL) < 0) ||
	    FUNC2(fd, UI_SET_PROPBIT, INPUT_PROP_POINTER) < 0)
		goto bail_out;

	/* Advertise mouse buttons */
	for (i = 0; i < FUNC3(mbuttons); i++)
		if (FUNC2(fd, UI_SET_KEYBIT, mbuttons[i]) < 0)
			goto bail_out;

	if (FUNC2(fd, UI_DEV_CREATE) >= 0)
		return (fd); /* SUCCESS */

bail_out:
	if (fd >= 0)
		FUNC1(fd);
	return (-1);
}