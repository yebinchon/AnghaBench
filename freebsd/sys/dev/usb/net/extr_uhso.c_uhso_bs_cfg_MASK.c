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
typedef  scalar_t__ usb_error_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct uhso_softc {int /*<<< orphan*/  sc_line; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * sc_ucom; int /*<<< orphan*/  sc_udev; int /*<<< orphan*/  sc_iface_no; int /*<<< orphan*/  sc_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCDC_SET_CONTROL_LINE_STATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int UHSO_IF_BULK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UT_WRITE_CLASS_INTERFACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct uhso_softc *sc)
{
	struct usb_device_request req;
	usb_error_t uerr;

	if (!(FUNC0(sc->sc_type) & UHSO_IF_BULK))
		return;

	req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
	req.bRequest = UCDC_SET_CONTROL_LINE_STATE;
	FUNC1(req.wValue, sc->sc_line);
	FUNC1(req.wIndex, sc->sc_iface_no);
	FUNC1(req.wLength, 0);

	uerr = FUNC3(sc->sc_udev, &sc->sc_ucom[0], &req, NULL, 0, 1000);
	if (uerr != 0) {
		FUNC2(sc->sc_dev, "failed to set ctrl line state to "
		    "0x%02x: %s\n", sc->sc_line, FUNC4(uerr));
	}
}