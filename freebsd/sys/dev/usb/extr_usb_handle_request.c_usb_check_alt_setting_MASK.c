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
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  scalar_t__ uint8_t ;
struct usb_interface {int /*<<< orphan*/  idesc; } ;
struct usb_device {int /*<<< orphan*/  cdesc; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_ERR_INVAL ; 
 scalar_t__ FUNC0 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static usb_error_t
FUNC3(struct usb_device *udev, 
     struct usb_interface *iface, uint8_t alt_index)
{
	uint8_t do_unlock;
	usb_error_t err = 0;

	/* Prevent re-enumeration */
	do_unlock = FUNC0(udev);

	if (alt_index >= FUNC2(udev->cdesc, iface->idesc))
		err = USB_ERR_INVAL;

	if (do_unlock)
		FUNC1(udev);

	return (err);
}