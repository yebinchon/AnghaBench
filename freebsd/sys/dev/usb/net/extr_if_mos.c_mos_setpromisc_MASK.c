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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_ether {int dummy; } ;
struct mos_softc {int dummy; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  MOS_CTL ; 
 int /*<<< orphan*/  MOS_CTL_RX_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct mos_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mos_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mos_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC3 (struct usb_ether*) ; 
 struct mos_softc* FUNC4 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC5(struct usb_ether *ue)
{
	struct mos_softc *sc = FUNC4(ue);
	struct ifnet *ifp = FUNC3(ue);

	uint8_t rxmode;

	FUNC0(sc, MA_OWNED);

	rxmode = FUNC1(sc, MOS_CTL);

	/* If we want promiscuous mode, set the allframes bit. */
	if (ifp->if_flags & IFF_PROMISC) {
		rxmode |= MOS_CTL_RX_PROMISC;
	} else {
		rxmode &= ~MOS_CTL_RX_PROMISC;
	}

	FUNC2(sc, MOS_CTL, rxmode);
}