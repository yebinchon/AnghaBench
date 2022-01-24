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
 scalar_t__ CUE_ADVANCED_OPMODES ; 
 int CUE_AOP_EMBED_RXLEN ; 
 size_t CUE_BULK_DT_WR ; 
 scalar_t__ CUE_ETHCTL ; 
 int CUE_ETHCTL_MCAST_ON ; 
 int CUE_ETHCTL_RX_ON ; 
 scalar_t__ CUE_LEDCTL ; 
 int CUE_LEDCTL_FOLLOW_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct cue_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ CUE_PAR0 ; 
 scalar_t__ CUE_RX_BUFPKTS ; 
 int CUE_RX_FRAMES ; 
 scalar_t__ CUE_TX_BUFPKTS ; 
 int CUE_TX_FRAMES ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int* FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (struct cue_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cue_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_ether*) ; 
 struct ifnet* FUNC7 (struct usb_ether*) ; 
 struct cue_softc* FUNC8 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct usb_ether *ue)
{
	struct cue_softc *sc = FUNC8(ue);
	struct ifnet *ifp = FUNC7(ue);
	int i;

	FUNC0(sc, MA_OWNED);

	/*
	 * Cancel pending I/O and free all RX/TX buffers.
	 */
	FUNC6(ue);
#if 0
	cue_reset(sc);
#endif
	/* Set MAC address */
	for (i = 0; i < ETHER_ADDR_LEN; i++)
		FUNC2(sc, CUE_PAR0 - i, FUNC1(ifp)[i]);

	/* Enable RX logic. */
	FUNC2(sc, CUE_ETHCTL, CUE_ETHCTL_RX_ON | CUE_ETHCTL_MCAST_ON);

	/* Load the multicast filter */
	FUNC4(ue);

	/*
	 * Set the number of RX and TX buffers that we want
	 * to reserve inside the ASIC.
	 */
	FUNC2(sc, CUE_RX_BUFPKTS, CUE_RX_FRAMES);
	FUNC2(sc, CUE_TX_BUFPKTS, CUE_TX_FRAMES);

	/* Set advanced operation modes. */
	FUNC2(sc, CUE_ADVANCED_OPMODES,
	    CUE_AOP_EMBED_RXLEN | 0x01);/* 1 wait state */

	/* Program the LED operation. */
	FUNC2(sc, CUE_LEDCTL, CUE_LEDCTL_FOLLOW_LINK);

	FUNC9(sc->sc_xfer[CUE_BULK_DT_WR]);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	FUNC5(ue);
}