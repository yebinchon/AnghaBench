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
struct usb_device {int state; TYPE_2__* bus; } ;
typedef  enum usb_dev_state { ____Placeholder_usb_dev_state } usb_dev_state ;
struct TYPE_4__ {TYPE_1__* methods; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* device_state_change ) (struct usb_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int USB_STATE_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 
 int /*<<< orphan*/  usb_ref_lock ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void
FUNC6(struct usb_device *udev, enum usb_dev_state state)
{

	FUNC1(state < USB_STATE_MAX, ("invalid udev state"));

	FUNC0("udev %p state %s -> %s\n", udev,
	    FUNC5(udev->state), FUNC5(state));

#if USB_HAVE_UGEN
	mtx_lock(&usb_ref_lock);
#endif
	udev->state = state;
#if USB_HAVE_UGEN
	mtx_unlock(&usb_ref_lock);
#endif
	if (udev->bus->methods->device_state_change != NULL)
		(udev->bus->methods->device_state_change) (udev);
}