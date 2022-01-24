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
struct uslcom_softc {int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_udev; int /*<<< orphan*/  sc_iface_no; } ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct ucom_softc {struct uslcom_softc* sc_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USLCOM_MHS_DTR_ON ; 
 int /*<<< orphan*/  USLCOM_MHS_DTR_SET ; 
 int /*<<< orphan*/  USLCOM_SET_MHS ; 
 int /*<<< orphan*/  USLCOM_WRITE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct ucom_softc *ucom, uint8_t onoff)
{
	struct uslcom_softc *sc = ucom->sc_parent;
	struct usb_device_request req;
	uint16_t ctl;

	FUNC0("onoff = %d\n", onoff);

	ctl = onoff ? USLCOM_MHS_DTR_ON : 0;
	ctl |= USLCOM_MHS_DTR_SET;

	req.bmRequestType = USLCOM_WRITE;
	req.bRequest = USLCOM_SET_MHS;
	FUNC1(req.wValue, ctl);
	FUNC1(req.wIndex, sc->sc_iface_no);
	FUNC1(req.wLength, 0);

	if (FUNC2(sc->sc_udev, &sc->sc_ucom,
	    &req, NULL, 0, 1000)) {
		FUNC0("Setting DTR failed (ignored)\n");
	}
}