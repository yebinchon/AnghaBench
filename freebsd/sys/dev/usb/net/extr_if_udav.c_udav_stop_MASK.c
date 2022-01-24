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
struct usb_ether {struct udav_softc* ue_sc; } ;
struct udav_softc {int sc_flags; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_ue; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t UDAV_BULK_DT_RD ; 
 size_t UDAV_BULK_DT_WR ; 
 int UDAV_FLAG_LINK ; 
 int UDAV_FLAG_NO_PHY ; 
 size_t UDAV_INTR_DT_RD ; 
 int /*<<< orphan*/  FUNC0 (struct udav_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct udav_softc*) ; 
 struct ifnet* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct usb_ether *ue)
{
	struct udav_softc *sc = ue->ue_sc;
	struct ifnet *ifp = FUNC2(&sc->sc_ue);

	FUNC0(sc, MA_OWNED);

	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	if (!(sc->sc_flags & UDAV_FLAG_NO_PHY))
		sc->sc_flags &= ~UDAV_FLAG_LINK;

	/*
	 * stop all the transfers, if not already stopped:
	 */
	FUNC3(sc->sc_xfer[UDAV_BULK_DT_WR]);
	FUNC3(sc->sc_xfer[UDAV_BULK_DT_RD]);
	FUNC3(sc->sc_xfer[UDAV_INTR_DT_RD]);

	FUNC1(sc);
}