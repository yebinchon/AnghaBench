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
struct usb_endpoint {scalar_t__ toggle_next; } ;
struct usb_device {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct usb_device*,struct usb_endpoint*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,struct usb_endpoint*) ; 

void
FUNC4(struct usb_device *udev, struct usb_endpoint *ep)
{
	FUNC0(5, "udev=%p endpoint=%p\n", udev, ep);

	FUNC1(udev->bus);
	ep->toggle_next = 0;
	/* some hardware needs a callback to clear the data toggle */
	FUNC3(udev, ep);
	FUNC2(udev->bus);
}