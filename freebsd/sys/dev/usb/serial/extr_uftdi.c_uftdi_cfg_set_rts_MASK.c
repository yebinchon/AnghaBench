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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct uftdi_softc {int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_udev; } ;
struct ucom_softc {int /*<<< orphan*/  sc_portno; struct uftdi_softc* sc_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FTDI_SIO_MODEM_CTRL ; 
 int /*<<< orphan*/  FTDI_SIO_SET_RTS_HIGH ; 
 int /*<<< orphan*/  FTDI_SIO_SET_RTS_LOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct ucom_softc *ucom, uint8_t onoff)
{
	struct uftdi_softc *sc = ucom->sc_parent;
	uint16_t wIndex = ucom->sc_portno;
	uint16_t wValue;
	struct usb_device_request req;

	FUNC0(2, "RTS=%u\n", onoff);

	wValue = onoff ? FTDI_SIO_SET_RTS_HIGH : FTDI_SIO_SET_RTS_LOW;

	req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	req.bRequest = FTDI_SIO_MODEM_CTRL;
	FUNC1(req.wValue, wValue);
	FUNC1(req.wIndex, wIndex);
	FUNC1(req.wLength, 0);
	FUNC2(sc->sc_udev, &sc->sc_ucom, 
	    &req, NULL, 0, 1000);
}