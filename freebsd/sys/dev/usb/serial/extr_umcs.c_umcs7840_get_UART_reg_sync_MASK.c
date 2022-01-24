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
typedef  scalar_t__ usb_error_t ;
typedef  int uint8_t ;
typedef  int uint16_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc_tq; } ;
struct umcs7840_softc {int /*<<< orphan*/  sc_dev; TYPE_1__ sc_super_ucom; int /*<<< orphan*/  sc_udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCS7840_RDREQ ; 
 int /*<<< orphan*/  UMCS7840_CTRL_TIMEOUT ; 
 int UMCS7840_READ_LENGTH ; 
 scalar_t__ USB_ERR_INVAL ; 
 scalar_t__ USB_ERR_NORMAL_COMPLETION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_VENDOR_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,void*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static usb_error_t
FUNC4(struct umcs7840_softc *sc, uint8_t portno, uint8_t reg, uint8_t *data)
{
	struct usb_device_request req;
	uint16_t wVal;
	usb_error_t err;
	uint16_t len;

	/* portno is port number */
	wVal = ((uint16_t)(portno + 1)) << 8;

	req.bmRequestType = UT_READ_VENDOR_DEVICE;
	req.bRequest = MCS7840_RDREQ;
	FUNC0(req.wValue, wVal);
	FUNC0(req.wIndex, reg);
	FUNC0(req.wLength, UMCS7840_READ_LENGTH);

	err = FUNC2(sc->sc_udev, &sc->sc_super_ucom.sc_tq, &req, (void *)data, 0, &len, UMCS7840_CTRL_TIMEOUT);
	if (err == USB_ERR_NORMAL_COMPLETION && len != 1) {
		FUNC1(sc->sc_dev, "Reading UART%d register %d failed: invalid length %d\n", portno, reg, len);
		return (USB_ERR_INVAL);
	} else if (err)
		FUNC1(sc->sc_dev, "Reading UART%d register %d failed: %s\n", portno, reg, FUNC3(err));
	return (err);
}