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
struct ifnet {int if_flags; } ;
struct alc_softc {struct ifnet* alc_ifp; } ;
typedef  int /*<<< orphan*/  mchash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alc_softc*) ; 
 int /*<<< orphan*/  ALC_MAC_CFG ; 
 int /*<<< orphan*/  ALC_MAR0 ; 
 int /*<<< orphan*/  ALC_MAR1 ; 
 int FUNC1 (struct alc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct alc_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_PROMISC ; 
 int MAC_CFG_ALLMULTI ; 
 int MAC_CFG_BCAST ; 
 int MAC_CFG_PROMISC ; 
 int /*<<< orphan*/  alc_hash_maddr ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC5(struct alc_softc *sc)
{
	struct ifnet *ifp;
	uint32_t mchash[2];
	uint32_t rxcfg;

	FUNC0(sc);

	ifp = sc->alc_ifp;

	FUNC3(mchash, sizeof(mchash));
	rxcfg = FUNC1(sc, ALC_MAC_CFG);
	rxcfg &= ~(MAC_CFG_ALLMULTI | MAC_CFG_BCAST | MAC_CFG_PROMISC);
	if ((ifp->if_flags & IFF_BROADCAST) != 0)
		rxcfg |= MAC_CFG_BCAST;
	if ((ifp->if_flags & (IFF_PROMISC | IFF_ALLMULTI)) != 0) {
		if ((ifp->if_flags & IFF_PROMISC) != 0)
			rxcfg |= MAC_CFG_PROMISC;
		if ((ifp->if_flags & IFF_ALLMULTI) != 0)
			rxcfg |= MAC_CFG_ALLMULTI;
		mchash[0] = 0xFFFFFFFF;
		mchash[1] = 0xFFFFFFFF;
		goto chipit;
	}

	FUNC4(ifp, alc_hash_maddr, mchash);

chipit:
	FUNC2(sc, ALC_MAR0, mchash[0]);
	FUNC2(sc, ALC_MAR1, mchash[1]);
	FUNC2(sc, ALC_MAC_CFG, rxcfg);
}