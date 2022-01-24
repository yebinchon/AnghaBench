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
struct rue_softc {int /*<<< orphan*/  sc_ue; } ;
struct rue_intrpkt {int /*<<< orphan*/  rue_col_cnt; int /*<<< orphan*/  rue_crcerr_cnt; int /*<<< orphan*/  rue_rxlost_cnt; } ;
struct ifnet {int if_drv_flags; } ;
typedef  int /*<<< orphan*/  pkt ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC0 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_page_cache*,int /*<<< orphan*/ ,struct rue_intrpkt*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*) ; 
 struct rue_softc* FUNC9 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct usb_xfer *xfer, usb_error_t error)
{
	struct rue_softc *sc = FUNC9(xfer);
	struct ifnet *ifp = FUNC2(&sc->sc_ue);
	struct rue_intrpkt pkt;
	struct usb_page_cache *pc;
	int actlen;

	FUNC10(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC0(xfer)) {
	case USB_ST_TRANSFERRED:

		if (ifp && (ifp->if_drv_flags & IFF_DRV_RUNNING) &&
		    actlen >= (int)sizeof(pkt)) {

			pc = FUNC5(xfer, 0);
			FUNC3(pc, 0, &pkt, sizeof(pkt));

			FUNC1(ifp, IFCOUNTER_IERRORS, pkt.rue_rxlost_cnt);
			FUNC1(ifp, IFCOUNTER_IERRORS, pkt.rue_crcerr_cnt);
			FUNC1(ifp, IFCOUNTER_COLLISIONS, pkt.rue_col_cnt);
		}
		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		FUNC7(xfer, 0, FUNC6(xfer));
		FUNC4(xfer);
		return;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC8(xfer);
			goto tr_setup;
		}
		return;
	}
}