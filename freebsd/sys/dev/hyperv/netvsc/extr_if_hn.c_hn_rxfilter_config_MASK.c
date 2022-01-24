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
typedef  int /*<<< orphan*/  uint32_t ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_multiaddrs; } ;
struct hn_softc {int hn_flags; struct ifnet* hn_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int HN_FLAG_RXVF ; 
 int /*<<< orphan*/  FUNC1 (struct hn_softc*) ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  NDIS_PACKET_TYPE_ALL_MULTICAST ; 
 int /*<<< orphan*/  NDIS_PACKET_TYPE_BROADCAST ; 
 int /*<<< orphan*/  NDIS_PACKET_TYPE_DIRECTED ; 
 int /*<<< orphan*/  NDIS_PACKET_TYPE_PROMISCUOUS ; 
 int FUNC2 (struct hn_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct hn_softc *sc)
{
	struct ifnet *ifp = sc->hn_ifp;
	uint32_t filter;

	FUNC1(sc);

	/*
	 * If the non-transparent mode VF is activated, we don't know how
	 * its RX filter is configured, so stick the synthetic device in
	 * the promiscous mode.
	 */
	if ((ifp->if_flags & IFF_PROMISC) || (sc->hn_flags & HN_FLAG_RXVF)) {
		filter = NDIS_PACKET_TYPE_PROMISCUOUS;
	} else {
		filter = NDIS_PACKET_TYPE_DIRECTED;
		if (ifp->if_flags & IFF_BROADCAST)
			filter |= NDIS_PACKET_TYPE_BROADCAST;
		/* TODO: support multicast list */
		if ((ifp->if_flags & IFF_ALLMULTI) ||
		    !FUNC0(&ifp->if_multiaddrs))
			filter |= NDIS_PACKET_TYPE_ALL_MULTICAST;
	}
	return (FUNC2(sc, filter));
}