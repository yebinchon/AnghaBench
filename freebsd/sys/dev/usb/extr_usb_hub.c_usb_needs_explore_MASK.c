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
typedef  int uint8_t ;
struct usb_bus {int do_probe; int /*<<< orphan*/ * explore_msg; int /*<<< orphan*/  bus_mtx; int /*<<< orphan*/ ** devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_bus*) ; 
 size_t USB_ROOT_HUB_ADDR ; 
 scalar_t__ cold ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC6(struct usb_bus *bus, uint8_t do_probe)
{
	uint8_t do_unlock;

	FUNC0("\n");

	if (cold != 0) {
		FUNC0("Cold\n");
		return;
	}

	if (bus == NULL) {
		FUNC0("No bus pointer!\n");
		return;
	}
	if ((bus->devices == NULL) ||
	    (bus->devices[USB_ROOT_HUB_ADDR] == NULL)) {
		FUNC0("No root HUB\n");
		return;
	}
	if (FUNC4(&bus->bus_mtx)) {
		do_unlock = 0;
	} else {
		FUNC2(bus);
		do_unlock = 1;
	}
	if (do_probe) {
		bus->do_probe = 1;
	}
	if (FUNC5(FUNC1(bus),
	    &bus->explore_msg[0], &bus->explore_msg[1])) {
		/* ignore */
	}
	if (do_unlock) {
		FUNC3(bus);
	}
}