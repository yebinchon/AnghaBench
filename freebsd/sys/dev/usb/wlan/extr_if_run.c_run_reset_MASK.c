#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
typedef  TYPE_1__ usb_device_request_t ;
struct run_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT2870_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct run_softc *sc)
{
	usb_device_request_t req;

	req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	req.bRequest = RT2870_RESET;
	FUNC0(req.wValue, 1);
	FUNC0(req.wIndex, 0);
	FUNC0(req.wLength, 0);
	return (FUNC1(sc->sc_udev, &sc->sc_mtx, &req, NULL));
}