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
struct kue_softc {int /*<<< orphan*/ * sc_xfer; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 size_t KUE_BULK_DT_RD ; 
 size_t KUE_BULK_DT_WR ; 
 int /*<<< orphan*/  FUNC0 (struct kue_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 struct ifnet* FUNC1 (struct usb_ether*) ; 
 struct kue_softc* FUNC2 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct usb_ether *ue)
{
	struct kue_softc *sc = FUNC2(ue);
	struct ifnet *ifp = FUNC1(ue);

	FUNC0(sc, MA_OWNED);

	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;

	/*
	 * stop all the transfers, if not already stopped:
	 */
	FUNC3(sc->sc_xfer[KUE_BULK_DT_WR]);
	FUNC3(sc->sc_xfer[KUE_BULK_DT_RD]);
}