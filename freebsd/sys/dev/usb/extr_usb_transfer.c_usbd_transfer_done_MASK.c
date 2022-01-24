#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usb_error_t ;
struct usb_xfer_queue {struct usb_xfer* curr; } ;
struct usb_xfer_root {TYPE_6__* bus; struct usb_xfer_queue dma_q; int /*<<< orphan*/  xfer_mtx; } ;
struct TYPE_7__ {scalar_t__ control_act; int /*<<< orphan*/  transferring; } ;
struct usb_xfer {scalar_t__ error; TYPE_5__* endpoint; int /*<<< orphan*/  timeout_handle; TYPE_1__ flags_int; struct usb_xfer_root* xroot; } ;
struct TYPE_9__ {int /*<<< orphan*/ * uds_requests; } ;
struct TYPE_8__ {int /*<<< orphan*/ * uds_requests; } ;
struct TYPE_12__ {TYPE_3__ stats_ok; TYPE_2__ stats_err; } ;
struct TYPE_11__ {TYPE_4__* edesc; } ;
struct TYPE_10__ {size_t bmAttributes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t UE_XFERTYPE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ USB_ERR_NORMAL_COMPLETION ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer_queue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 

void
FUNC8(struct usb_xfer *xfer, usb_error_t error)
{
	struct usb_xfer_root *info = xfer->xroot;

	FUNC1(info->bus, MA_OWNED);

	FUNC0("err=%s\n", FUNC6(error));

	/*
	 * If we are not transferring then just return.
	 * This can happen during transfer cancel.
	 */
	if (!xfer->flags_int.transferring) {
		FUNC0("not transferring\n");
		/* end of control transfer, if any */
		xfer->flags_int.control_act = 0;
		return;
	}
	/* only set transfer error, if not already set */
	if (xfer->error == USB_ERR_NORMAL_COMPLETION)
		xfer->error = error;

	/* stop any callouts */
	FUNC3(&xfer->timeout_handle);

	/*
	 * If we are waiting on a queue, just remove the USB transfer
	 * from the queue, if any. We should have the required locks
	 * locked to do the remove when this function is called.
	 */
	FUNC7(xfer);

#if USB_HAVE_BUSDMA
	if (mtx_owned(info->xfer_mtx)) {
		struct usb_xfer_queue *pq;

		/*
		 * If the private USB lock is not locked, then we assume
		 * that the BUS-DMA load stage has been passed:
		 */
		pq = &info->dma_q;

		if (pq->curr == xfer) {
			/* start the next BUS-DMA load, if any */
			usb_command_wrapper(pq, NULL);
		}
	}
#endif
	/* keep some statistics */
	if (xfer->error) {
		info->bus->stats_err.uds_requests
		    [xfer->endpoint->edesc->bmAttributes & UE_XFERTYPE]++;
	} else {
		info->bus->stats_ok.uds_requests
		    [xfer->endpoint->edesc->bmAttributes & UE_XFERTYPE]++;
	}

	/* call the USB transfer callback */
	FUNC5(xfer);
}