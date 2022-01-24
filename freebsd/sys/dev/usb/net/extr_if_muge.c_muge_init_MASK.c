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
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t MUGE_BULK_DT_WR ; 
 int /*<<< orphan*/  FUNC1 (struct muge_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct muge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct muge_softc*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct muge_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct muge_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_ether*) ; 
 struct ifnet* FUNC10 (struct usb_ether*) ; 
 struct muge_softc* FUNC11 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct usb_ether *ue)
{
	struct muge_softc *sc = FUNC11(ue);
	FUNC3(sc, "Calling muge_init.\n");
	struct ifnet *ifp = FUNC10(ue);
	FUNC1(sc, MA_OWNED);

	if (FUNC2(sc, FUNC0(ifp)))
		FUNC3(sc, "setting MAC address failed\n");

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
		return;

	/* Cancel pending I/O. */
	FUNC9(ue);

	/* Reset the ethernet interface. */
	FUNC5(sc);

	/* Load the multicast filter. */
	FUNC7(ue);

	/* TCP/UDP checksum offload engines. */
	FUNC6(sc);

	FUNC12(sc->sc_xfer[MUGE_BULK_DT_WR]);

	/* Indicate we are up and running. */
	ifp->if_drv_flags |= IFF_DRV_RUNNING;

	/* Switch to selected media. */
	FUNC4(ifp);
	FUNC8(ue);
}