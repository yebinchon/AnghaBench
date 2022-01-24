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
struct usb_bus {int /*<<< orphan*/  power_wdog; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_bus*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,void (*) (void*),void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct usb_bus *bus = arg;

	FUNC2(bus, MA_OWNED);

	FUNC5(&bus->power_wdog,
	    4 * hz, usb_power_wdog, arg);

#ifdef DDB
	/*
	 * The following line of code is only here to recover from
	 * DDB:
	 */
	usb_proc_rewakeup(USB_BUS_EXPLORE_PROC(bus));	/* recover from DDB */
#endif

#if USB_HAVE_POWERD
	USB_BUS_UNLOCK(bus);

	usb_bus_power_update(bus);

	USB_BUS_LOCK(bus);
#endif
}