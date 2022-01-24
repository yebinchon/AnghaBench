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
struct usb_xfer {int dummy; } ;
struct umass_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct umass_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDMASS_GEN ; 
 scalar_t__ USB_ERR_CANCELLED ; 
 int /*<<< orphan*/  FUNC1 (struct umass_softc*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct umass_softc* FUNC3 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC4(struct usb_xfer *xfer, usb_error_t error)
{
	struct umass_softc *sc = FUNC3(xfer);

	if (error != USB_ERR_CANCELLED) {

		FUNC0(sc, UDMASS_GEN, "transfer error, %s -> "
		    "reset\n", FUNC2(error));
	}
	FUNC1(sc);
}