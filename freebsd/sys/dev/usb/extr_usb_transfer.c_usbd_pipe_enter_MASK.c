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
struct TYPE_4__ {int can_cancel_immed; } ;
struct usb_xfer {size_t stream_id; TYPE_3__* xroot; scalar_t__ error; TYPE_1__ flags_int; struct usb_endpoint* endpoint; } ;
struct usb_endpoint {int /*<<< orphan*/ * endpoint_q; TYPE_2__* methods; } ;
struct TYPE_6__ {int /*<<< orphan*/  bus; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* enter ) (struct usb_xfer*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ) ; 

void
FUNC7(struct usb_xfer *xfer)
{
	struct usb_endpoint *ep;

	FUNC3(xfer, MA_OWNED);

	FUNC1(xfer->xroot->bus);

	ep = xfer->endpoint;

	FUNC0("enter\n");

	/* the transfer can now be cancelled */
	xfer->flags_int.can_cancel_immed = 1;

	/* enter the transfer */
	(ep->methods->enter) (xfer);

	/* check for transfer error */
	if (xfer->error) {
		/* some error has happened */
		FUNC6(xfer, 0);
		FUNC2(xfer->xroot->bus);
		return;
	}

	/* start the transfer */
	FUNC5(&ep->endpoint_q[xfer->stream_id], xfer);
	FUNC2(xfer->xroot->bus);
}