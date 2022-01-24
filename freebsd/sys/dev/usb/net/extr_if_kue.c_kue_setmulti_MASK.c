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
struct kue_softc {int /*<<< orphan*/  sc_rxfilt; int /*<<< orphan*/  sc_mcfilters; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int ETHER_ADDR_LEN ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  KUE_CMD_SET_MCAST_FILTERS ; 
 int /*<<< orphan*/  KUE_CMD_SET_PKT_FILTER ; 
 int /*<<< orphan*/  KUE_CTL_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct kue_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kue_softc*) ; 
 int /*<<< orphan*/  KUE_RXFILT_ALLMULTI ; 
 int /*<<< orphan*/  KUE_RXFILT_MULTICAST ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC2 (struct ifnet*,int /*<<< orphan*/ ,struct kue_softc*) ; 
 int /*<<< orphan*/  kue_copy_maddr ; 
 int /*<<< orphan*/  FUNC3 (struct kue_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kue_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC5 (struct usb_ether*) ; 
 struct kue_softc* FUNC6 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC7(struct usb_ether *ue)
{
	struct kue_softc *sc = FUNC6(ue);
	struct ifnet *ifp = FUNC5(ue);
	int i;

	FUNC0(sc, MA_OWNED);

	if (ifp->if_flags & IFF_ALLMULTI || ifp->if_flags & IFF_PROMISC) {
		sc->sc_rxfilt |= KUE_RXFILT_ALLMULTI;
		sc->sc_rxfilt &= ~KUE_RXFILT_MULTICAST;
		FUNC4(sc, KUE_CMD_SET_PKT_FILTER, sc->sc_rxfilt);
		return;
	}

	sc->sc_rxfilt &= ~KUE_RXFILT_ALLMULTI;

	i = FUNC2(ifp, kue_copy_maddr, sc);

	if (i >= FUNC1(sc))
		sc->sc_rxfilt |= KUE_RXFILT_ALLMULTI;
	else {
		sc->sc_rxfilt |= KUE_RXFILT_MULTICAST;
		FUNC3(sc, KUE_CTL_WRITE, KUE_CMD_SET_MCAST_FILTERS,
		    i, sc->sc_mcfilters, i * ETHER_ADDR_LEN);
	}

	FUNC4(sc, KUE_CMD_SET_PKT_FILTER, sc->sc_rxfilt);
}