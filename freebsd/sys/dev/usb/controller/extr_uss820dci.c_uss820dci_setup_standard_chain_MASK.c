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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct uss820dci_td {int dummy; } ;
struct uss820dci_softc {int dummy; } ;
struct uss820_std_temp {scalar_t__ offset; int setup_alt_next; int did_stall; scalar_t__ len; int short_pkt; struct uss820dci_td* td; int /*<<< orphan*/ * func; int /*<<< orphan*/ * pc; struct uss820dci_td* td_next; int /*<<< orphan*/  max_frame_size; } ;
struct TYPE_6__ {scalar_t__ control_act; scalar_t__ control_xfr; scalar_t__ isochronous_xfr; scalar_t__ control_hdr; int /*<<< orphan*/  control_stall; scalar_t__ short_frames_ok; } ;
struct TYPE_5__ {scalar_t__ force_short_xfer; } ;
struct usb_xfer {int endpointno; scalar_t__* frlengths; int nframes; struct uss820dci_td* td_transfer_last; TYPE_3__ flags_int; int /*<<< orphan*/ * frbuffers; TYPE_2__ flags; TYPE_1__* xroot; struct uss820dci_td** td_start; struct uss820dci_td* td_transfer_cache; struct uss820dci_td* td_transfer_first; int /*<<< orphan*/  max_frame_size; int /*<<< orphan*/  sumlen; int /*<<< orphan*/  address; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int UE_ADDR ; 
 int UE_DIR_IN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct uss820dci_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uss820dci_data_rx ; 
 int /*<<< orphan*/  uss820dci_data_tx ; 
 int /*<<< orphan*/  uss820dci_data_tx_sync ; 
 int /*<<< orphan*/  uss820dci_setup_rx ; 
 int /*<<< orphan*/  FUNC4 (struct uss820_std_temp*) ; 

__attribute__((used)) static void
FUNC5(struct usb_xfer *xfer)
{
	struct uss820_std_temp temp;
	struct uss820dci_softc *sc;
	struct uss820dci_td *td;
	uint32_t x;
	uint8_t ep_no;

	FUNC0(9, "addr=%d endpt=%d sumlen=%d speed=%d\n",
	    xfer->address, FUNC1(xfer->endpointno),
	    xfer->sumlen, FUNC3(xfer->xroot->udev));

	temp.max_frame_size = xfer->max_frame_size;

	td = xfer->td_start[0];
	xfer->td_transfer_first = td;
	xfer->td_transfer_cache = td;

	/* setup temp */

	temp.pc = NULL;
	temp.td = NULL;
	temp.td_next = xfer->td_start[0];
	temp.offset = 0;
	temp.setup_alt_next = xfer->flags_int.short_frames_ok ||
	    xfer->flags_int.isochronous_xfr;
	temp.did_stall = !xfer->flags_int.control_stall;

	sc = FUNC2(xfer->xroot->bus);
	ep_no = (xfer->endpointno & UE_ADDR);

	/* check if we should prepend a setup message */

	if (xfer->flags_int.control_xfr) {
		if (xfer->flags_int.control_hdr) {

			temp.func = &uss820dci_setup_rx;
			temp.len = xfer->frlengths[0];
			temp.pc = xfer->frbuffers + 0;
			temp.short_pkt = temp.len ? 1 : 0;
			/* check for last frame */
			if (xfer->nframes == 1) {
				/* no STATUS stage yet, SETUP is last */
				if (xfer->flags_int.control_act)
					temp.setup_alt_next = 0;
			}

			FUNC4(&temp);
		}
		x = 1;
	} else {
		x = 0;
	}

	if (x != xfer->nframes) {
		if (xfer->endpointno & UE_DIR_IN) {
			temp.func = &uss820dci_data_tx;
		} else {
			temp.func = &uss820dci_data_rx;
		}

		/* setup "pc" pointer */
		temp.pc = xfer->frbuffers + x;
	}
	while (x != xfer->nframes) {

		/* DATA0 / DATA1 message */

		temp.len = xfer->frlengths[x];

		x++;

		if (x == xfer->nframes) {
			if (xfer->flags_int.control_xfr) {
				if (xfer->flags_int.control_act) {
					temp.setup_alt_next = 0;
				}
			} else {
				temp.setup_alt_next = 0;
			}
		}
		if (temp.len == 0) {

			/* make sure that we send an USB packet */

			temp.short_pkt = 0;

		} else {

			/* regular data transfer */

			temp.short_pkt = (xfer->flags.force_short_xfer) ? 0 : 1;
		}

		FUNC4(&temp);

		if (xfer->flags_int.isochronous_xfr) {
			temp.offset += temp.len;
		} else {
			/* get next Page Cache pointer */
			temp.pc = xfer->frbuffers + x;
		}
	}

	/* check for control transfer */
	if (xfer->flags_int.control_xfr) {
		uint8_t need_sync;

		/* always setup a valid "pc" pointer for status and sync */
		temp.pc = xfer->frbuffers + 0;
		temp.len = 0;
		temp.short_pkt = 0;
		temp.setup_alt_next = 0;

		/* check if we should append a status stage */
		if (!xfer->flags_int.control_act) {

			/*
			 * Send a DATA1 message and invert the current
			 * endpoint direction.
			 */
			if (xfer->endpointno & UE_DIR_IN) {
				temp.func = &uss820dci_data_rx;
				need_sync = 0;
			} else {
				temp.func = &uss820dci_data_tx;
				need_sync = 1;
			}
			temp.len = 0;
			temp.short_pkt = 0;

			FUNC4(&temp);
			if (need_sync) {
				/* we need a SYNC point after TX */
				temp.func = &uss820dci_data_tx_sync;
				FUNC4(&temp);
			}
		}
	}
	/* must have at least one frame! */
	td = temp.td;
	xfer->td_transfer_last = td;
}