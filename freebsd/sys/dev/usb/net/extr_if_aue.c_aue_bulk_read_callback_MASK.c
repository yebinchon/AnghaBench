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
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_ether {int dummy; } ;
struct ifnet {int dummy; } ;
struct aue_softc {int sc_flags; struct usb_ether sc_ue; } ;
struct aue_rxpkt {int /*<<< orphan*/  aue_rxstat; } ;
typedef  int /*<<< orphan*/  stat ;

/* Variables and functions */
 int AUE_FLAG_VER_2 ; 
 int /*<<< orphan*/  AUE_RXSTAT_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  ETHER_CRC_LEN ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC2 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 struct ifnet* FUNC4 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ether*,struct usb_page_cache*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_page_cache*,int,struct aue_rxpkt*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC10 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*) ; 
 struct aue_softc* FUNC14 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16(struct usb_xfer *xfer, usb_error_t error)
{
	struct aue_softc *sc = FUNC14(xfer);
	struct usb_ether *ue = &sc->sc_ue;
	struct ifnet *ifp = FUNC4(ue);
	struct aue_rxpkt stat;
	struct usb_page_cache *pc;
	int actlen;

	FUNC15(xfer, &actlen, NULL, NULL, NULL);
	pc = FUNC10(xfer, 0);

	switch (FUNC2(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC1(11, "received %d bytes\n", actlen);

		if (sc->sc_flags & AUE_FLAG_VER_2) {

			if (actlen == 0) {
				FUNC3(ifp, IFCOUNTER_IERRORS, 1);
				goto tr_setup;
			}
		} else {

			if (actlen <= (int)(sizeof(stat) + ETHER_CRC_LEN)) {
				FUNC3(ifp, IFCOUNTER_IERRORS, 1);
				goto tr_setup;
			}
			FUNC7(pc, actlen - sizeof(stat), &stat,
			    sizeof(stat));

			/*
			 * turn off all the non-error bits in the rx status
			 * word:
			 */
			stat.aue_rxstat &= AUE_RXSTAT_MASK;
			if (stat.aue_rxstat) {
				FUNC3(ifp, IFCOUNTER_IERRORS, 1);
				goto tr_setup;
			}
			/* No errors; receive the packet. */
			actlen -= (sizeof(stat) + ETHER_CRC_LEN);
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