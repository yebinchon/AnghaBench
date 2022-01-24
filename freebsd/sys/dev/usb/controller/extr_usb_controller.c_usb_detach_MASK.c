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
struct usb_bus {int /*<<< orphan*/ * cleanup_msg; int /*<<< orphan*/ * detach_msg; int /*<<< orphan*/  power_wdog; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_bus*) ; 
 struct usb_bus* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_bus*) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct usb_bus *bus = FUNC8(dev);

	FUNC0("\n");

	if (bus == NULL) {
		/* was never setup properly */
		return (0);
	}
	/* Stop power watchdog */
	FUNC9(&bus->power_wdog);

#if USB_HAVE_ROOT_MOUNT_HOLD
	/* Let the USB explore process detach all devices. */
	usb_root_mount_rel(bus);
#endif

	FUNC4(bus);

	/* Queue detach job */
	FUNC11(FUNC2(bus),
	    &bus->detach_msg[0], &bus->detach_msg[1]);

	/* Wait for detach to complete */
	FUNC12(FUNC2(bus),
	    &bus->detach_msg[0], &bus->detach_msg[1]);

#if USB_HAVE_UGEN
	/* Wait for cleanup to complete */
	usb_proc_mwait(USB_BUS_EXPLORE_PROC(bus),
	    &bus->cleanup_msg[0], &bus->cleanup_msg[1]);
#endif
	FUNC7(bus);

#if USB_HAVE_PER_BUS_PROCESS
	/* Get rid of USB callback processes */

	usb_proc_free(USB_BUS_GIANT_PROC(bus));
	usb_proc_free(USB_BUS_NON_GIANT_ISOC_PROC(bus));
	usb_proc_free(USB_BUS_NON_GIANT_BULK_PROC(bus));

	/* Get rid of USB explore process */

	usb_proc_free(USB_BUS_EXPLORE_PROC(bus));

	/* Get rid of control transfer process */

	usb_proc_free(USB_BUS_CONTROL_XFER_PROC(bus));
#endif

#if USB_HAVE_PF
	usbpf_detach(bus);
#endif
	return (0);
}