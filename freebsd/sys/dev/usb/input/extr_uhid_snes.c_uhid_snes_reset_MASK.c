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
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; } ;
struct uhid_snes_softc {int /*<<< orphan*/  sc_mutex; int /*<<< orphan*/  sc_usb_device; int /*<<< orphan*/  sc_iface_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  UREQ_SOFT_RESET ; 
 int USB_MS_HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(struct uhid_snes_softc *sc)
{
	struct usb_device_request req;
	int error;

	req.bRequest = UREQ_SOFT_RESET;
	FUNC0(req.wValue, 0);
	FUNC0(req.wIndex, sc->sc_iface_num);
	FUNC0(req.wLength, 0);

	FUNC1(&sc->sc_mutex);

	error = FUNC3(sc->sc_usb_device, &sc->sc_mutex,
	    &req, NULL, 0, NULL, 2 * USB_MS_HZ);

	if (error) {
		FUNC3(sc->sc_usb_device, &sc->sc_mutex,
		    &req, NULL, 0, NULL, 2 * USB_MS_HZ);
	}

	FUNC2(&sc->sc_mutex);
}