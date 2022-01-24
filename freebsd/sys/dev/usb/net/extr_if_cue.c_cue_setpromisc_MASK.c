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
struct cue_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cue_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CUE_ETHCTL ; 
 int /*<<< orphan*/  CUE_ETHCTL_PROMISC ; 
 int /*<<< orphan*/  FUNC1 (struct cue_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cue_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ether*) ; 
 struct ifnet* FUNC4 (struct usb_ether*) ; 
 struct cue_softc* FUNC5 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC6(struct usb_ether *ue)
{
	struct cue_softc *sc = FUNC5(ue);
	struct ifnet *ifp = FUNC4(ue);

	FUNC1(sc, MA_OWNED);

	/* if we want promiscuous mode, set the allframes bit */
	if (ifp->if_flags & IFF_PROMISC)
		FUNC2(sc, CUE_ETHCTL, CUE_ETHCTL_PROMISC);
	else
		FUNC0(sc, CUE_ETHCTL, CUE_ETHCTL_PROMISC);

	/* write multicast hash-bits */
	FUNC3(ue);
}