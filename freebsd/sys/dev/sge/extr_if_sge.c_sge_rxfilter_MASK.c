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
typedef  int uint16_t ;
struct sge_softc {struct ifnet* sge_ifp; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int AcceptAllPhys ; 
 int AcceptBroadcast ; 
 int AcceptMulticast ; 
 int AcceptMyPhys ; 
 int FUNC0 (struct sge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sge_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  RxHashTable ; 
 int /*<<< orphan*/  RxHashTable2 ; 
 int /*<<< orphan*/  RxMacControl ; 
 int /*<<< orphan*/  FUNC3 (struct sge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  sge_hash_maddr ; 

__attribute__((used)) static void
FUNC5(struct sge_softc *sc)
{
	struct ifnet *ifp;
	uint32_t hashes[2];
	uint16_t rxfilt;

	FUNC3(sc);

	ifp = sc->sge_ifp;
	rxfilt = FUNC0(sc, RxMacControl);
	rxfilt &= ~(AcceptBroadcast | AcceptAllPhys | AcceptMulticast);
	rxfilt |= AcceptMyPhys;
	if ((ifp->if_flags & IFF_BROADCAST) != 0)
		rxfilt |= AcceptBroadcast;
	if ((ifp->if_flags & (IFF_PROMISC | IFF_ALLMULTI)) != 0) {
		if ((ifp->if_flags & IFF_PROMISC) != 0)
			rxfilt |= AcceptAllPhys;
		rxfilt |= AcceptMulticast;
		hashes[0] = 0xFFFFFFFF;
		hashes[1] = 0xFFFFFFFF;
	} else {
		rxfilt |= AcceptMulticast;
		hashes[0] = hashes[1] = 0;
		/* Now program new ones. */
		FUNC4(ifp, sge_hash_maddr, hashes);
	}
	FUNC1(sc, RxMacControl, rxfilt);
	FUNC2(sc, RxHashTable, hashes[0]);
	FUNC2(sc, RxHashTable2, hashes[1]);
}