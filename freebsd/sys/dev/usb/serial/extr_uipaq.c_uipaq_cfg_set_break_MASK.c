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
struct usb_device_request {int /*<<< orphan*/  wLength; scalar_t__* wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct uipaq_softc {int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_udev; } ;
struct ucom_softc {struct uipaq_softc* sc_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCDC_BREAK_OFF ; 
 int /*<<< orphan*/  UCDC_BREAK_ON ; 
 int /*<<< orphan*/  UCDC_SEND_BREAK ; 
 scalar_t__ UIPAQ_IFACE_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UT_WRITE_CLASS_INTERFACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct ucom_softc *ucom, uint8_t onoff)
{
	struct uipaq_softc *sc = ucom->sc_parent;
	struct usb_device_request req;
	uint16_t temp;

	temp = onoff ? UCDC_BREAK_ON : UCDC_BREAK_OFF;

	req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
	req.bRequest = UCDC_SEND_BREAK;
	FUNC0(req.wValue, temp);
	req.wIndex[0] = UIPAQ_IFACE_INDEX;
	req.wIndex[1] = 0;
	FUNC0(req.wLength, 0);

	FUNC1(sc->sc_udev, &sc->sc_ucom, 
	    &req, NULL, 0, 1000);
}