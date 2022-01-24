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
struct TYPE_2__ {int idProduct; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; TYPE_1__ info; } ;
struct uchcom_softc {int /*<<< orphan*/  sc_super_ucom; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_udev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 size_t UCHCOM_BULK_DT_RD ; 
 size_t UCHCOM_BULK_DT_WR ; 
 int /*<<< orphan*/  UCHCOM_IFACE_INDEX ; 
 int /*<<< orphan*/  UCHCOM_N_TRANSFER ; 
#define  USB_PRODUCT_WCH2_CH341SER 129 
#define  USB_PRODUCT_WCH2_CH341SER_2 128 
 struct usb_attach_arg* FUNC2 (int /*<<< orphan*/ ) ; 
 struct uchcom_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uchcom_callback ; 
 int /*<<< orphan*/  uchcom_config_data ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct uchcom_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uchcom_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct uchcom_softc *sc = FUNC3(dev);
	struct usb_attach_arg *uaa = FUNC2(dev);
	int error;
	uint8_t iface_index;

	FUNC1(11, "\n");

	FUNC5(dev);
	FUNC6(&sc->sc_mtx, "uchcom", NULL, MTX_DEF);
	FUNC11(&sc->sc_super_ucom);

	sc->sc_udev = uaa->device;

	switch (uaa->info.idProduct) {
	case USB_PRODUCT_WCH2_CH341SER:
		FUNC4(dev, "CH340 detected\n");
		break;
	case USB_PRODUCT_WCH2_CH341SER_2:
		FUNC4(dev, "CH341 detected\n");
		break;
	default:
		FUNC4(dev, "New CH340/CH341 product 0x%04x detected\n",
		    uaa->info.idProduct);
		break;
	}

	iface_index = UCHCOM_IFACE_INDEX;
	error = FUNC14(uaa->device,
	    &iface_index, sc->sc_xfer, uchcom_config_data,
	    UCHCOM_N_TRANSFER, sc, &sc->sc_mtx);

	if (error) {
		FUNC0("one or more missing USB endpoints, "
		    "error=%s\n", FUNC13(error));
		goto detach;
	}

	/* clear stall at first run */
	FUNC7(&sc->sc_mtx);
	FUNC15(sc->sc_xfer[UCHCOM_BULK_DT_WR]);
	FUNC15(sc->sc_xfer[UCHCOM_BULK_DT_RD]);
	FUNC8(&sc->sc_mtx);

	error = FUNC10(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
	    &uchcom_callback, &sc->sc_mtx);
	if (error) {
		goto detach;
	}
	FUNC12(&sc->sc_super_ucom, dev);

	return (0);

detach:
	FUNC9(dev);
	return (ENXIO);
}