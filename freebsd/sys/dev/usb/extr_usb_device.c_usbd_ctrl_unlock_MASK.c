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
struct usb_device {int /*<<< orphan*/  ctrl_sx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*) ; 

void
FUNC3(struct usb_device *udev)
{
	FUNC0(&udev->ctrl_sx);

	/*
	 * Restore the suspend and resume lock after we have unlocked
	 * the USB control transfer lock to avoid LOR:
	 */
	if (FUNC1(udev))
		FUNC2(udev);
}