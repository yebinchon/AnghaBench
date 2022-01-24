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
struct usb_ether {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  ue_udev; } ;
struct cdce_softc {int /*<<< orphan*/ * sc_xfer; TYPE_1__ sc_ue; } ;

/* Variables and functions */
 size_t CDCE_BULK_TX ; 
 size_t CDCE_INTR_RX ; 
 size_t CDCE_INTR_TX ; 
 int /*<<< orphan*/  FUNC0 (struct cdce_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ USB_MODE_HOST ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ether*) ; 
 struct ifnet* FUNC2 (struct usb_ether*) ; 
 struct cdce_softc* FUNC3 (struct usb_ether*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct usb_ether *ue)
{
	struct cdce_softc *sc = FUNC3(ue);
	struct ifnet *ifp = FUNC2(ue);

	FUNC0(sc, MA_OWNED);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;

	/* start interrupt transfer */
	FUNC5(sc->sc_xfer[CDCE_INTR_RX]);
	FUNC5(sc->sc_xfer[CDCE_INTR_TX]);

	/*
	 * Stall data write direction, which depends on USB mode.
	 *
	 * Some USB host stacks (e.g. Mac OS X) don't clears stall
	 * bit as it should, so set it in our host mode only.
	 */
	if (FUNC4(sc->sc_ue.ue_udev) == USB_MODE_HOST)
		FUNC6(sc->sc_xfer[CDCE_BULK_TX]);

	/* start data transfers */
	FUNC1(ue);
}