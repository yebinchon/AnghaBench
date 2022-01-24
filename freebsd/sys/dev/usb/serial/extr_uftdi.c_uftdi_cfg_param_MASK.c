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
typedef  int uint16_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; void* bmRequestType; } ;
struct uftdi_softc {int sc_last_lcr; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_udev; } ;
struct uftdi_param_config {int lcr; int baud_lobits; int baud_hibits; int v_start; int /*<<< orphan*/  v_flow; int /*<<< orphan*/  v_stop; } ;
struct ucom_softc {int sc_portno; struct uftdi_softc* sc_parent; } ;
struct termios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FTDI_SIO_SET_BAUD_RATE ; 
 int /*<<< orphan*/  FTDI_SIO_SET_DATA ; 
 int /*<<< orphan*/  FTDI_SIO_SET_FLOW_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* UT_WRITE_VENDOR_DEVICE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct ucom_softc*,struct termios*,struct uftdi_param_config*) ; 

__attribute__((used)) static void
FUNC5(struct ucom_softc *ucom, struct termios *t)
{
	struct uftdi_softc *sc = ucom->sc_parent;
	uint16_t wIndex = ucom->sc_portno;
	struct uftdi_param_config cfg;
	struct usb_device_request req;

	FUNC0("\n");

	if (FUNC4(ucom, t, &cfg)) {
		/* should not happen */
		return;
	}
	sc->sc_last_lcr = cfg.lcr;

	req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	req.bRequest = FTDI_SIO_SET_BAUD_RATE;
	FUNC1(req.wValue, cfg.baud_lobits);
	FUNC1(req.wIndex, cfg.baud_hibits | wIndex);
	FUNC1(req.wLength, 0);
	FUNC3(sc->sc_udev, &sc->sc_ucom, 
	    &req, NULL, 0, 1000);

	req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	req.bRequest = FTDI_SIO_SET_DATA;
	FUNC1(req.wValue, cfg.lcr);
	FUNC1(req.wIndex, wIndex);
	FUNC1(req.wLength, 0);
	FUNC3(sc->sc_udev, &sc->sc_ucom, 
	    &req, NULL, 0, 1000);

	req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	req.bRequest = FTDI_SIO_SET_FLOW_CTRL;
	FUNC2(req.wValue, cfg.v_stop, cfg.v_start);
	FUNC2(req.wIndex, cfg.v_flow, wIndex);
	FUNC1(req.wLength, 0);
	FUNC3(sc->sc_udev, &sc->sc_ucom, 
	    &req, NULL, 0, 1000);
}