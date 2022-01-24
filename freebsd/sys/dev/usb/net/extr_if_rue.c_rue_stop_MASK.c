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
struct rue_softc {int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_flags; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t RUE_BULK_DT_RD ; 
 size_t RUE_BULK_DT_WR ; 
 int /*<<< orphan*/  RUE_CR ; 
 int /*<<< orphan*/  RUE_FLAG_LINK ; 
 size_t RUE_INTR_DT_RD ; 
 int /*<<< orphan*/  FUNC0 (struct rue_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rue_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rue_softc*) ; 
 struct ifnet* FUNC3 (struct usb_ether*) ; 
 struct rue_softc* FUNC4 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct usb_ether *ue)
{
	struct rue_softc *sc = FUNC4(ue);
	struct ifnet *ifp = FUNC3(ue);

	FUNC0(sc, MA_OWNED);

	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	sc->sc_flags &= ~RUE_FLAG_LINK;

	/*
	 * stop all the transfers, if not already stopped:
	 */
	FUNC5(sc->sc_xfer[RUE_BULK_DT_WR]);
	FUNC5(sc->sc_xfer[RUE_BULK_DT_RD]);
	FUNC5(sc->sc_xfer[RUE_INTR_DT_RD]);

	FUNC1(sc, RUE_CR, 0x00);

	FUNC2(sc);
}