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
typedef  int /*<<< orphan*/  uint64_t ;
struct usb_xfer {int dummy; } ;
struct ieee80211com {int /*<<< orphan*/  ic_ierrors; } ;
struct urtw_softc {int /*<<< orphan*/  sc_txstatus; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct urtw_softc*) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 void* FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*) ; 
 struct urtw_softc* FUNC9 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC10(struct usb_xfer *xfer, usb_error_t error)
{
	struct urtw_softc *sc = FUNC9(xfer);
	struct ieee80211com *ic = &sc->sc_ic;
	void *dma_buf = FUNC6(xfer, 0);

	FUNC0(sc);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC4(xfer);
		/* FALLTHROUGH */
	case USB_ST_SETUP:
setup:
		FUNC3(dma_buf, &sc->sc_txstatus, sizeof(uint64_t));
		FUNC7(xfer, 0, sizeof(uint64_t));
		FUNC5(xfer);
		break;
	default:
		if (error != USB_ERR_CANCELLED) {
			FUNC8(xfer);
			FUNC2(ic->ic_ierrors, 1);
			goto setup;
		}
		break;
	}
}