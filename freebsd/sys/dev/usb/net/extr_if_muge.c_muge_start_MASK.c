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
struct muge_softc {int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 size_t MUGE_BULK_DT_RD ; 
 size_t MUGE_BULK_DT_WR ; 
 struct muge_softc* FUNC0 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct usb_ether *ue)
{
	struct muge_softc *sc = FUNC0(ue);

	/*
	 * Start the USB transfers, if not already started.
	 */
	FUNC1(sc->sc_xfer[MUGE_BULK_DT_RD]);
	FUNC1(sc->sc_xfer[MUGE_BULK_DT_WR]);
}