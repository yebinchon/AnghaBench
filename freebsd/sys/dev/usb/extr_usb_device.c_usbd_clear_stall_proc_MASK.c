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
struct usb_udev_msg {struct usb_device* udev; } ;
struct usb_proc_msg {int dummy; } ;
struct usb_device {int /*<<< orphan*/  bus; int /*<<< orphan*/  device_mtx; int /*<<< orphan*/ * ctrl_xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct usb_proc_msg *_pm)
{
	struct usb_udev_msg *pm = (void *)_pm;
	struct usb_device *udev = pm->udev;

	/* Change lock */
	FUNC1(udev->bus);
	FUNC2(&udev->device_mtx);

	/* Start clear stall callback */
	FUNC4(udev->ctrl_xfer[1]);

	/* Change lock */
	FUNC3(&udev->device_mtx);
	FUNC0(udev->bus);
}