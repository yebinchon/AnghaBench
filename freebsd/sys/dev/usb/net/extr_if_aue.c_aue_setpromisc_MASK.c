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
struct ifnet {int if_flags; } ;
struct aue_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aue_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AUE_CTL2 ; 
 int /*<<< orphan*/  AUE_CTL2_RX_PROMISC ; 
 int /*<<< orphan*/  FUNC1 (struct aue_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aue_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 struct ifnet* FUNC3 (struct usb_ether*) ; 
 struct aue_softc* FUNC4 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC5(struct usb_ether *ue)
{
	struct aue_softc *sc = FUNC4(ue);
	struct ifnet *ifp = FUNC3(ue);

	FUNC1(sc, MA_OWNED);

	/* if we want promiscuous mode, set the allframes bit: */
	if (ifp->if_flags & IFF_PROMISC)
		FUNC2(sc, AUE_CTL2, AUE_CTL2_RX_PROMISC);
	else
		FUNC0(sc, AUE_CTL2, AUE_CTL2_RX_PROMISC);
}