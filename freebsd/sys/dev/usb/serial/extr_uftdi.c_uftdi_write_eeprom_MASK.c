#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usb_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  wValue; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
typedef  TYPE_1__ usb_device_request_t ;
typedef  size_t uint16_t ;
struct uftdi_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_udev; } ;
struct uftdi_eeio {int offset; int length; size_t* data; } ;
struct ucom_softc {struct uftdi_softc* sc_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FTDI_SIO_WRITE_EEPROM ; 
 scalar_t__ USB_ERR_NORMAL_COMPLETION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct ucom_softc *ucom, struct uftdi_eeio *eeio)
{
	struct uftdi_softc *sc = ucom->sc_parent;
	usb_device_request_t req;
	usb_error_t err;
	uint16_t widx, wlength, woffset;

	FUNC0(3, "\n");

	/* Offset and length must both be evenly divisible by two. */
	if ((eeio->offset | eeio->length) & 0x01)
		return (EINVAL);

	woffset = eeio->offset / 2U;
	wlength = eeio->length / 2U;
	for (widx = 0; widx < wlength; widx++) {
		req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
		req.bRequest = FTDI_SIO_WRITE_EEPROM;
		FUNC1(req.wIndex, widx + woffset);
		FUNC1(req.wLength, 0);
		FUNC1(req.wValue, eeio->data[widx]);
		err = FUNC2(sc->sc_udev, &sc->sc_mtx, &req, NULL);
		if (err != USB_ERR_NORMAL_COMPLETION)
			return (err);
	}
	return (USB_ERR_NORMAL_COMPLETION);
}