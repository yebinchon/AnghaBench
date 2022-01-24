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
struct et_softc {struct ifnet* ifp; } ;

/* Variables and functions */
 int FUNC0 (struct et_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct et_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct et_softc*) ; 
 scalar_t__ ET_MULTI_HASH ; 
 scalar_t__ ET_PKTFILT ; 
 int ET_PKTFILT_BCAST ; 
 int ET_PKTFILT_MCAST ; 
 int ET_PKTFILT_UCAST ; 
 scalar_t__ ET_RXMAC_CTRL ; 
 int ET_RXMAC_CTRL_NO_PKTFILT ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  et_hash_maddr ; 
 int FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int**) ; 

__attribute__((used)) static void
FUNC4(struct et_softc *sc)
{
	struct ifnet *ifp;
	uint32_t hash[4] = { 0, 0, 0, 0 };
	uint32_t rxmac_ctrl, pktfilt;
	int i, count;

	FUNC2(sc);
	ifp = sc->ifp;

	pktfilt = FUNC0(sc, ET_PKTFILT);
	rxmac_ctrl = FUNC0(sc, ET_RXMAC_CTRL);

	pktfilt &= ~(ET_PKTFILT_BCAST | ET_PKTFILT_MCAST | ET_PKTFILT_UCAST);
	if (ifp->if_flags & (IFF_PROMISC | IFF_ALLMULTI)) {
		rxmac_ctrl |= ET_RXMAC_CTRL_NO_PKTFILT;
		goto back;
	}

	count = FUNC3(ifp, et_hash_maddr, &hash);

	for (i = 0; i < 4; ++i)
		FUNC1(sc, ET_MULTI_HASH + (i * 4), hash[i]);

	if (count > 0)
		pktfilt |= ET_PKTFILT_MCAST;
	rxmac_ctrl &= ~ET_RXMAC_CTRL_NO_PKTFILT;
back:
	FUNC1(sc, ET_PKTFILT, pktfilt);
	FUNC1(sc, ET_RXMAC_CTRL, rxmac_ctrl);
}