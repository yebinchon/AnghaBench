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
struct mos_softc {scalar_t__ mos_link; int /*<<< orphan*/ * sc_xfer; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t MOS_ENDPT_INTR ; 
 size_t MOS_ENDPT_RX ; 
 size_t MOS_ENDPT_TX ; 
 int /*<<< orphan*/  FUNC0 (struct mos_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mos_softc*) ; 
 struct ifnet* FUNC2 (struct usb_ether*) ; 
 struct mos_softc* FUNC3 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct usb_ether *ue)
{
	struct mos_softc *sc = FUNC3(ue);
	struct ifnet *ifp = FUNC2(ue);

	FUNC1(sc);

	FUNC0(sc, MA_OWNED);
	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;

	/* stop all the transfers, if not already stopped */
	FUNC4(sc->sc_xfer[MOS_ENDPT_TX]);
	FUNC4(sc->sc_xfer[MOS_ENDPT_RX]);
	FUNC4(sc->sc_xfer[MOS_ENDPT_INTR]);

	sc->mos_link = 0;
}