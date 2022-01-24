#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  wValue; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
typedef  TYPE_2__ usb_device_request_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int sc_portno; } ;
struct uftdi_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_udev; int /*<<< orphan*/  sc_bitmode; TYPE_1__ sc_ucom; } ;
struct ucom_softc {struct uftdi_softc* sc_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FTDI_SIO_GET_BITMODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_VENDOR_DEVICE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct ucom_softc *ucom, uint8_t *bitmode, uint8_t *iomask)
{
	struct uftdi_softc *sc = ucom->sc_parent;
	usb_device_request_t req;

	FUNC0(2, "\n");

	req.bmRequestType = UT_READ_VENDOR_DEVICE;
	req.bRequest = FTDI_SIO_GET_BITMODE;

	FUNC1(req.wIndex, sc->sc_ucom.sc_portno);
	FUNC1(req.wLength, 1);
	FUNC1(req.wValue,  0);

	*bitmode = sc->sc_bitmode;
	return (FUNC2(sc->sc_udev, &sc->sc_mtx, &req, iomask));
}