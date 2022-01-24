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
struct uslcom_softc {int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_udev; int /*<<< orphan*/  sc_iface_no; } ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct ucom_softc {struct uslcom_softc* sc_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USLCOM_IFC_ENABLE ; 
 int /*<<< orphan*/  USLCOM_IFC_ENABLE_EN ; 
 int /*<<< orphan*/  USLCOM_WRITE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uslcom_softc*) ; 

__attribute__((used)) static void
FUNC4(struct ucom_softc *ucom)
{
	struct uslcom_softc *sc = ucom->sc_parent;
	struct usb_device_request req;

	req.bmRequestType = USLCOM_WRITE;
	req.bRequest = USLCOM_IFC_ENABLE;
	FUNC1(req.wValue, USLCOM_IFC_ENABLE_EN);
	FUNC1(req.wIndex, sc->sc_iface_no);
	FUNC1(req.wLength, 0);

        if (FUNC2(sc->sc_udev, &sc->sc_ucom,
	    &req, NULL, 0, 1000)) {
		FUNC0("UART enable failed (ignored)\n");
	}

	/* start polling status */
	FUNC3(sc);
}