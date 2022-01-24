#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  union ccb {int dummy; } ccb ;
typedef  int uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_7__ {int data_len; int actlen; int /*<<< orphan*/  (* callback ) (struct umass_softc*,union ccb*,int,int /*<<< orphan*/ ) ;union ccb* ccb; } ;
struct TYPE_8__ {int bCSWStatus; int /*<<< orphan*/  dCSWTag; int /*<<< orphan*/  dCSWSignature; int /*<<< orphan*/  dCSWDataResidue; } ;
struct TYPE_6__ {int /*<<< orphan*/  dCBWTag; } ;
struct umass_softc {int sc_status_try; int sc_quirks; TYPE_2__ sc_transfer; void* sc_last_xfer_index; TYPE_3__ csw; TYPE_1__ cbw; } ;

/* Variables and functions */
 int CSWSIGNATURE ; 
 int CSWSIGNATURE_IMAGINATION_DBX1 ; 
 int CSWSIGNATURE_OLYMPUS_C1 ; 
 int CSWSTATUS_FAILED ; 
 int CSWSTATUS_PHASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct umass_softc*,int /*<<< orphan*/ ,char*,int,...) ; 
 int IGNORE_RESIDUE ; 
 int /*<<< orphan*/  STATUS_CMD_FAILED ; 
 int /*<<< orphan*/  STATUS_CMD_OK ; 
 int /*<<< orphan*/  UDMASS_BBB ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* UMASS_T_BBB_COMMAND ; 
 int /*<<< orphan*/  UMASS_T_BBB_DATA_RD_CS ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC3 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int WRONG_CSWSIG ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct umass_softc*,union ccb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct umass_softc*,union ccb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct umass_softc*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct umass_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_page_cache*,int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC14 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct umass_softc* FUNC17 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC19(struct usb_xfer *xfer, usb_error_t error)
{
	struct umass_softc *sc = FUNC17(xfer);
	union ccb *ccb = sc->sc_transfer.ccb;
	struct usb_page_cache *pc;
	uint32_t residue;
	int actlen;

	FUNC18(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC3(xfer)) {
	case USB_ST_TRANSFERRED:

		/*
		 * Do a full reset if there is something wrong with the CSW:
		 */
		sc->sc_status_try = 1;

		/* Zero missing parts of the CSW: */

		if (actlen < (int)sizeof(sc->csw))
			FUNC5(&sc->csw, 0, sizeof(sc->csw));

		pc = FUNC14(xfer, 0);
		FUNC11(pc, 0, &sc->csw, actlen);

		FUNC0(UDMASS_BBB, FUNC8(sc, &sc->csw));

		residue = FUNC2(sc->csw.dCSWDataResidue);

		if ((!residue) || (sc->sc_quirks & IGNORE_RESIDUE)) {
			residue = (sc->sc_transfer.data_len -
			    sc->sc_transfer.actlen);
		}
		if (residue > sc->sc_transfer.data_len) {
			FUNC1(sc, UDMASS_BBB, "truncating residue from %d "
			    "to %d bytes\n", residue, sc->sc_transfer.data_len);
			residue = sc->sc_transfer.data_len;
		}
		/* translate weird command-status signatures: */
		if (sc->sc_quirks & WRONG_CSWSIG) {

			uint32_t temp = FUNC2(sc->csw.dCSWSignature);

			if ((temp == CSWSIGNATURE_OLYMPUS_C1) ||
			    (temp == CSWSIGNATURE_IMAGINATION_DBX1)) {
				FUNC4(sc->csw.dCSWSignature, CSWSIGNATURE);
			}
		}
		/* check CSW and handle eventual error */
		if (FUNC2(sc->csw.dCSWSignature) != CSWSIGNATURE) {
			FUNC1(sc, UDMASS_BBB, "bad CSW signature 0x%08x != 0x%08x\n",
			    FUNC2(sc->csw.dCSWSignature), CSWSIGNATURE);
			/*
			 * Invalid CSW: Wrong signature or wrong tag might
			 * indicate that we lost synchronization. Reset the
			 * device.
			 */
			goto tr_error;
		} else if (FUNC2(sc->csw.dCSWTag) != FUNC2(sc->cbw.dCBWTag)) {
			FUNC1(sc, UDMASS_BBB, "Invalid CSW: tag 0x%08x should be "
			    "0x%08x\n", FUNC2(sc->csw.dCSWTag),
			    FUNC2(sc->cbw.dCBWTag));
			goto tr_error;
		} else if (sc->csw.bCSWStatus > CSWSTATUS_PHASE) {
			FUNC1(sc, UDMASS_BBB, "Invalid CSW: status %d > %d\n",
			    sc->csw.bCSWStatus, CSWSTATUS_PHASE);
			goto tr_error;
		} else if (sc->csw.bCSWStatus == CSWSTATUS_PHASE) {
			FUNC1(sc, UDMASS_BBB, "Phase error, residue = "
			    "%d\n", residue);
			goto tr_error;
		} else if (sc->sc_transfer.actlen > sc->sc_transfer.data_len) {
			FUNC1(sc, UDMASS_BBB, "Buffer overrun %d > %d\n",
			    sc->sc_transfer.actlen, sc->sc_transfer.data_len);
			goto tr_error;
		} else if (sc->csw.bCSWStatus == CSWSTATUS_FAILED) {
			FUNC1(sc, UDMASS_BBB, "Command failed, residue = "
			    "%d\n", residue);

			sc->sc_transfer.ccb = NULL;

			sc->sc_last_xfer_index = UMASS_T_BBB_COMMAND;

			(sc->sc_transfer.callback)
			    (sc, ccb, residue, STATUS_CMD_FAILED);
		} else {
			sc->sc_transfer.ccb = NULL;

			sc->sc_last_xfer_index = UMASS_T_BBB_COMMAND;

			(sc->sc_transfer.callback)
			    (sc, ccb, residue, STATUS_CMD_OK);
		}
		return;

	case USB_ST_SETUP:
		FUNC16(xfer, 0, FUNC15(xfer));
		FUNC13(xfer);
		return;

	default:
tr_error:
		FUNC1(sc, UDMASS_BBB, "Failed to read CSW: %s, try %d\n",
		    FUNC12(error), sc->sc_status_try);

		if ((error == USB_ERR_CANCELLED) ||
		    (sc->sc_status_try)) {
			FUNC9(xfer, error);
		} else {
			sc->sc_status_try = 1;
			FUNC10(sc, UMASS_T_BBB_DATA_RD_CS);
		}
		return;
	}
}