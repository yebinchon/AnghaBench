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
struct usb_device {scalar_t__ re_enumerate_wait; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 scalar_t__ USB_RE_ENUM_DONE ; 
 scalar_t__ USB_RE_ENUM_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1(struct usb_device *udev)
{
	if (udev->re_enumerate_wait == USB_RE_ENUM_DONE) {
		udev->re_enumerate_wait = USB_RE_ENUM_START;
		FUNC0(udev->bus, 0);
	}
}