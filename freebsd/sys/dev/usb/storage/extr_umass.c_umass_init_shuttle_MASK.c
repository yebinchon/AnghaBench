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
struct usb_device_request {int bRequest; int /*<<< orphan*/  wLength; scalar_t__* wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bmRequestType; } ;
struct umass_softc {int /*<<< orphan*/  sc_udev; scalar_t__ sc_iface_no; } ;
typedef  int /*<<< orphan*/  status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct umass_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDMASS_GEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_VENDOR_DEVICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void
FUNC3(struct umass_softc *sc)
{
	struct usb_device_request req;
	uint8_t status[2] = {0, 0};

	/*
	 * The Linux driver does this, but no one can tell us what the
	 * command does.
	 */
	req.bmRequestType = UT_READ_VENDOR_DEVICE;
	req.bRequest = 1;		/* XXX unknown command */
	FUNC1(req.wValue, 0);
	req.wIndex[0] = sc->sc_iface_no;
	req.wIndex[1] = 0;
	FUNC1(req.wLength, sizeof(status));
	FUNC2(sc->sc_udev, NULL, &req, &status);

	FUNC0(sc, UDMASS_GEN, "Shuttle init returned 0x%02x%02x\n",
	    status[0], status[1]);
}