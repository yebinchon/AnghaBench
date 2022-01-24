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
typedef  scalar_t__ uint8_t ;
struct usb_device {int /*<<< orphan*/  bus; scalar_t__ power_mode; } ;

/* Variables and functions */
 scalar_t__ USB_POWER_MODE_OFF ; 
 scalar_t__ USB_POWER_MODE_ON ; 
 scalar_t__ USB_POWER_MODE_SAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct usb_device*,scalar_t__) ; 

void
FUNC3(struct usb_device *udev, uint8_t power_mode)
{
	/* filter input argument */
	if ((power_mode != USB_POWER_MODE_ON) &&
	    (power_mode != USB_POWER_MODE_OFF))
		power_mode = USB_POWER_MODE_SAVE;

	power_mode = FUNC2(udev, power_mode);	

	udev->power_mode = power_mode;	/* update copy of power mode */

#if USB_HAVE_POWERD
	usb_bus_power_update(udev->bus);
#else
	FUNC1(udev->bus, 0 /* no probe */ );
#endif
}