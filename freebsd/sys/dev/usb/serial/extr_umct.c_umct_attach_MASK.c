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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct usb_xfer {int dummy; } ;
struct TYPE_2__ {scalar_t__ idProduct; int /*<<< orphan*/  bIfaceNum; } ;
struct usb_attach_arg {TYPE_1__ info; int /*<<< orphan*/  device; } ;
struct umct_softc {int sc_swap_cb; int sc_obufsize; int /*<<< orphan*/  sc_super_ucom; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_ucom; struct usb_xfer** sc_xfer; int /*<<< orphan*/  sc_iface_no; int /*<<< orphan*/  sc_unit; int /*<<< orphan*/  sc_udev; } ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 size_t UMCT_BULK_DT_RD ; 
 size_t UMCT_BULK_DT_WR ; 
 int /*<<< orphan*/  UMCT_IFACE_INDEX ; 
 size_t UMCT_INTR_DT_RD ; 
 int /*<<< orphan*/  UMCT_N_TRANSFER ; 
 scalar_t__ USB_PRODUCT_MCT_SITECOM_USB232 ; 
 struct usb_attach_arg* FUNC0 (int /*<<< orphan*/ ) ; 
 struct umct_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct umct_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  umct_callback ; 
 int /*<<< orphan*/  umct_config ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_xfer**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct umct_softc*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct usb_xfer*) ; 
 int FUNC12 (struct usb_xfer*) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC0(dev);
	struct umct_softc *sc = FUNC1(dev);
	int32_t error;
	uint16_t maxp;
	uint8_t iface_index;

	sc->sc_udev = uaa->device;
	sc->sc_unit = FUNC2(dev);

	FUNC4(dev);
	FUNC5(&sc->sc_mtx, "umct", NULL, MTX_DEF);
	FUNC7(&sc->sc_super_ucom);

	sc->sc_iface_no = uaa->info.bIfaceNum;

	iface_index = UMCT_IFACE_INDEX;
	error = FUNC10(uaa->device, &iface_index,
	    sc->sc_xfer, umct_config, UMCT_N_TRANSFER, sc, &sc->sc_mtx);

	if (error) {
		FUNC3(dev, "allocating USB "
		    "transfers failed\n");
		goto detach;
	}

	/*
	 * The real bulk-in endpoint is also marked as an interrupt.
	 * The only way to differentiate it from the real interrupt
	 * endpoint is to look at the wMaxPacketSize field.
	 */
	maxp = FUNC11(sc->sc_xfer[UMCT_BULK_DT_RD]);
	if (maxp == 0x2) {

		/* guessed wrong - switch around endpoints */

		struct usb_xfer *temp = sc->sc_xfer[UMCT_INTR_DT_RD];

		sc->sc_xfer[UMCT_INTR_DT_RD] = sc->sc_xfer[UMCT_BULK_DT_RD];
		sc->sc_xfer[UMCT_BULK_DT_RD] = temp;
		sc->sc_swap_cb = 1;
	}

	sc->sc_obufsize = FUNC12(sc->sc_xfer[UMCT_BULK_DT_WR]);

	if (uaa->info.idProduct == USB_PRODUCT_MCT_SITECOM_USB232) {
		if (sc->sc_obufsize > 16) {
			sc->sc_obufsize = 16;
		}
	}
	error = FUNC6(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
	    &umct_callback, &sc->sc_mtx);
	if (error) {
		goto detach;
	}
	FUNC8(&sc->sc_super_ucom, dev);

	return (0);			/* success */

detach:
	FUNC9(dev);
	return (ENXIO);			/* failure */
}