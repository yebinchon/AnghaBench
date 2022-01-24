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
typedef  int uint8_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; } ;
struct uipaq_softc {int /*<<< orphan*/  sc_super_ucom; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_udev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int UCDC_LINE_DTR ; 
 int /*<<< orphan*/  UCDC_SET_CONTROL_LINE_STATE ; 
 size_t UIPAQ_BULK_DT_RD ; 
 size_t UIPAQ_BULK_DT_WR ; 
 int UIPAQ_IFACE_INDEX ; 
 int /*<<< orphan*/  UIPAQ_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_WRITE_CLASS_INTERFACE ; 
 struct usb_attach_arg* FUNC1 (int /*<<< orphan*/ ) ; 
 struct uipaq_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct uipaq_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uipaq_callback ; 
 int /*<<< orphan*/  uipaq_config_data ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uipaq_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct usb_device_request req;
	struct usb_attach_arg *uaa = FUNC1(dev);
	struct uipaq_softc *sc = FUNC2(dev);
	int error;
	uint8_t iface_index;
	uint8_t i;

	sc->sc_udev = uaa->device;

	FUNC3(dev);
	FUNC4(&sc->sc_mtx, "uipaq", NULL, MTX_DEF);
	FUNC8(&sc->sc_super_ucom);

	/*
	 * Send magic bytes, cribbed from Linux ipaq driver that
	 * claims to have sniffed them from Win98. Wait for driver to
	 * become ready on device side?
	 */
	req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
	req.bRequest = UCDC_SET_CONTROL_LINE_STATE;
	FUNC0(req.wValue, UCDC_LINE_DTR);
	FUNC0(req.wIndex, 0x0);
	FUNC0(req.wLength, 0);
	for (i = 0; i != 64; i++) {
		error =
		    FUNC12(uaa->device, NULL, &req,
		    NULL, 0, NULL, 100);
		if (error == 0)
			break;
		FUNC11(NULL, hz / 10);
	}

	iface_index = UIPAQ_IFACE_INDEX;
	error = FUNC13(uaa->device, &iface_index,
	    sc->sc_xfer, uipaq_config_data,
	    UIPAQ_N_TRANSFER, sc, &sc->sc_mtx);

	if (error) {
		goto detach;
	}
	/* clear stall at first run */
	FUNC5(&sc->sc_mtx);
	FUNC14(sc->sc_xfer[UIPAQ_BULK_DT_WR]);
	FUNC14(sc->sc_xfer[UIPAQ_BULK_DT_RD]);
	FUNC6(&sc->sc_mtx);

	error = FUNC7(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
	    &uipaq_callback, &sc->sc_mtx);
	if (error) {
		goto detach;
	}
	FUNC9(&sc->sc_super_ucom, dev);

	return (0);

detach:
	FUNC10(dev);
	return (ENXIO);
}