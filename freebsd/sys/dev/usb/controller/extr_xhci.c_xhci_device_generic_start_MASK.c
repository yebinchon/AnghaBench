#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_xfer {scalar_t__ timeout; TYPE_2__* xroot; int /*<<< orphan*/  stream_id; int /*<<< orphan*/  endpoint; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {int /*<<< orphan*/  intr_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xhci_timeout ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC5(struct usb_xfer *xfer)
{
	FUNC0("\n");

	/* try to insert xfer on HW queue */
	FUNC4(xfer);

	/* try to multi buffer */
	FUNC3(xfer->endpoint,
	    xfer->stream_id, NULL);

	/* add transfer last on interrupt queue */
	FUNC1(&xfer->xroot->bus->intr_q, xfer);

	/* start timeout, if any */
	if (xfer->timeout != 0)
		FUNC2(xfer, &xhci_timeout, xfer->timeout);
}