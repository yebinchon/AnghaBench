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
typedef  int /*<<< orphan*/  uint16_t ;
struct usb_ether {int dummy; } ;
struct ifnet {int if_flags; } ;
struct axe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXE_CMD_RXCTL_READ ; 
 int /*<<< orphan*/  AXE_CMD_RXCTL_WRITE ; 
 int /*<<< orphan*/  AXE_RXCMD_PROMISC ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct axe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC3 (struct usb_ether*) ; 
 struct axe_softc* FUNC4 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC5(struct usb_ether *ue)
{
	struct axe_softc *sc = FUNC4(ue);
	struct ifnet *ifp = FUNC3(ue);
	uint16_t rxmode;

	FUNC0(sc, AXE_CMD_RXCTL_READ, 0, 0, &rxmode);

	rxmode = FUNC2(rxmode);

	if (ifp->if_flags & IFF_PROMISC) {
		rxmode |= AXE_RXCMD_PROMISC;
	} else {
		rxmode &= ~AXE_RXCMD_PROMISC;
	}

	FUNC0(sc, AXE_CMD_RXCTL_WRITE, 0, rxmode, NULL);

	FUNC1(ue);
}