#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct rl_softc {int rl_flags; TYPE_1__* rl_hwrev; struct ifnet* rl_ifp; } ;
struct ifnet {int if_flags; } ;
struct TYPE_2__ {scalar_t__ rl_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rl_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int RL_FLAG_8168G_PLUS ; 
 int RL_FLAG_EARLYOFF ; 
 int RL_FLAG_PCIE ; 
 scalar_t__ RL_HWREV_8168F ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*) ; 
 int /*<<< orphan*/  RL_MAR0 ; 
 int /*<<< orphan*/  RL_MAR4 ; 
 int /*<<< orphan*/  RL_RXCFG ; 
 int RL_RXCFG_CONFIG ; 
 int RL_RXCFG_EARLYOFF ; 
 int RL_RXCFG_EARLYOFFV2 ; 
 int RL_RXCFG_RX_ALLPHYS ; 
 int RL_RXCFG_RX_BROAD ; 
 int RL_RXCFG_RX_INDIV ; 
 int RL_RXCFG_RX_MULTI ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  re_hash_maddr ; 

__attribute__((used)) static void
FUNC4(struct rl_softc *sc)
{
	struct ifnet		*ifp;
	uint32_t		h, hashes[2] = { 0, 0 };
	uint32_t		rxfilt;

	FUNC1(sc);

	ifp = sc->rl_ifp;

	rxfilt = RL_RXCFG_CONFIG | RL_RXCFG_RX_INDIV | RL_RXCFG_RX_BROAD;
	if ((sc->rl_flags & RL_FLAG_EARLYOFF) != 0)
		rxfilt |= RL_RXCFG_EARLYOFF;
	else if ((sc->rl_flags & RL_FLAG_8168G_PLUS) != 0)
		rxfilt |= RL_RXCFG_EARLYOFFV2;

	if (ifp->if_flags & (IFF_ALLMULTI | IFF_PROMISC)) {
		if (ifp->if_flags & IFF_PROMISC)
			rxfilt |= RL_RXCFG_RX_ALLPHYS;
		/*
		 * Unlike other hardwares, we have to explicitly set
		 * RL_RXCFG_RX_MULTI to receive multicast frames in
		 * promiscuous mode.
		 */
		rxfilt |= RL_RXCFG_RX_MULTI;
		hashes[0] = hashes[1] = 0xffffffff;
		goto done;
	}

	FUNC3(ifp, re_hash_maddr, hashes);

	if (hashes[0] != 0 || hashes[1] != 0) {
		/*
		 * For some unfathomable reason, RealTek decided to
		 * reverse the order of the multicast hash registers
		 * in the PCI Express parts.  This means we have to
		 * write the hash pattern in reverse order for those
		 * devices.
		 */
		if ((sc->rl_flags & RL_FLAG_PCIE) != 0) {
			h = FUNC2(hashes[0]);
			hashes[0] = FUNC2(hashes[1]);
			hashes[1] = h;
		}
		rxfilt |= RL_RXCFG_RX_MULTI;
	}

	if  (sc->rl_hwrev->rl_rev == RL_HWREV_8168F) {
		/* Disable multicast filtering due to silicon bug. */
		hashes[0] = 0xffffffff;
		hashes[1] = 0xffffffff;
	}

done:
	FUNC0(sc, RL_MAR0, hashes[0]);
	FUNC0(sc, RL_MAR4, hashes[1]);
	FUNC0(sc, RL_RXCFG, rxfilt);
}