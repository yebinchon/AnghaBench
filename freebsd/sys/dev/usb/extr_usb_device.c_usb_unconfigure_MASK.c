#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ usb_mode; } ;
struct usb_device {int /*<<< orphan*/  curr_config_index; int /*<<< orphan*/  curr_config_no; int /*<<< orphan*/ * cdesc; TYPE_1__ flags; int /*<<< orphan*/ * linux_endpoint_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_CFG_FREE ; 
 int /*<<< orphan*/  USB_IFACE_INDEX_ANY ; 
 scalar_t__ USB_MODE_DEVICE ; 
 int /*<<< orphan*/  USB_UNCONFIG_INDEX ; 
 int /*<<< orphan*/  USB_UNCONFIG_NO ; 
 int /*<<< orphan*/  FUNC0 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 
 scalar_t__ FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct usb_device *udev, uint8_t flag)
{
	uint8_t do_unlock;

	/* Prevent re-enumeration */
	do_unlock = FUNC5(udev);

	/* detach all interface drivers */
	FUNC2(udev, USB_IFACE_INDEX_ANY, flag);

#if USB_HAVE_UGEN
	/* free all FIFOs except control endpoint FIFOs */
	usb_fifo_free_wrap(udev, USB_IFACE_INDEX_ANY, flag);

	/*
	 * Free all cdev's, if any.
	 */
	usb_cdev_free(udev);
#endif

#if USB_HAVE_COMPAT_LINUX
	/* free Linux compat device, if any */
	if (udev->linux_endpoint_start != NULL) {
		usb_linux_free_device_p(udev);
		udev->linux_endpoint_start = NULL;
	}
#endif

	FUNC1(udev, USB_IFACE_INDEX_ANY, USB_CFG_FREE);

	/* free "cdesc" after "ifaces" and "endpoints", if any */
	if (udev->cdesc != NULL) {
		if (udev->flags.usb_mode != USB_MODE_DEVICE)
			FUNC7(udev, udev->cdesc);
		udev->cdesc = NULL;
	}
	/* set unconfigured state */
	udev->curr_config_no = USB_UNCONFIG_NO;
	udev->curr_config_index = USB_UNCONFIG_INDEX;

	if (do_unlock)
		FUNC6(udev);
}