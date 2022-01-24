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
struct rue_softc {int /*<<< orphan*/ * sc_xfer; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t RUE_BULK_DT_WR ; 
 int /*<<< orphan*/  RUE_CR ; 
 int RUE_CR_EP3CLREN ; 
 int RUE_CR_RE ; 
 int RUE_CR_TE ; 
 int /*<<< orphan*/  RUE_IDR0 ; 
 int /*<<< orphan*/  FUNC1 (struct rue_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RUE_RCR ; 
 int RUE_RCR_AB ; 
 int RUE_RCR_CONFIG ; 
 int /*<<< orphan*/  RUE_TCR ; 
 int RUE_TCR_CONFIG ; 
 int /*<<< orphan*/  FUNC2 (struct rue_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rue_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rue_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC9 (struct rue_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC10 (struct usb_ether*) ; 
 struct rue_softc* FUNC11 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct usb_ether *ue)
{
	struct rue_softc *sc = FUNC11(ue);
	struct ifnet *ifp = FUNC10(ue);

	FUNC1(sc, MA_OWNED);

	/*
	 * Cancel pending I/O
	 */
	FUNC4(sc);

	/* Set MAC address */
	FUNC9(sc, RUE_IDR0, FUNC0(ifp), ETHER_ADDR_LEN);

	FUNC8(ue);

	/*
	 * Set the initial TX and RX configuration.
	 */
	FUNC2(sc, RUE_TCR, RUE_TCR_CONFIG);
	FUNC3(sc, RUE_RCR, RUE_RCR_CONFIG|RUE_RCR_AB);

	/* Load the multicast filter */
	FUNC6(ue);
	/* Load the multicast filter. */
	FUNC5(ue);

	/* Enable RX and TX */
	FUNC2(sc, RUE_CR, (RUE_CR_TE | RUE_CR_RE | RUE_CR_EP3CLREN));

	FUNC12(sc->sc_xfer[RUE_BULK_DT_WR]);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	FUNC7(ue);
}