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
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  scalar_t__ uint8_t ;
struct usb_xfer {TYPE_1__* xroot; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {struct usb_device* udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  USB_ERR_STALLED ; 
 int /*<<< orphan*/  USB_IFACE_INDEX_ANY ; 
 scalar_t__ USB_UNCONFIG_INDEX ; 
 scalar_t__ USB_UNCONFIG_NO ; 
 int /*<<< orphan*/  FUNC1 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*) ; 
 scalar_t__ FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 
 scalar_t__ FUNC6 (struct usb_device*,scalar_t__) ; 

__attribute__((used)) static usb_error_t
FUNC7(struct usb_xfer *xfer, uint8_t conf_no)
{
	struct usb_device *udev = xfer->xroot->udev;
	usb_error_t err = 0;
	uint8_t do_unlock;

	/*
	 * We need to protect against other threads doing probe and
	 * attach:
	 */
	FUNC2(xfer);

	/* Prevent re-enumeration */
	do_unlock = FUNC4(udev);

	if (conf_no == USB_UNCONFIG_NO) {
		conf_no = USB_UNCONFIG_INDEX;
	} else {
		/*
		 * The relationship between config number and config index
		 * is very simple in our case:
		 */
		conf_no--;
	}

	if (FUNC6(udev, conf_no)) {
		FUNC0("set config %d failed\n", conf_no);
		err = USB_ERR_STALLED;
		goto done;
	}
	if (FUNC3(udev, USB_IFACE_INDEX_ANY)) {
		FUNC0("probe and attach failed\n");
		err = USB_ERR_STALLED;
		goto done;
	}
done:
	if (do_unlock)
		FUNC5(udev);
	FUNC1(xfer);
	return (err);
}