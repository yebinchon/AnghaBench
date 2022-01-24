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
typedef  int uint8_t ;
struct usb_device {int /*<<< orphan*/  ctrl_sx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*) ; 

uint8_t
FUNC4(struct usb_device *udev)
{
	if (FUNC1(&udev->ctrl_sx))
		return (0);
	FUNC0(&udev->ctrl_sx);

	/*
	 * We need to allow suspend and resume at this point, else the
	 * control transfer will timeout if the device is suspended!
	 */
	if (FUNC2(udev))
		FUNC3(udev);
	return (1);
}