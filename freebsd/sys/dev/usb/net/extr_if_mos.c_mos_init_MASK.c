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
typedef  int uint8_t ;
struct usb_ether {int dummy; } ;
struct mos_softc {int* mos_ipgs; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  MOS_CTL ; 
 int MOS_CTL_BS_ENB ; 
 int MOS_CTL_RX_ENB ; 
 int MOS_CTL_SLEEP ; 
 int MOS_CTL_TX_ENB ; 
 int /*<<< orphan*/  MOS_IPG0 ; 
 int /*<<< orphan*/  MOS_IPG1 ; 
 int /*<<< orphan*/  FUNC1 (struct mos_softc*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct mos_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mos_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mos_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC8 (struct mos_softc*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC9 (struct usb_ether*) ; 
 struct mos_softc* FUNC10 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC11(struct usb_ether *ue)
{
	struct mos_softc *sc = FUNC10(ue);
	struct ifnet *ifp = FUNC9(ue);
	uint8_t rxmode;

	FUNC1(sc, MA_OWNED);

	/* Cancel pending I/O and free all RX/TX buffers. */
	FUNC4(sc);

	/* Write MAC address */
	FUNC8(sc, FUNC0(ifp));

	/* Read and set transmitter IPG values */
	sc->mos_ipgs[0] = FUNC2(sc, MOS_IPG0);
	sc->mos_ipgs[1] = FUNC2(sc, MOS_IPG1);
	FUNC3(sc, MOS_IPG0, sc->mos_ipgs[0]);
	FUNC3(sc, MOS_IPG1, sc->mos_ipgs[1]);

	/*
	 * Enable receiver and transmitter, bridge controls speed/duplex
	 * mode
	 */
	rxmode = FUNC2(sc, MOS_CTL);
	rxmode |= MOS_CTL_RX_ENB | MOS_CTL_TX_ENB | MOS_CTL_BS_ENB;
	rxmode &= ~(MOS_CTL_SLEEP);

	FUNC6(ue);

	/* XXX: broadcast mode? */
	FUNC3(sc, MOS_CTL, rxmode);

	/* Load the multicast filter. */
	FUNC5(ue);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	FUNC7(ue);
}