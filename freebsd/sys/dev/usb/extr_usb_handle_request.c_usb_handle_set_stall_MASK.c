#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_xfer {TYPE_1__* xroot; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {struct usb_device* udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static usb_error_t
FUNC4(struct usb_xfer *xfer, uint8_t ep, uint8_t do_stall)
{
	struct usb_device *udev = xfer->xroot->udev;
	usb_error_t err;

	FUNC1(xfer);
	err = FUNC3(udev,
	    FUNC2(udev, ep), do_stall);
	FUNC0(xfer);
	return (err);
}