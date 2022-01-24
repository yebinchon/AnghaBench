#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__* type_refs; int /*<<< orphan*/  last_xfer_time; } ;
struct TYPE_4__ {scalar_t__ self_suspended; scalar_t__ usb_mode; scalar_t__ remote_wakeup; } ;
struct usb_device {TYPE_2__ pwr_save; TYPE_1__ flags; int /*<<< orphan*/  port_no; struct usb_device* parent_hub; struct usb_bus* bus; } ;
struct usb_bus {TYPE_3__* methods; int /*<<< orphan*/  hw_power_state; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* set_hw_power ) (struct usb_bus*) ;int /*<<< orphan*/  (* device_resume ) (struct usb_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 size_t UE_BULK ; 
 size_t UE_CONTROL ; 
 size_t UE_INTERRUPT ; 
 size_t UE_ISOCHRONOUS ; 
 int /*<<< orphan*/  UF_DEVICE_REMOTE_WAKEUP ; 
 int /*<<< orphan*/  UHF_PORT_SUSPEND ; 
 int /*<<< orphan*/  UPS_PORT_LS_U0 ; 
 int /*<<< orphan*/  FUNC2 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_bus*) ; 
 int /*<<< orphan*/  USB_HW_POWER_BULK ; 
 int /*<<< orphan*/  USB_HW_POWER_CONTROL ; 
 int /*<<< orphan*/  USB_HW_POWER_INTERRUPT ; 
 int /*<<< orphan*/  USB_HW_POWER_ISOC ; 
 scalar_t__ USB_MODE_DEVICE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_bus*) ; 
 int /*<<< orphan*/  ticks ; 
 scalar_t__ FUNC7 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct usb_device*) ; 
 int usb_port_resume_delay ; 
 int FUNC10 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (struct usb_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct usb_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct usb_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_device*) ; 

__attribute__((used)) static void
FUNC17(struct usb_device *udev)
{
	struct usb_bus *bus;
	int err;

	/* be NULL safe */
	if (udev == NULL)
		return;

	/* check if already resumed */
	if (udev->flags.self_suspended == 0)
		return;

	/* we need a parent HUB to do resume */
	if (udev->parent_hub == NULL)
		return;

	FUNC0("udev=%p\n", udev);

	if ((udev->flags.usb_mode == USB_MODE_DEVICE) &&
	    (udev->flags.remote_wakeup == 0)) {
		/*
		 * If the host did not set the remote wakeup feature, we can
		 * not wake it up either!
		 */
		FUNC0("remote wakeup is not set!\n");
		return;
	}
	/* get bus pointer */
	bus = udev->bus;

	/* resume parent hub first */
	FUNC17(udev->parent_hub);

	/* reduce chance of instant resume failure by waiting a little bit */
	FUNC8(NULL, FUNC4(20));

	if (FUNC7(udev)) {
		/* resume current port (Valid in Host and Device Mode) */
		err = FUNC13(udev->parent_hub,
		    NULL, udev->port_no, UHF_PORT_SUSPEND);
		if (err) {
			FUNC1(0, "Resuming port failed\n");
			return;
		}
	} else {
		/* resume current port (Valid in Host and Device Mode) */
		err = FUNC14(udev->parent_hub,
		    NULL, udev->port_no, UPS_PORT_LS_U0);
		if (err) {
			FUNC1(0, "Resuming port failed\n");
			return;
		}
	}

	/* resume settle time */
	FUNC8(NULL, FUNC4(usb_port_resume_delay));

	if (bus->methods->device_resume != NULL) {
		/* resume USB device on the USB controller */
		(bus->methods->device_resume) (udev);
	}
	FUNC2(bus);
	/* set that this device is now resumed */
	udev->flags.self_suspended = 0;
#if USB_HAVE_POWERD
	/* make sure that we don't go into suspend right away */
	udev->pwr_save.last_xfer_time = ticks;

	/* make sure the needed power masks are on */
	if (udev->pwr_save.type_refs[UE_CONTROL] != 0)
		bus->hw_power_state |= USB_HW_POWER_CONTROL;
	if (udev->pwr_save.type_refs[UE_BULK] != 0)
		bus->hw_power_state |= USB_HW_POWER_BULK;
	if (udev->pwr_save.type_refs[UE_INTERRUPT] != 0)
		bus->hw_power_state |= USB_HW_POWER_INTERRUPT;
	if (udev->pwr_save.type_refs[UE_ISOCHRONOUS] != 0)
		bus->hw_power_state |= USB_HW_POWER_ISOC;
#endif
	FUNC3(bus);

	if (bus->methods->set_hw_power != NULL) {
		/* always update hardware power! */
		(bus->methods->set_hw_power) (bus);
	}

	FUNC15(udev);

	/* notify all sub-devices about resume */
	err = FUNC10(udev, 0);

	FUNC16(udev);

	/* check if peer has wakeup capability */
	if (FUNC9(udev)) {
		/* clear remote wakeup */
		err = FUNC12(udev,
		    NULL, UF_DEVICE_REMOTE_WAKEUP);
		if (err) {
			FUNC1(0, "Clearing device "
			    "remote wakeup failed: %s\n",
			    FUNC11(err));
		}
	}
}