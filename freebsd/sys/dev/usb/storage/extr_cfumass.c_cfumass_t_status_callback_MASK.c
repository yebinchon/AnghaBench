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
struct usb_xfer {int dummy; } ;
struct cfumass_softc {int sc_current_stalled; int /*<<< orphan*/  sc_current_status; TYPE_1__* sc_csw; int /*<<< orphan*/  sc_current_residue; int /*<<< orphan*/  sc_current_tag; int /*<<< orphan*/ * sc_ctl_io; } ;
struct TYPE_2__ {int /*<<< orphan*/  bCSWStatus; int /*<<< orphan*/  dCSWDataResidue; int /*<<< orphan*/  dCSWTag; int /*<<< orphan*/  dCSWSignature; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfumass_softc*,char*,...) ; 
 int /*<<< orphan*/  CFUMASS_T_COMMAND ; 
 int /*<<< orphan*/  CSWSIGNATURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC2 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cfumass_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*) ; 
 struct cfumass_softc* FUNC9 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC10(struct usb_xfer *xfer, usb_error_t usb_error)
{
	struct cfumass_softc *sc;

	sc = FUNC9(xfer);

	FUNC1(sc->sc_ctl_io == NULL,
	    ("sc_ctl_io is %p, should be NULL", sc->sc_ctl_io));

	switch (FUNC2(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC0(sc, "USB_ST_TRANSFERRED");

		FUNC4(sc, CFUMASS_T_COMMAND);
		break;

	case USB_ST_SETUP:
tr_setup:
		FUNC0(sc, "USB_ST_SETUP");

		if (sc->sc_current_residue > 0 && !sc->sc_current_stalled) {
			FUNC0(sc, "non-zero residue, stalling");
			FUNC8(xfer);
			sc->sc_current_stalled = true;
		}

		FUNC3(sc->sc_csw->dCSWSignature, CSWSIGNATURE);
		FUNC3(sc->sc_csw->dCSWTag, sc->sc_current_tag);
		FUNC3(sc->sc_csw->dCSWDataResidue, sc->sc_current_residue);
		sc->sc_csw->bCSWStatus = sc->sc_current_status;

		FUNC7(xfer, 0, sizeof(*sc->sc_csw));
		FUNC6(xfer);
		break;

	default:
		if (usb_error == USB_ERR_CANCELLED) {
			FUNC0(sc, "USB_ERR_CANCELLED");
			break;
		}

		FUNC0(sc, "USB_ST_ERROR: %s",
		    FUNC5(usb_error));

		goto tr_setup;
	}
}