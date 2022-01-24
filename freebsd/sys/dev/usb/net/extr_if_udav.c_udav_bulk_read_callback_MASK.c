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
struct udav_softc {struct usb_ether sc_ue; } ;
struct udav_rxpkt {int rxstat; int /*<<< orphan*/  pktlen; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  stat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ETHER_CRC_LEN ; 
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int UDAV_RSR_ERR ; 
 int UDAV_RSR_LCS ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC5 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_ether*,struct usb_page_cache*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_page_cache*,int /*<<< orphan*/ ,struct udav_rxpkt*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC11 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_xfer*) ; 
 struct udav_softc* FUNC15 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(struct usb_xfer *xfer, usb_error_t error)
{
	struct udav_softc *sc = FUNC15(xfer);
	struct usb_ether *ue = &sc->sc_ue;
	struct ifnet *ifp = FUNC5(ue);
	struct usb_page_cache *pc;
	struct udav_rxpkt stat;
	int len;
	int actlen;

	FUNC16(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:

		if (actlen < (int)(sizeof(stat) + ETHER_CRC_LEN)) {
			FUNC2(ifp, IFCOUNTER_IERRORS, 1);
			goto tr_setup;
		}
		pc = FUNC11(xfer, 0);
		FUNC8(pc, 0, &stat, sizeof(stat));
		actlen -= sizeof(stat);
		len = FUNC4(actlen, FUNC3(stat.pktlen));
		len -= ETHER_CRC_LEN;

		if (stat.rxstat & UDAV_RSR_LCS) {
			FUNC2(ifp, IFCOUNTER_COLLISIONS, 1);
			goto tr_setup;
		}
		if (stat.rxstat & UDAV_RSR_ERR) {
			FUNC2(ifp, IFCOUNTER_IERRORS, 1);
			goto tr_setup;
		}
		FUNC6(ue, pc, sizeof(stat), len);
		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		FUNC13(xfer, 0, FUNC12(xfer));
		FUNC10(xfer);
		FUNC7(ue);
		return;

	default:			/* Error */
		FUNC0("bulk read error, %s\n",
		    FUNC9(error));

		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC14(xfer);
			goto tr_setup;
		}
		return;
	}
}