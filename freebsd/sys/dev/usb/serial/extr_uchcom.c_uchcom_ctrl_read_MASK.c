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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct uchcom_softc {int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_SHORT_XFER_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UT_READ_VENDOR_DEVICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct uchcom_softc *sc, uint8_t reqno,
    uint16_t value, uint16_t index, void *buf, uint16_t buflen)
{
	struct usb_device_request req;

	req.bmRequestType = UT_READ_VENDOR_DEVICE;
	req.bRequest = reqno;
	FUNC1(req.wValue, value);
	FUNC1(req.wIndex, index);
	FUNC1(req.wLength, buflen);

	FUNC0("RD REQ 0x%02X VAL 0x%04X IDX 0x%04X LEN %d\n",
	    reqno, value, index, buflen);
	FUNC2(sc->sc_udev,
	    &sc->sc_ucom, &req, buf, USB_SHORT_XFER_OK, 1000);
}