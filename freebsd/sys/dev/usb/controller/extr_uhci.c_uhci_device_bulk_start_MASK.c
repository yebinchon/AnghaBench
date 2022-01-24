#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  td_self; } ;
typedef  TYPE_5__ uhci_td_t ;
struct TYPE_17__ {int /*<<< orphan*/  sc_bulk_p_last; } ;
typedef  TYPE_6__ uhci_softc_t ;
struct TYPE_18__ {int /*<<< orphan*/  page_cache; int /*<<< orphan*/  qh_e_next; TYPE_5__* e_next; } ;
typedef  TYPE_7__ uhci_qh_t ;
struct TYPE_14__ {size_t curr_dma_set; int bandwidth_reclaimed; } ;
struct usb_xfer {TYPE_3__ flags_int; TYPE_4__* xroot; TYPE_7__** qh_start; } ;
struct TYPE_15__ {TYPE_2__* udev; int /*<<< orphan*/  bus; } ;
struct TYPE_12__ {scalar_t__ self_suspended; } ;
struct TYPE_13__ {TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 TYPE_5__* FUNC3 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct usb_xfer *xfer)
{
	uhci_softc_t *sc = FUNC1(xfer->xroot->bus);
	uhci_td_t *td;
	uhci_qh_t *qh;

	/* setup TD's */
	td = FUNC3(xfer);

	/* setup QH */
	qh = xfer->qh_start[xfer->flags_int.curr_dma_set];

	qh->e_next = td;
	qh->qh_e_next = td->td_self;

	if (xfer->xroot->udev->flags.self_suspended == 0) {
		FUNC0(qh, sc->sc_bulk_p_last);
		FUNC2(sc);
		xfer->flags_int.bandwidth_reclaimed = 1;
	} else {
		FUNC5(qh->page_cache);
	}

	/* put transfer on interrupt queue */
	FUNC4(xfer);
}