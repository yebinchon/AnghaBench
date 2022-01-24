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
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct usb_xfer *xfer, usb_error_t error)
{
	int actlen;
	int aframes;

	FUNC4(xfer, &actlen, NULL, &aframes, NULL);

	FUNC0("st=%d aframes=%d actlen=%d bytes\n",
	    FUNC1(xfer), aframes, actlen);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		break;

	case USB_ST_SETUP:
tr_setup:
		break;

	default:			/* Error */
		FUNC0("error=%s\n", FUNC2(error));

		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC3(xfer);
			goto tr_setup;
		}
		break;
	}
}