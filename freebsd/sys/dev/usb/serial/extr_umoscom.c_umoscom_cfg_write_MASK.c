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
typedef  int /*<<< orphan*/  uint16_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct umoscom_softc {int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  UMOSCOM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct umoscom_softc *sc, uint16_t reg, uint16_t val)
{
	struct usb_device_request req;

	req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	req.bRequest = UMOSCOM_WRITE;
	FUNC0(req.wValue, val);
	FUNC0(req.wIndex, reg);
	FUNC0(req.wLength, 0);

	FUNC1(sc->sc_udev, &sc->sc_ucom,
	    &req, NULL, 0, 1000);
}