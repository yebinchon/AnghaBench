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
struct uslcom_softc {int sc_iface_no; int /*<<< orphan*/  sc_udev; } ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
typedef  int /*<<< orphan*/  partnum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int USLCOM_GET_PARTNUM ; 
 int /*<<< orphan*/  USLCOM_READ ; 
 int /*<<< orphan*/  USLCOM_VENDOR_SPECIFIC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static uint8_t
FUNC3(struct uslcom_softc *sc)
{
	struct usb_device_request req;
	uint8_t partnum;

	/* Find specific chip type */
	partnum = 0;
	req.bmRequestType = USLCOM_READ;
	req.bRequest = USLCOM_VENDOR_SPECIFIC;
	FUNC1(req.wValue, USLCOM_GET_PARTNUM);
	FUNC1(req.wIndex, sc->sc_iface_no);
	FUNC1(req.wLength, sizeof(partnum));

	if (FUNC2(sc->sc_udev, NULL,
	    &req, &partnum, 0, NULL, 1000)) {
		FUNC0("GET_PARTNUM failed\n");
	}

	return(partnum);
}