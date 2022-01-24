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
struct ufoma_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_cv; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_udev; int /*<<< orphan*/  sc_ctrl_iface_no; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int UFOMA_MAX_TIMEOUT ; 
 int /*<<< orphan*/  UMCPC_ACTIVATE_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_INTERFACE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct ufoma_softc *sc, uint16_t state)
{
	struct usb_device_request req;
	int32_t error;

	req.bmRequestType = UT_WRITE_VENDOR_INTERFACE;
	req.bRequest = UMCPC_ACTIVATE_MODE;
	FUNC1(req.wValue, state);
	FUNC1(req.wIndex, sc->sc_ctrl_iface_no);
	FUNC1(req.wLength, 0);

	FUNC3(sc->sc_udev, &sc->sc_ucom, 
	    &req, NULL, 0, 1000);

	error = FUNC2(&sc->sc_cv, &sc->sc_mtx,
	    (UFOMA_MAX_TIMEOUT * hz));
	if (error) {
		FUNC0("No response\n");
	}
}