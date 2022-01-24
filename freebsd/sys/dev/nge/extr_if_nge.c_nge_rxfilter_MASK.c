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
typedef  int uint32_t ;
struct nge_softc {struct ifnet* nge_ifp; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_BARRIER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct nge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nge_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_PROMISC ; 
 int NGE_FILTADDR_MCAST_LO ; 
 int /*<<< orphan*/  FUNC3 (struct nge_softc*) ; 
 int NGE_MCAST_FILTER_LEN ; 
 int NGE_RXFILTCTL_ALLMULTI ; 
 int NGE_RXFILTCTL_ALLPHYS ; 
 int NGE_RXFILTCTL_ARP ; 
 int NGE_RXFILTCTL_BROAD ; 
 int NGE_RXFILTCTL_ENABLE ; 
 int NGE_RXFILTCTL_MCHASH ; 
 int NGE_RXFILTCTL_PERFECT ; 
 int NGE_RXFILTCTL_UCHASH ; 
 int /*<<< orphan*/  NGE_RXFILT_CTL ; 
 int /*<<< orphan*/  NGE_RXFILT_DATA ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,struct nge_softc*) ; 
 int /*<<< orphan*/  nge_write_maddr ; 

__attribute__((used)) static void
FUNC5(struct nge_softc *sc)
{
	struct ifnet *ifp;
	uint32_t i, rxfilt;

	FUNC3(sc);
	ifp = sc->nge_ifp;

	/* Make sure to stop Rx filtering. */
	rxfilt = FUNC1(sc, NGE_RXFILT_CTL);
	rxfilt &= ~NGE_RXFILTCTL_ENABLE;
	FUNC2(sc, NGE_RXFILT_CTL, rxfilt);
	FUNC0(sc, NGE_RXFILT_CTL, BUS_SPACE_BARRIER_WRITE);

	rxfilt &= ~(NGE_RXFILTCTL_ALLMULTI | NGE_RXFILTCTL_ALLPHYS);
	rxfilt &= ~NGE_RXFILTCTL_BROAD;
	/*
	 * We don't want to use the hash table for matching unicast
	 * addresses.
	 */
	rxfilt &= ~(NGE_RXFILTCTL_MCHASH | NGE_RXFILTCTL_UCHASH);

	/*
	 * For the NatSemi chip, we have to explicitly enable the
	 * reception of ARP frames, as well as turn on the 'perfect
	 * match' filter where we store the station address, otherwise
	 * we won't receive unicasts meant for this host.
	 */
	rxfilt |= NGE_RXFILTCTL_ARP | NGE_RXFILTCTL_PERFECT;

	/*
	 * Set the capture broadcast bit to capture broadcast frames.
	 */
	if ((ifp->if_flags & IFF_BROADCAST) != 0)
		rxfilt |= NGE_RXFILTCTL_BROAD;

	if ((ifp->if_flags & IFF_PROMISC) != 0 ||
	    (ifp->if_flags & IFF_ALLMULTI) != 0) {
		rxfilt |= NGE_RXFILTCTL_ALLMULTI;
		if ((ifp->if_flags & IFF_PROMISC) != 0)
			rxfilt |= NGE_RXFILTCTL_ALLPHYS;
		goto done;
	}

	/*
	 * We have to explicitly enable the multicast hash table
	 * on the NatSemi chip if we want to use it, which we do.
	 */
	rxfilt |= NGE_RXFILTCTL_MCHASH;

	/* first, zot all the existing hash bits */
	for (i = 0; i < NGE_MCAST_FILTER_LEN; i += 2) {
		FUNC2(sc, NGE_RXFILT_CTL, NGE_FILTADDR_MCAST_LO + i);
		FUNC2(sc, NGE_RXFILT_DATA, 0);
	}

	FUNC4(ifp, nge_write_maddr, sc);
done:
	FUNC2(sc, NGE_RXFILT_CTL, rxfilt);
	/* Turn the receive filter on. */
	rxfilt |= NGE_RXFILTCTL_ENABLE;
	FUNC2(sc, NGE_RXFILT_CTL, rxfilt);
	FUNC0(sc, NGE_RXFILT_CTL, BUS_SPACE_BARRIER_WRITE);
}