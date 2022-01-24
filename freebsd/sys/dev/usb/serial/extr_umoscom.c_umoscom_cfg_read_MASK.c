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
typedef  int uint16_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct umoscom_softc {int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UMOSCOM_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_VENDOR_DEVICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint8_t
FUNC3(struct umoscom_softc *sc, uint16_t reg)
{
	struct usb_device_request req;
	uint8_t val;

	req.bmRequestType = UT_READ_VENDOR_DEVICE;
	req.bRequest = UMOSCOM_READ;
	FUNC1(req.wValue, 0);
	FUNC1(req.wIndex, reg);
	FUNC1(req.wLength, 1);

	FUNC2(sc->sc_udev, &sc->sc_ucom, 
	    &req, &val, 0, 1000);

	FUNC0("reg=0x%04x, val=0x%02x\n", reg, val);

	return (val);
}