#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int uint16_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_ether {int dummy; } ;
struct rue_softc {struct usb_ether sc_ue; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int RUE_RXSTAT_VALID ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int) ; 
 struct ifnet* FUNC4 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ether*,struct usb_page_cache*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_page_cache*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC10 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*) ; 
 struct rue_softc* FUNC14 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16(struct usb_xfer *xfer, usb_error_t error)
{
	struct rue_softc *sc = FUNC14(xfer);
	struct usb_ether *ue = &sc->sc_ue;
	struct ifnet *ifp = FUNC4(ue);
	struct usb_page_cache *pc;
	uint16_t status;
	int actlen;

	FUNC15(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:

		if (actlen < 4) {
			FUNC2(ifp, IFCOUNTER_IERRORS, 1);
			goto tr_setup;
		}
		pc = FUNC10(xfer, 0);
		FUNC7(pc, actlen - 4, &status, sizeof(status));
		actlen -= 4;

		/* check receive packet was valid or not */
		status = FUNC3(status);
		if ((status & RUE_RXSTAT_VALID) == 0) {
			FUNC2(ifp, IFCOUNTER_IERRORS, 1);
			goto tr_setup;
		}
		FUNC5(ue, pc, 0, actlen);
		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		FUNC12(xfer, 0, FUNC11(xfer));
		FUNC9(xfer);
		FUNC6(ue);
		return;

	default:			/* Error */
		FUNC0("bulk read error, %s\n",
		    FUNC8(error));

		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC13(xfer);
			goto tr_setup;
		}
		return;
	}
}