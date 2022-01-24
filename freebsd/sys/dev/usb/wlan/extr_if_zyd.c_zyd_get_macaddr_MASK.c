#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usb_error_t ;
struct TYPE_2__ {int /*<<< orphan*/  ic_macaddr; } ;
struct zyd_softc {int /*<<< orphan*/  sc_dev; TYPE_1__ sc_ic; } ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UT_READ_VENDOR_DEVICE ; 
 int /*<<< orphan*/  ZYD_EEPROM_MAC_ADDR_P1 ; 
 int /*<<< orphan*/  ZYD_READFWDATAREQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct zyd_softc*,struct usb_device_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct zyd_softc *sc)
{
	struct usb_device_request req;
	usb_error_t error;

	req.bmRequestType = UT_READ_VENDOR_DEVICE;
	req.bRequest = ZYD_READFWDATAREQ;
	FUNC0(req.wValue, ZYD_EEPROM_MAC_ADDR_P1);
	FUNC0(req.wIndex, 0);
	FUNC0(req.wLength, IEEE80211_ADDR_LEN);

	error = FUNC3(sc, &req, sc->sc_ic.ic_macaddr);
	if (error != 0) {
		FUNC1(sc->sc_dev, "could not read EEPROM: %s\n",
		    FUNC2(error));
	}

	return (error);
}