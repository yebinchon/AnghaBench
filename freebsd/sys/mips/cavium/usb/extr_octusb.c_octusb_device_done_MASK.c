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
typedef  scalar_t__ usb_error_t ;
struct TYPE_4__ {scalar_t__ control_act; } ;
struct usb_xfer {struct octusb_td** td_start; TYPE_2__ flags_int; int /*<<< orphan*/  endpoint; TYPE_1__* xroot; } ;
struct octusb_td {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct usb_xfer*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct octusb_td*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct usb_xfer *xfer, usb_error_t error)
{
	FUNC1(xfer->xroot->bus, MA_OWNED);

	FUNC0(2, "xfer=%p, endpoint=%p, error=%d\n",
	    xfer, xfer->endpoint, error);

	/*
	 * 1) Free any endpoints.
	 * 2) Control transfers can be split and we should not re-open
	 *    the data pipe between transactions unless there is an error.
	 */
	if ((xfer->flags_int.control_act == 0) || (error != 0)) {
		struct octusb_td *td;

		td = xfer->td_start[0];

		FUNC2(td);
	}
	/* dequeue transfer and start next transfer */
	FUNC3(xfer, error);
}