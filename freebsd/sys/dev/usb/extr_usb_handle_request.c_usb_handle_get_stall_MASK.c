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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_endpoint {int /*<<< orphan*/  is_stalled; } ;
struct usb_device {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_endpoint* FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t
FUNC3(struct usb_device *udev, uint8_t ea_val)
{
	struct usb_endpoint *ep;
	uint8_t halted;

	ep = FUNC2(udev, ea_val);
	if (ep == NULL) {
		/* nothing to do */
		return (0);
	}
	FUNC0(udev->bus);
	halted = ep->is_stalled;
	FUNC1(udev->bus);

	return (halted);
}