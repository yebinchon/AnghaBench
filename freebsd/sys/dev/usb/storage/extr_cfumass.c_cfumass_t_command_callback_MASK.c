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
typedef  int /*<<< orphan*/  usb_error_t ;
struct TYPE_10__ {int cdb_len; int /*<<< orphan*/  cdb; int /*<<< orphan*/  tag_type; void* tag_num; } ;
struct TYPE_8__ {int /*<<< orphan*/  targ_lun; int /*<<< orphan*/  targ_port; int /*<<< orphan*/  initid; } ;
struct TYPE_9__ {TYPE_2__ nexus; int /*<<< orphan*/  io_type; TYPE_1__* ctl_private; } ;
union ctl_io {TYPE_4__ scsiio; TYPE_3__ io_hdr; } ;
typedef  void* uint32_t ;
struct usb_xfer {int dummy; } ;
struct cfumass_softc {int sc_current_stalled; int /*<<< orphan*/  sc_queued; TYPE_5__* sc_cbw; int /*<<< orphan*/  sc_ctl_initid; void* sc_current_transfer_length; void* sc_current_residue; int /*<<< orphan*/  sc_current_flags; void* sc_current_tag; int /*<<< orphan*/  sc_current_status; int /*<<< orphan*/ * sc_ctl_io; } ;
struct TYPE_12__ {int /*<<< orphan*/  targ_port; int /*<<< orphan*/  ctl_pool_ref; } ;
struct TYPE_11__ {int bCDBLength; int /*<<< orphan*/  CBWCB; int /*<<< orphan*/  dCBWTag; int /*<<< orphan*/  bCBWLUN; int /*<<< orphan*/  bCBWFlags; int /*<<< orphan*/  dCBWDataTransferLength; int /*<<< orphan*/  dCBWSignature; } ;
struct TYPE_7__ {struct cfumass_softc* ptr; } ;

/* Variables and functions */
 void* CBWSIGNATURE ; 
 int /*<<< orphan*/  FUNC0 (struct cfumass_softc*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct cfumass_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfumass_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfumass_softc*,char*,int,...) ; 
 int /*<<< orphan*/  CTL_IO_SCSI ; 
 size_t CTL_PRIV_FRONTEND ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  CTL_TAG_UNTAGGED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC6 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 TYPE_6__ cfumass_port ; 
 int /*<<< orphan*/  cfumass_port_online ; 
 int /*<<< orphan*/  FUNC7 (struct cfumass_softc*,int /*<<< orphan*/ ,int) ; 
 union ctl_io* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (union ctl_io*) ; 
 int FUNC11 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC12 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_xfer*) ; 
 struct cfumass_softc* FUNC20 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC21(struct usb_xfer *xfer, usb_error_t usb_error)
{
	struct cfumass_softc *sc;
	uint32_t signature;
	union ctl_io *io;
	int error = 0;

	sc = FUNC20(xfer);

	FUNC4(sc->sc_ctl_io == NULL,
	    ("sc_ctl_io is %p, should be NULL", sc->sc_ctl_io));

	switch (FUNC6(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC0(sc, "USB_ST_TRANSFERRED");

		signature = FUNC5(sc->sc_cbw->dCBWSignature);
		if (signature != CBWSIGNATURE) {
			FUNC3(sc, "wrong dCBWSignature 0x%08x, "
			    "should be 0x%08x", signature, CBWSIGNATURE);
			break;
		}

		if (sc->sc_cbw->bCDBLength <= 0 ||
		    sc->sc_cbw->bCDBLength > sizeof(sc->sc_cbw->CBWCB)) {
			FUNC3(sc, "invalid bCDBLength %d, should be <= %zd",
			    sc->sc_cbw->bCDBLength, sizeof(sc->sc_cbw->CBWCB));
			break;
		}

		sc->sc_current_stalled = false;
		sc->sc_current_status = 0;
		sc->sc_current_tag = FUNC5(sc->sc_cbw->dCBWTag);
		sc->sc_current_transfer_length =
		    FUNC5(sc->sc_cbw->dCBWDataTransferLength);
		sc->sc_current_flags = sc->sc_cbw->bCBWFlags;

		/*
		 * Make sure to report proper residue if the datamove wasn't
		 * required, or wasn't called due to SCSI error.
		 */
		sc->sc_current_residue = sc->sc_current_transfer_length;

		if (FUNC7(sc,
		    sc->sc_cbw->CBWCB, sc->sc_cbw->bCDBLength) != 0)
			break;

		if (!cfumass_port_online) {
			FUNC0(sc, "cfumass port is offline; stalling");
			FUNC19(xfer);
			break;
		}

		/*
		 * Those CTL functions cannot be called with mutex held.
		 */
		FUNC2(sc);
		io = FUNC8(cfumass_port.ctl_pool_ref);
		FUNC12(io);
		io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr = sc;
		io->io_hdr.io_type = CTL_IO_SCSI;
		io->io_hdr.nexus.initid = sc->sc_ctl_initid;
		io->io_hdr.nexus.targ_port = cfumass_port.targ_port;
		io->io_hdr.nexus.targ_lun = FUNC9(sc->sc_cbw->bCBWLUN);
		io->scsiio.tag_num = FUNC5(sc->sc_cbw->dCBWTag);
		io->scsiio.tag_type = CTL_TAG_UNTAGGED;
		io->scsiio.cdb_len = sc->sc_cbw->bCDBLength;
		FUNC13(io->scsiio.cdb, sc->sc_cbw->CBWCB, sc->sc_cbw->bCDBLength);
		FUNC14(&sc->sc_queued);
		error = FUNC11(io);
		if (error != CTL_RETVAL_COMPLETE) {
			FUNC3(sc,
			    "ctl_queue() failed; error %d; stalling", error);
			FUNC10(io);
			FUNC15(&sc->sc_queued);
			FUNC1(sc);
			FUNC19(xfer);
			break;
		}

		FUNC1(sc);
		break;

	case USB_ST_SETUP:
tr_setup:
		FUNC0(sc, "USB_ST_SETUP");

		FUNC18(xfer, 0, sizeof(*sc->sc_cbw));
		FUNC17(xfer);
		break;

	default:
		if (usb_error == USB_ERR_CANCELLED) {
			FUNC0(sc, "USB_ERR_CANCELLED");
			break;
		}

		FUNC0(sc, "USB_ST_ERROR: %s", FUNC16(usb_error));

		goto tr_setup;
	}
}