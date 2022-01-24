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
struct aue_softc {int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 size_t AUE_BULK_DT_WR ; 
 scalar_t__ AUE_CTL0 ; 
 int AUE_CTL0_RXSTAT_APPEND ; 
 int AUE_CTL0_RX_ENB ; 
 int /*<<< orphan*/  AUE_CTL0_TX_ENB ; 
 scalar_t__ AUE_CTL2 ; 
 int /*<<< orphan*/  AUE_CTL2_EP3_CLR ; 
 int /*<<< orphan*/  FUNC0 (struct aue_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ AUE_PAR0 ; 
 int /*<<< orphan*/  FUNC1 (struct aue_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int* FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC3 (struct aue_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct aue_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_ether*) ; 
 struct ifnet* FUNC8 (struct usb_ether*) ; 
 struct aue_softc* FUNC9 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct usb_ether *ue)
{
	struct aue_softc *sc = FUNC9(ue);
	struct ifnet *ifp = FUNC8(ue);
	int i;

	FUNC0(sc, MA_OWNED);

	/*
	 * Cancel pending I/O
	 */
	FUNC4(sc);

	/* Set MAC address */
	for (i = 0; i != ETHER_ADDR_LEN; i++)
		FUNC3(sc, AUE_PAR0 + i, FUNC2(ifp)[i]);

	/* update promiscuous setting */
	FUNC6(ue);

	/* Load the multicast filter. */
	FUNC5(ue);

	/* Enable RX and TX */
	FUNC3(sc, AUE_CTL0, AUE_CTL0_RXSTAT_APPEND | AUE_CTL0_RX_ENB);
	FUNC1(sc, AUE_CTL0, AUE_CTL0_TX_ENB);
	FUNC1(sc, AUE_CTL2, AUE_CTL2_EP3_CLR);

	FUNC10(sc->sc_xfer[AUE_BULK_DT_WR]);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	FUNC7(ue);
}