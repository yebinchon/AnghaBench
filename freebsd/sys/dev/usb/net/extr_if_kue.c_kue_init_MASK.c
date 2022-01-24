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
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 size_t KUE_BULK_DT_WR ; 
 int /*<<< orphan*/  KUE_CMD_SET_MAC ; 
 int /*<<< orphan*/  KUE_CMD_SET_SOFS ; 
 int /*<<< orphan*/  KUE_CMD_SET_URB_SIZE ; 
 int /*<<< orphan*/  KUE_CTL_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct kue_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (struct kue_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC4 (struct kue_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ether*) ; 
 struct ifnet* FUNC6 (struct usb_ether*) ; 
 struct kue_softc* FUNC7 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct usb_ether *ue)
{
	struct kue_softc *sc = FUNC7(ue);
	struct ifnet *ifp = FUNC6(ue);

	FUNC1(sc, MA_OWNED);

	/* set MAC address */
	FUNC2(sc, KUE_CTL_WRITE, KUE_CMD_SET_MAC,
	    0, FUNC0(ifp), ETHER_ADDR_LEN);

	/* I'm not sure how to tune these. */
#if 0
	/*
	 * Leave this one alone for now; setting it
	 * wrong causes lockups on some machines/controllers.
	 */
	kue_setword(sc, KUE_CMD_SET_SOFS, 1);
#endif
	FUNC4(sc, KUE_CMD_SET_URB_SIZE, 64);

	/* load the multicast filter */
	FUNC3(ue);

	FUNC8(sc->sc_xfer[KUE_BULK_DT_WR]);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	FUNC5(ue);
}