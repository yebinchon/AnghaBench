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
struct cdceem_softc {int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 size_t CDCEEM_BULK_RX ; 
 size_t CDCEEM_BULK_TX ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 struct ifnet* FUNC0 (struct usb_ether*) ; 
 struct cdceem_softc* FUNC1 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct usb_ether *ue)
{
	struct cdceem_softc *sc;
	struct ifnet *ifp;

	sc = FUNC1(ue);
	ifp = FUNC0(ue);

	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;

	FUNC2(sc->sc_xfer[CDCEEM_BULK_RX]);
	FUNC2(sc->sc_xfer[CDCEEM_BULK_TX]);
}