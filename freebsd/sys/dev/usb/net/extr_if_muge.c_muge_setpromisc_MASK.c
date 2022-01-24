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
struct muge_softc {int sc_rfe_ctl; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_RFE_CTL ; 
 int ETH_RFE_CTL_MCAST_EN_ ; 
 int ETH_RFE_CTL_UCAST_EN_ ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct muge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct muge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct muge_softc*,char*,char*) ; 
 struct ifnet* FUNC3 (struct usb_ether*) ; 
 struct muge_softc* FUNC4 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC5(struct usb_ether *ue)
{
	struct muge_softc *sc = FUNC4(ue);
	struct ifnet *ifp = FUNC3(ue);

	FUNC2(sc, "promiscuous mode %sabled\n",
	    (ifp->if_flags & IFF_PROMISC) ? "en" : "dis");

	FUNC0(sc, MA_OWNED);

	if (ifp->if_flags & IFF_PROMISC)
		sc->sc_rfe_ctl |= ETH_RFE_CTL_MCAST_EN_ | ETH_RFE_CTL_UCAST_EN_;
	else
		sc->sc_rfe_ctl &= ~(ETH_RFE_CTL_MCAST_EN_);

	FUNC1(sc, ETH_RFE_CTL, sc->sc_rfe_ctl);
}