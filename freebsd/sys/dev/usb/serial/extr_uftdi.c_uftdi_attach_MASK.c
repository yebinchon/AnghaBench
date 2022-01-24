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
struct TYPE_2__ {int /*<<< orphan*/  bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int /*<<< orphan*/  device; } ;
struct uftdi_softc {int sc_last_lcr; int /*<<< orphan*/  sc_super_ucom; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_bitmode; int /*<<< orphan*/  sc_unit; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_udev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENXIO ; 
 int FUNC1 (int) ; 
 int FTDI_SIO_SET_DATA_PARITY_NONE ; 
 int FTDI_SIO_SET_DATA_STOP_BITS_2 ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  UFTDI_BITMODE_NONE ; 
 size_t UFTDI_BULK_DT_RD ; 
 size_t UFTDI_BULK_DT_WR ; 
 int /*<<< orphan*/  UFTDI_N_TRANSFER ; 
 struct usb_attach_arg* FUNC2 (int /*<<< orphan*/ ) ; 
 struct uftdi_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct uftdi_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uftdi_callback ; 
 int /*<<< orphan*/  uftdi_config ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct uftdi_softc*,struct usb_attach_arg*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uftdi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC2(dev);
	struct uftdi_softc *sc = FUNC3(dev);
	int error;

	FUNC0("\n");

	sc->sc_udev = uaa->device;
	sc->sc_dev = dev;
	sc->sc_unit = FUNC4(dev);
	sc->sc_bitmode = UFTDI_BITMODE_NONE;

	FUNC6(dev);
	FUNC7(&sc->sc_mtx, "uftdi", NULL, MTX_DEF);
	FUNC11(&sc->sc_super_ucom);


	FUNC15(sc, uaa);

	error = FUNC16(uaa->device,
	    &uaa->info.bIfaceIndex, sc->sc_xfer, uftdi_config,
	    UFTDI_N_TRANSFER, sc, &sc->sc_mtx);

	if (error) {
		FUNC5(dev, "allocating USB "
		    "transfers failed\n");
		goto detach;
	}
	/* clear stall at first run */
	FUNC8(&sc->sc_mtx);
	FUNC17(sc->sc_xfer[UFTDI_BULK_DT_WR]);
	FUNC17(sc->sc_xfer[UFTDI_BULK_DT_RD]);
	FUNC9(&sc->sc_mtx);

	/* set a valid "lcr" value */

	sc->sc_last_lcr =
	    (FTDI_SIO_SET_DATA_STOP_BITS_2 |
	    FTDI_SIO_SET_DATA_PARITY_NONE |
	    FUNC1(8));

	/* Indicate tx bits in sc_lsr can be used to determine busy vs idle. */
	FUNC13(&sc->sc_ucom);

	error = FUNC10(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
	    &uftdi_callback, &sc->sc_mtx);
	if (error) {
		goto detach;
	}
	FUNC12(&sc->sc_super_ucom, dev);

	return (0);			/* success */

detach:
	FUNC14(dev);
	return (ENXIO);
}