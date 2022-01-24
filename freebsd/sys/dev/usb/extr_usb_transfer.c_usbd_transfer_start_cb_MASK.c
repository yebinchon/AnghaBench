#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int can_cancel_immed; } ;
struct usb_xfer {scalar_t__ error; TYPE_3__ flags_int; TYPE_2__* xroot; struct usb_endpoint* endpoint; } ;
struct usb_endpoint {TYPE_1__* methods; } ;
struct TYPE_5__ {int /*<<< orphan*/  bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* start ) (struct usb_xfer*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  USBPF_XFERTAP_SUBMIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct usb_xfer *xfer = arg;
	struct usb_endpoint *ep = xfer->endpoint;

	FUNC1(xfer->xroot->bus, MA_OWNED);

	FUNC0("start\n");

#if USB_HAVE_PF
	usbpf_xfertap(xfer, USBPF_XFERTAP_SUBMIT);
#endif

	/* the transfer can now be cancelled */
	xfer->flags_int.can_cancel_immed = 1;

	/* start USB transfer, if no error */
	if (xfer->error == 0)
		(ep->methods->start) (xfer);

	/* check for transfer error */
	if (xfer->error) {
		/* some error has happened */
		FUNC3(xfer, 0);
	}
}