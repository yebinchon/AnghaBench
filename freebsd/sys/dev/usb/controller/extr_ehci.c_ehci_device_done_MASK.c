#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
struct TYPE_10__ {size_t curr_dma_set; } ;
struct usb_xfer {size_t qh_pos; int /*<<< orphan*/ * td_transfer_last; int /*<<< orphan*/ * td_transfer_first; TYPE_2__ flags_int; int /*<<< orphan*/ * qh_start; TYPE_8__* endpoint; TYPE_1__* xroot; } ;
struct usb_pipe_methods {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/ * sc_intr_p_last; int /*<<< orphan*/  sc_async_p_last; int /*<<< orphan*/  sc_bus; } ;
typedef  TYPE_3__ ehci_softc_t ;
struct TYPE_12__ {int /*<<< orphan*/  toggle_next; struct usb_pipe_methods* methods; } ;
struct TYPE_9__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct usb_xfer*,TYPE_8__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_pipe_methods const ehci_device_bulk_methods ; 
 struct usb_pipe_methods const ehci_device_ctrl_methods ; 
 struct usb_pipe_methods const ehci_device_intr_methods ; 
 struct usb_pipe_methods const ehci_device_isoc_fs_methods ; 
 struct usb_pipe_methods const ehci_device_isoc_hs_methods ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,struct usb_xfer*) ; 
 int ehcidebug ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct usb_xfer *xfer, usb_error_t error)
{
	const struct usb_pipe_methods *methods = xfer->endpoint->methods;
	ehci_softc_t *sc = FUNC2(xfer->xroot->bus);

	FUNC4(&sc->sc_bus, MA_OWNED);

	FUNC1(2, "xfer=%p, endpoint=%p, error=%d\n",
	    xfer, xfer->endpoint, error);

	if ((methods == &ehci_device_bulk_methods) ||
	    (methods == &ehci_device_ctrl_methods)) {
#ifdef USB_DEBUG
		if (ehcidebug > 8) {
			DPRINTF("nexttog=%d; data after transfer:\n",
			    xfer->endpoint->toggle_next);
			ehci_dump_sqtds(sc,
			    xfer->td_transfer_first);
		}
#endif

		FUNC3(xfer->qh_start[xfer->flags_int.curr_dma_set],
		    sc->sc_async_p_last);
	}
	if (methods == &ehci_device_intr_methods) {
		FUNC3(xfer->qh_start[xfer->flags_int.curr_dma_set],
		    sc->sc_intr_p_last[xfer->qh_pos]);
	}
	/*
	 * Only finish isochronous transfers once which will update
	 * "xfer->frlengths".
	 */
	if (xfer->td_transfer_first &&
	    xfer->td_transfer_last) {
		if (methods == &ehci_device_isoc_fs_methods) {
			FUNC6(sc, xfer);
		}
		if (methods == &ehci_device_isoc_hs_methods) {
			FUNC7(sc, xfer);
		}
		xfer->td_transfer_first = NULL;
		xfer->td_transfer_last = NULL;
	}
	/* dequeue transfer and start next transfer */
	FUNC8(xfer, error);
}