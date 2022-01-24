#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  td_self; } ;
typedef  TYPE_5__ uhci_td_t ;
struct TYPE_16__ {int /*<<< orphan*/  sc_fs_ctl_p_last; int /*<<< orphan*/  sc_ls_ctl_p_last; } ;
typedef  TYPE_6__ uhci_softc_t ;
struct TYPE_17__ {int /*<<< orphan*/  page_cache; int /*<<< orphan*/  qh_e_next; TYPE_5__* e_next; } ;
typedef  TYPE_7__ uhci_qh_t ;
struct TYPE_11__ {size_t curr_dma_set; } ;
struct usb_xfer {TYPE_4__* xroot; TYPE_1__ flags_int; TYPE_7__** qh_start; } ;
struct TYPE_14__ {TYPE_3__* udev; int /*<<< orphan*/  bus; } ;
struct TYPE_12__ {scalar_t__ self_suspended; } ;
struct TYPE_13__ {scalar_t__ speed; TYPE_2__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ USB_SPEED_LOW ; 
 TYPE_5__* FUNC2 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct usb_xfer *xfer)
{
	uhci_softc_t *sc = FUNC1(xfer->xroot->bus);
	uhci_qh_t *qh;
	uhci_td_t *td;

	/* setup TD's */
	td = FUNC2(xfer);

	/* setup QH */
	qh = xfer->qh_start[xfer->flags_int.curr_dma_set];

	qh->e_next = td;
	qh->qh_e_next = td->td_self;

	/*
	 * NOTE: some devices choke on bandwidth- reclamation for control
	 * transfers
	 */
	if (xfer->xroot->udev->flags.self_suspended == 0) {
		if (xfer->xroot->udev->speed == USB_SPEED_LOW) {
			FUNC0(qh, sc->sc_ls_ctl_p_last);
		} else {
			FUNC0(qh, sc->sc_fs_ctl_p_last);
		}
	} else {
		FUNC4(qh->page_cache);
	}
	/* put transfer on interrupt queue */
	FUNC3(xfer);
}