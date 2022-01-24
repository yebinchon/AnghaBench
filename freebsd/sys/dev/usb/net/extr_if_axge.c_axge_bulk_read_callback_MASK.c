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
struct axge_softc {struct usb_ether sc_ue; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC0 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC1 (struct usb_ether*,struct usb_page_cache*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC4 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 struct axge_softc* FUNC8 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct usb_xfer *xfer, usb_error_t error)
{
	struct axge_softc *sc;
	struct usb_ether *ue;
	struct usb_page_cache *pc;
	int actlen;

	sc = FUNC8(xfer);
	ue = &sc->sc_ue;
	FUNC9(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC0(xfer)) {
	case USB_ST_TRANSFERRED:
		pc = FUNC4(xfer, 0);
		FUNC1(ue, pc, actlen);

		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		FUNC6(xfer, 0, FUNC5(xfer));
		FUNC3(xfer);
		FUNC2(ue);
		break;

	default:
		if (error != USB_ERR_CANCELLED) {
			FUNC7(xfer);
			goto tr_setup;
		}
		break;
	}
}