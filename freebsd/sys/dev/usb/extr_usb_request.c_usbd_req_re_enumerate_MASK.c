#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usb_error_t ;
typedef  void* uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  bMaxPacketSize; } ;
struct TYPE_3__ {scalar_t__ usb_mode; } ;
struct usb_device {scalar_t__ speed; void* address; TYPE_2__ ddesc; int /*<<< orphan*/  port_no; int /*<<< orphan*/  hs_port_no; struct usb_device* parent_hs_hub; struct usb_device* parent_hub; TYPE_1__ flags; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UE_CONTROL ; 
 scalar_t__ USB_ERR_INVAL ; 
 int /*<<< orphan*/  USB_MAX_IPACKET ; 
 scalar_t__ USB_MODE_HOST ; 
 int /*<<< orphan*/  USB_SPEED_FULL ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  USB_SPEED_LOW ; 
 scalar_t__ USB_SPEED_SUPER ; 
 void* USB_START_ADDR ; 
 int /*<<< orphan*/  USB_STATE_ADDRESSED ; 
 int /*<<< orphan*/  USB_STATE_POWERED ; 
 int hz ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (struct usb_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct usb_device*,struct mtx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct usb_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct usb_device*,struct mtx*,void*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*,struct mtx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct usb_device*,struct mtx*) ; 

usb_error_t
FUNC12(struct usb_device *udev, struct mtx *mtx)
{
	struct usb_device *parent_hub;
	usb_error_t err;
	uint8_t old_addr;
	uint8_t do_retry = 1;

	if (udev->flags.usb_mode != USB_MODE_HOST) {
		return (USB_ERR_INVAL);
	}
	old_addr = udev->address;
	parent_hub = udev->parent_hub;
	if (parent_hub == NULL) {
		return (USB_ERR_INVAL);
	}
retry:
#if USB_HAVE_TT_SUPPORT
	/*
	 * Try to reset the High Speed parent HUB of a LOW- or FULL-
	 * speed device, if any.
	 */
	if (udev->parent_hs_hub != NULL &&
	    udev->speed != USB_SPEED_HIGH) {
		DPRINTF("Trying to reset parent High Speed TT.\n");
		if (udev->parent_hs_hub == parent_hub &&
		    (uhub_count_active_host_ports(parent_hub, USB_SPEED_LOW) +
		     uhub_count_active_host_ports(parent_hub, USB_SPEED_FULL)) == 1) {
			/* we can reset the whole TT */
			err = usbd_req_reset_tt(parent_hub, NULL,
			    udev->hs_port_no);
		} else {
			/* only reset a particular device and endpoint */
			err = usbd_req_clear_tt_buffer(udev->parent_hs_hub, NULL,
			    udev->hs_port_no, old_addr, UE_CONTROL, 0);
		}
		if (err) {
			DPRINTF("Resetting parent High "
			    "Speed TT failed (%s).\n",
			    usbd_errstr(err));
		}
	}
#endif
	/* Try to warm reset first */
	if (parent_hub->speed == USB_SPEED_SUPER)
		FUNC10(parent_hub, mtx, udev->port_no);

	/* Try to reset the parent HUB port. */
	err = FUNC7(parent_hub, mtx, udev->port_no);
	if (err) {
		FUNC1(0, "addr=%d, port reset failed, %s\n", 
		    old_addr, FUNC5(err));
		goto done;
	}

	/*
	 * After that the port has been reset our device should be at
	 * address zero:
	 */
	udev->address = USB_START_ADDR;

	/* reset "bMaxPacketSize" */
	udev->ddesc.bMaxPacketSize = USB_MAX_IPACKET;

	/* reset USB state */
	FUNC4(udev, USB_STATE_POWERED);

	/*
	 * Restore device address:
	 */
	err = FUNC9(udev, mtx, old_addr);
	if (err) {
		/* XXX ignore any errors! */
		FUNC1(0, "addr=%d, set address failed! (%s, ignored)\n",
		    old_addr, FUNC5(err));
	}
	/*
	 * Restore device address, if the controller driver did not
	 * set a new one:
	 */
	if (udev->address == USB_START_ADDR)
		udev->address = old_addr;

	/* setup the device descriptor and the initial "wMaxPacketSize" */
	err = FUNC11(udev, mtx);

done:
	if (err && do_retry) {
		/* give the USB firmware some time to load */
		FUNC3(mtx, hz / 2);
		/* no more retries after this retry */
		do_retry = 0;
		/* try again */
		goto retry;
	}
	/* restore address */
	if (udev->address == USB_START_ADDR)
		udev->address = old_addr;
	/* update state, if successful */
	if (err == 0)
		FUNC4(udev, USB_STATE_ADDRESSED);
	return (err);
}