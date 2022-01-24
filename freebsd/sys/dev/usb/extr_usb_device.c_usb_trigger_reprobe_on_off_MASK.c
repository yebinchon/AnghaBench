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
typedef  scalar_t__ usb_error_t ;
struct usb_port_status {int /*<<< orphan*/  wPortStatus; } ;
struct usb_device {scalar_t__ refcount; int /*<<< orphan*/  ref_cv; } ;
struct usb_bus {struct usb_device** devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UHF_PORT_POWER ; 
 int UPS_PORT_MODE_DEVICE ; 
 scalar_t__ USB_DEV_REF_MAX ; 
 size_t USB_ROOT_HUB_ADDR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct usb_bus* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_devclass_ptr ; 
 int /*<<< orphan*/  usb_ref_lock ; 
 int FUNC7 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (struct usb_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct usb_device*,int /*<<< orphan*/ *,struct usb_port_status*,int) ; 
 scalar_t__ FUNC12 (struct usb_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(int on_not_off)
{
	struct usb_port_status ps;
	struct usb_bus *bus;
	struct usb_device *udev;
	usb_error_t err;
	int do_unlock, max;

	max = FUNC3(usb_devclass_ptr);
	while (max >= 0) {
		FUNC5(&usb_ref_lock);
		bus = FUNC4(usb_devclass_ptr, max);
		max--;

		if (bus == NULL || bus->devices == NULL ||
		    bus->devices[USB_ROOT_HUB_ADDR] == NULL) {
			FUNC6(&usb_ref_lock);
			continue;
		}

		udev = bus->devices[USB_ROOT_HUB_ADDR];

		if (udev->refcount == USB_DEV_REF_MAX) {
			FUNC6(&usb_ref_lock);
			continue;
		}

		udev->refcount++;
		FUNC6(&usb_ref_lock);

		do_unlock = FUNC7(udev);
		if (do_unlock > 1) {
			do_unlock = 0;
			goto next;
		}

		err = FUNC11(udev, NULL, &ps, 1);
		if (err != 0) {
			FUNC0("usbd_req_get_port_status() "
			    "failed: %s\n", FUNC9(err));
			goto next;
		}

		if ((FUNC1(ps.wPortStatus) & UPS_PORT_MODE_DEVICE) == 0)
			goto next;

		if (on_not_off) {
			err = FUNC12(udev, NULL, 1,
			    UHF_PORT_POWER);
			if (err != 0) {
				FUNC0("usbd_req_set_port_feature() "
				    "failed: %s\n", FUNC9(err));
			}
		} else {
			err = FUNC10(udev, NULL, 1,
			    UHF_PORT_POWER);
			if (err != 0) {
				FUNC0("usbd_req_clear_port_feature() "
				    "failed: %s\n", FUNC9(err));
			}
		}

next:
		FUNC5(&usb_ref_lock);
		if (do_unlock)
			FUNC8(udev);
		if (--(udev->refcount) == 0)
			FUNC2(&udev->ref_cv);
		FUNC6(&usb_ref_lock);
	}
}