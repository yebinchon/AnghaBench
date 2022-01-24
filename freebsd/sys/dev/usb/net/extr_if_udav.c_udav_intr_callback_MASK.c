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
struct usb_xfer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC0 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC1 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC5(struct usb_xfer *xfer, usb_error_t error)
{
	switch (FUNC0(xfer)) {
	case USB_ST_TRANSFERRED:
	case USB_ST_SETUP:
tr_setup:
		FUNC3(xfer, 0, FUNC2(xfer));
		FUNC1(xfer);
		return;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC4(xfer);
			goto tr_setup;
		}
		return;
	}
}