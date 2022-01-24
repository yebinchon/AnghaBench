#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int usb_timeout_t ;
typedef  scalar_t__ uint8_t ;
struct TYPE_8__ {int self_suspended; scalar_t__ usb_mode; } ;
struct usb_device {struct usb_device* parent_hub; int /*<<< orphan*/  port_no; TYPE_4__* bus; TYPE_2__ flags; TYPE_1__* hub; } ;
struct TYPE_10__ {TYPE_3__* methods; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* device_suspend ) (struct usb_device*) ;} ;
struct TYPE_7__ {scalar_t__ nports; scalar_t__ ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  UF_DEVICE_REMOTE_WAKEUP ; 
 int /*<<< orphan*/  UHF_PORT_SUSPEND ; 
 int /*<<< orphan*/  UPS_PORT_LS_U3 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ USB_MODE_DEVICE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 
 struct usb_device* FUNC6 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*) ; 
 scalar_t__ FUNC8 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct usb_device*) ; 
 int FUNC11 (struct usb_device*) ; 
 int usb_port_resume_delay ; 
 int FUNC12 (struct usb_device*,int) ; 
 int FUNC13 (struct usb_device*) ; 
 int FUNC14 (struct usb_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct usb_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct usb_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct usb_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct usb_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_device*) ; 

__attribute__((used)) static void
FUNC21(struct usb_device *udev)
{
	struct usb_device *child;
	int err;
	uint8_t x;
	uint8_t nports;

repeat:
	/* be NULL safe */
	if (udev == NULL)
		return;

	/* check if already suspended */
	if (udev->flags.self_suspended)
		return;

	/* we need a parent HUB to do suspend */
	if (udev->parent_hub == NULL)
		return;

	FUNC0("udev=%p\n", udev);

	/* check if the current device is a HUB */
	if (udev->hub != NULL) {
		nports = udev->hub->nports;

		/* check if all devices on the HUB are suspended */
		for (x = 0; x != nports; x++) {
			child = FUNC6(udev->bus,
			    udev->hub->ports + x);

			if (child == NULL)
				continue;

			if (child->flags.self_suspended)
				continue;

			FUNC1(1, "Port %u is busy on the HUB!\n", x + 1);
			return;
		}
	}

	if (FUNC10(udev)) {
		/*
		 * This request needs to be done before we set
		 * "udev->flags.self_suspended":
		 */

		/* allow device to do remote wakeup */
		err = FUNC16(udev,
		    NULL, UF_DEVICE_REMOTE_WAKEUP);
		if (err) {
			FUNC1(0, "Setting device "
			    "remote wakeup failed\n");
		}
	}

	FUNC2(udev->bus);
	/*
	 * Checking for suspend condition and setting suspended bit
	 * must be atomic!
	 */
	err = FUNC11(udev);
	if (err == 0) {
		/*
		 * Set that this device is suspended. This variable
		 * must be set before calling USB controller suspend
		 * callbacks.
		 */
		udev->flags.self_suspended = 1;
	}
	FUNC3(udev->bus);

	if (err != 0) {
		if (FUNC10(udev)) {
			/* allow device to do remote wakeup */
			err = FUNC14(udev,
			    NULL, UF_DEVICE_REMOTE_WAKEUP);
			if (err) {
				FUNC1(0, "Setting device "
				    "remote wakeup failed\n");
			}
		}

		if (udev->flags.usb_mode == USB_MODE_DEVICE) {
			/* resume parent HUB first */
			FUNC7(udev->parent_hub);

			/* reduce chance of instant resume failure by waiting a little bit */
			FUNC9(NULL, FUNC4(20));

			/* resume current port (Valid in Host and Device Mode) */
			err = FUNC15(udev->parent_hub,
			    NULL, udev->port_no, UHF_PORT_SUSPEND);

			/* resume settle time */
			FUNC9(NULL, FUNC4(usb_port_resume_delay));
		}
		FUNC0("Suspend was cancelled!\n");
		return;
	}

	FUNC19(udev);

	/* notify all sub-devices about suspend */
	err = FUNC12(udev, 1);

	FUNC20(udev);

	if (udev->bus->methods->device_suspend != NULL) {
		usb_timeout_t temp;

		/* suspend device on the USB controller */
		(udev->bus->methods->device_suspend) (udev);

		/* do DMA delay */
		temp = FUNC13(udev);
		if (temp != 0)
			FUNC9(NULL, FUNC4(temp));

	}

	if (FUNC8(udev)) {
		/* suspend current port */
		err = FUNC17(udev->parent_hub,
		    NULL, udev->port_no, UHF_PORT_SUSPEND);
		if (err) {
			FUNC1(0, "Suspending port failed\n");
			return;
		}
	} else {
		/* suspend current port */
		err = FUNC18(udev->parent_hub,
		    NULL, udev->port_no, UPS_PORT_LS_U3);
		if (err) {
			FUNC1(0, "Suspending port failed\n");
			return;
		}
	}

	udev = udev->parent_hub;
	goto repeat;
}