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
struct usb_device {int dummy; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void
FUNC4(struct usb_device *udev, device_t dev, uint8_t do_suspend)
{
	int err;

	if (dev == NULL) {
		return;
	}
	if (!FUNC2(dev)) {
		return;
	}
	if (do_suspend) {
		err = FUNC1(dev);
	} else {
		err = FUNC0(dev);
	}
	if (err) {
		FUNC3(dev, "%s failed\n",
		    do_suspend ? "Suspend" : "Resume");
	}
}