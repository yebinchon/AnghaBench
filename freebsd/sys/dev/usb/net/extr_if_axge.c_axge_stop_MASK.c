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
typedef  int /*<<< orphan*/  uint16_t ;
struct usb_ether {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct axge_softc {int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXGE_ACCESS_MAC ; 
 size_t AXGE_BULK_DT_RD ; 
 size_t AXGE_BULK_DT_WR ; 
 int /*<<< orphan*/  AXGE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct axge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AXGE_MSR ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  MSR_RE ; 
 int /*<<< orphan*/  FUNC1 (struct axge_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct axge_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC3 (struct usb_ether*) ; 
 struct axge_softc* FUNC4 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct usb_ether *ue)
{
	struct axge_softc *sc;
	struct ifnet *ifp;
	uint16_t val;

	sc = FUNC4(ue);
	ifp = FUNC3(ue);

	FUNC0(sc, MA_OWNED);

	val = FUNC1(sc, AXGE_ACCESS_MAC, 2, AXGE_MSR);
	val &= ~MSR_RE;
	FUNC2(sc, AXGE_ACCESS_MAC, 2, AXGE_MSR, val);

	if (ifp != NULL)
		ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
	sc->sc_flags &= ~AXGE_FLAG_LINK;

	/*
	 * Stop all the transfers, if not already stopped:
	 */
	FUNC5(sc->sc_xfer[AXGE_BULK_DT_WR]);
	FUNC5(sc->sc_xfer[AXGE_BULK_DT_RD]);
}