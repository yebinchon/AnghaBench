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
struct ifnet {int if_drv_flags; } ;
struct axge_softc {int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXGE_ACCESS_MAC ; 
 size_t AXGE_BULK_DT_WR ; 
 int /*<<< orphan*/  FUNC0 (struct axge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AXGE_MMSR ; 
 int /*<<< orphan*/  AXGE_MSR ; 
 int /*<<< orphan*/  AXGE_NIDR ; 
 int /*<<< orphan*/  AXGE_PWLHR ; 
 int /*<<< orphan*/  AXGE_PWLLR ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int MSR_FD ; 
 int MSR_GM ; 
 int MSR_RE ; 
 int MSR_RFC ; 
 int MSR_TFC ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct axge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct axge_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC8 (struct axge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct axge_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct axge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC11 (struct usb_ether*) ; 
 struct axge_softc* FUNC12 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(struct usb_ether *ue)
{
	struct axge_softc *sc;
	struct ifnet *ifp;

	sc = FUNC12(ue);
	ifp = FUNC11(ue);
	FUNC0(sc, MA_OWNED);

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
		return;

	/*
	 * Cancel pending I/O and free all RX/TX buffers.
	 */
	FUNC7(ue);

	FUNC5(sc);

	/* Set MAC address. */
	FUNC10(sc, AXGE_ACCESS_MAC, ETHER_ADDR_LEN, AXGE_NIDR,
	    FUNC1(ifp), ETHER_ADDR_LEN);

	FUNC8(sc, AXGE_ACCESS_MAC, AXGE_PWLLR, 0x34);
	FUNC8(sc, AXGE_ACCESS_MAC, AXGE_PWLHR, 0x52);

	/* Configure TX/RX checksum offloading. */
	FUNC2(ue);

	/*  Configure RX filters. */
	FUNC6(ue);

	/*
	 * XXX
	 * Controller supports wakeup on link change detection,
	 * magic packet and wakeup frame recpetion.  But it seems
	 * there is no framework for USB ethernet suspend/wakeup.
	 * Disable all wakeup functions.
	 */
	FUNC8(sc, AXGE_ACCESS_MAC, AXGE_MMSR, 0);
	(void)FUNC4(sc, AXGE_ACCESS_MAC, AXGE_MMSR);

	/* Configure default medium type. */
	FUNC9(sc, AXGE_ACCESS_MAC, 2, AXGE_MSR, MSR_GM | MSR_FD |
	    MSR_RFC | MSR_TFC | MSR_RE);

	FUNC13(sc->sc_xfer[AXGE_BULK_DT_WR]);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	/* Switch to selected media. */
	FUNC3(ifp);
}