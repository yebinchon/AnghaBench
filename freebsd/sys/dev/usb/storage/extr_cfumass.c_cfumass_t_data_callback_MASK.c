#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
struct TYPE_2__ {int ext_data_filled; int kern_data_resid; int kern_sg_entries; int kern_data_len; int kern_rel_offset; scalar_t__ kern_data_ptr; int /*<<< orphan*/  (* be_move_done ) (union ctl_io*) ;} ;
union ctl_io {TYPE_1__ scsiio; } ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct usb_xfer {int dummy; } ;
struct ctl_sg_entry {int len; scalar_t__ addr; } ;
struct cfumass_softc {int sc_current_residue; int sc_current_transfer_length; union ctl_io* sc_ctl_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfumass_softc*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC2 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 int FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct cfumass_softc* FUNC9 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct usb_xfer *xfer, usb_error_t usb_error)
{
	struct cfumass_softc *sc = FUNC9(xfer);
	union ctl_io *io = sc->sc_ctl_io;
	uint32_t max_bulk;
	struct ctl_sg_entry sg_entry, *sglist;
	int actlen, sumlen, sg_count;

	switch (FUNC2(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC0(sc, "USB_ST_TRANSFERRED");

		FUNC10(xfer, &actlen, &sumlen, NULL, NULL);
		sc->sc_current_residue -= actlen;
		io->scsiio.ext_data_filled += actlen;
		io->scsiio.kern_data_resid -= actlen;
		if (actlen < sumlen ||
		    sc->sc_current_residue == 0 ||
		    io->scsiio.kern_data_resid == 0) {
			sc->sc_ctl_io = NULL;
			io->scsiio.be_move_done(io);
			break;
		}
		/* FALLTHROUGH */

	case USB_ST_SETUP:
tr_setup:
		FUNC0(sc, "USB_ST_SETUP");

		if (io->scsiio.kern_sg_entries > 0) {
			sglist = (struct ctl_sg_entry *)io->scsiio.kern_data_ptr;
			sg_count = io->scsiio.kern_sg_entries;
		} else {
			sglist = &sg_entry;
			sglist->addr = io->scsiio.kern_data_ptr;
			sglist->len = io->scsiio.kern_data_len;
			sg_count = 1;
		}

		sumlen = io->scsiio.ext_data_filled -
		    io->scsiio.kern_rel_offset;
		while (sumlen >= sglist->len && sg_count > 0) {
			sumlen -= sglist->len;
			sglist++;
			sg_count--;
		}
		FUNC1(sg_count > 0, ("Run out of S/G list entries"));

		max_bulk = FUNC7(xfer);
		actlen = FUNC3(sglist->len - sumlen, max_bulk);
		actlen = FUNC3(actlen, sc->sc_current_transfer_length -
		    io->scsiio.ext_data_filled);
		FUNC0(sc, "requested %d, done %d, max_bulk %d, "
		    "segment %zd => transfer %d",
		    sc->sc_current_transfer_length, io->scsiio.ext_data_filled,
		    max_bulk, sglist->len - sumlen, actlen);

		FUNC8(xfer, 0,
		    (uint8_t *)sglist->addr + sumlen, actlen);
		FUNC6(xfer);
		break;

	default:
		if (usb_error == USB_ERR_CANCELLED) {
			FUNC0(sc, "USB_ERR_CANCELLED");
			break;
		}
		FUNC0(sc, "USB_ST_ERROR: %s", FUNC5(usb_error));
		goto tr_setup;
	}
}