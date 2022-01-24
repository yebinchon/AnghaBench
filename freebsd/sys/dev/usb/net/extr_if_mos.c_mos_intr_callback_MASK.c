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
typedef  int /*<<< orphan*/  uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct mos_softc {int /*<<< orphan*/  sc_ue; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  pkt ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 struct ifnet* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_page_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct usb_page_cache* FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 struct mos_softc* FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct usb_xfer *xfer, usb_error_t error)
{
	struct mos_softc *sc = FUNC7(xfer);
	struct ifnet *ifp = FUNC3(&sc->sc_ue);
	struct usb_page_cache *pc;
	uint32_t pkt;
	int actlen;

	FUNC2(ifp, IFCOUNTER_OERRORS, 1);

	FUNC8(xfer, &actlen, NULL, NULL, NULL);
	FUNC0("actlen %i", actlen);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:

		pc = FUNC5(xfer, 0);
		FUNC4(pc, 0, &pkt, sizeof(pkt));
		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		return;
	default:
		if (error != USB_ERR_CANCELLED) {
			FUNC6(xfer);
			goto tr_setup;
		}
		return;
	}
}