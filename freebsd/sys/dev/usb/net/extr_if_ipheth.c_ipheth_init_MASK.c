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
struct ipheth_softc {int /*<<< orphan*/ * sc_xfer; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 size_t IPHETH_BULK_TX ; 
 int /*<<< orphan*/  FUNC0 (struct ipheth_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ether*) ; 
 struct ifnet* FUNC2 (struct usb_ether*) ; 
 struct ipheth_softc* FUNC3 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct usb_ether *ue)
{
	struct ipheth_softc *sc = FUNC3(ue);
	struct ifnet *ifp = FUNC2(ue);

	FUNC0(sc, MA_OWNED);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;

	/* stall data write direction, which depends on USB mode */
	FUNC4(sc->sc_xfer[IPHETH_BULK_TX]);

	/* start data transfers */
	FUNC1(ue);
}