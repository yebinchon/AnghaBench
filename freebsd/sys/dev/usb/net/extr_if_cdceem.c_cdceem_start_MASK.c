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
struct usb_ether {int dummy; } ;
struct cdceem_softc {int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 size_t CDCEEM_BULK_RX ; 
 size_t CDCEEM_BULK_TX ; 
 struct cdceem_softc* FUNC0 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct usb_ether *ue)
{
	struct cdceem_softc *sc;

	sc = FUNC0(ue);

	/*
	 * Start the USB transfers, if not already started.
	 */
	FUNC1(sc->sc_xfer[CDCEEM_BULK_RX]);
	FUNC1(sc->sc_xfer[CDCEEM_BULK_TX]);
}