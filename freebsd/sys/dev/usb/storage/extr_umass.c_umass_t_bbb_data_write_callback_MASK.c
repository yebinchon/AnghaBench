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
typedef  int uint32_t ;
struct usb_xfer {int dummy; } ;
struct TYPE_2__ {int data_rem; int data_ptr; int actlen; int /*<<< orphan*/  data_timeout; } ;
struct umass_softc {TYPE_1__ sc_transfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct umass_softc*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  UDMASS_BBB ; 
 int /*<<< orphan*/  UMASS_T_BBB_DATA_WR_CS ; 
 int /*<<< orphan*/  UMASS_T_BBB_STATUS ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct umass_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int FUNC5 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 struct umass_softc* FUNC8 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct usb_xfer *xfer, usb_error_t error)
{
	struct umass_softc *sc = FUNC8(xfer);
	uint32_t max_bulk = FUNC5(xfer);
	int actlen, sumlen;

	FUNC9(xfer, &actlen, &sumlen, NULL, NULL);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		sc->sc_transfer.data_rem -= actlen;
		sc->sc_transfer.data_ptr += actlen;
		sc->sc_transfer.actlen += actlen;

		if (actlen < sumlen) {
			/* short transfer */
			sc->sc_transfer.data_rem = 0;
		}
	case USB_ST_SETUP:
		FUNC0(sc, UDMASS_BBB, "max_bulk=%d, data_rem=%d\n",
		    max_bulk, sc->sc_transfer.data_rem);

		if (sc->sc_transfer.data_rem == 0) {
			FUNC3(sc, UMASS_T_BBB_STATUS);
			return;
		}
		if (max_bulk > sc->sc_transfer.data_rem) {
			max_bulk = sc->sc_transfer.data_rem;
		}
		FUNC7(xfer, sc->sc_transfer.data_timeout);

		FUNC6(xfer, 0, sc->sc_transfer.data_ptr,
		    max_bulk);

		FUNC4(xfer);
		return;

	default:			/* Error */
		if (error == USB_ERR_CANCELLED) {
			FUNC2(xfer, error);
		} else {
			FUNC3(sc, UMASS_T_BBB_DATA_WR_CS);
		}
		return;
	}
}