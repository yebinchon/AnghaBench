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
struct usb_device_request {int dummy; } ;
struct rsu_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsu_softc*) ; 
 int /*<<< orphan*/  RSU_DEBUG_USB ; 
 int /*<<< orphan*/  FUNC1 (struct rsu_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ USB_ERR_NOT_CONFIGURED ; 
 int /*<<< orphan*/  FUNC2 (struct rsu_softc*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static usb_error_t
FUNC5(struct rsu_softc *sc, struct usb_device_request *req,
    void *data)
{
	usb_error_t err;
	int ntries = 10;
	
	FUNC0(sc);

	while (ntries--) {
		err = FUNC3(sc->sc_udev, &sc->sc_mtx,
		    req, data, 0, NULL, 250 /* ms */);
		if (err == 0 || err == USB_ERR_NOT_CONFIGURED)
			break;
		FUNC1(sc, RSU_DEBUG_USB,
		    "Control request failed, %s (retries left: %d)\n",
		    FUNC4(err), ntries);
		FUNC2(sc, 10);
        }

        return (err);
}