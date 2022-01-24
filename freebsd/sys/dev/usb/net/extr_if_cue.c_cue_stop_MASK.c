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
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;
struct cue_softc {int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 size_t CUE_BULK_DT_RD ; 
 size_t CUE_BULK_DT_WR ; 
 int /*<<< orphan*/  CUE_ETHCTL ; 
 int /*<<< orphan*/  FUNC0 (struct cue_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct cue_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cue_softc*) ; 
 struct ifnet* FUNC3 (struct usb_ether*) ; 
 struct cue_softc* FUNC4 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct usb_ether *ue)
{
	struct cue_softc *sc = FUNC4(ue);
	struct ifnet *ifp = FUNC3(ue);

	FUNC0(sc, MA_OWNED);

	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;

	/*
	 * stop all the transfers, if not already stopped:
	 */
	FUNC5(sc->sc_xfer[CUE_BULK_DT_WR]);
	FUNC5(sc->sc_xfer[CUE_BULK_DT_RD]);

	FUNC1(sc, CUE_ETHCTL, 0);
	FUNC2(sc);
}