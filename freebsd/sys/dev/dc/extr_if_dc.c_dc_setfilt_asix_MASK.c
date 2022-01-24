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
struct ifnet {int if_flags; } ;
struct dc_softc {struct ifnet* dc_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_AX_FILTDATA ; 
 int /*<<< orphan*/  DC_AX_FILTIDX ; 
 int /*<<< orphan*/  DC_AX_FILTIDX_MAR0 ; 
 int /*<<< orphan*/  DC_AX_FILTIDX_MAR1 ; 
 int /*<<< orphan*/  DC_AX_FILTIDX_PAR0 ; 
 int /*<<< orphan*/  DC_AX_FILTIDX_PAR1 ; 
 int /*<<< orphan*/  DC_AX_NETCFG_RX_BROAD ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_NETCFG ; 
 int /*<<< orphan*/  DC_NETCFG_RX_ALLMULTI ; 
 int /*<<< orphan*/  DC_NETCFG_RX_PROMISC ; 
 int /*<<< orphan*/  FUNC2 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dc_hash_maddr_admtek_be ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct dc_softc *sc)
{
	uint32_t eaddr[(ETHER_ADDR_LEN+3)/4];
	struct ifnet *ifp;
	uint32_t hashes[2] = { 0, 0 };

	ifp = sc->dc_ifp;

	/* Init our MAC address. */
	FUNC4(FUNC3(sc->dc_ifp), eaddr, ETHER_ADDR_LEN);
	FUNC0(sc, DC_AX_FILTIDX, DC_AX_FILTIDX_PAR0);
	FUNC0(sc, DC_AX_FILTDATA, eaddr[0]);
	FUNC0(sc, DC_AX_FILTIDX, DC_AX_FILTIDX_PAR1);
	FUNC0(sc, DC_AX_FILTDATA, eaddr[1]);

	/* If we want promiscuous mode, set the allframes bit. */
	if (ifp->if_flags & IFF_PROMISC)
		FUNC2(sc, DC_NETCFG, DC_NETCFG_RX_PROMISC);
	else
		FUNC1(sc, DC_NETCFG, DC_NETCFG_RX_PROMISC);

	if (ifp->if_flags & IFF_ALLMULTI)
		FUNC2(sc, DC_NETCFG, DC_NETCFG_RX_ALLMULTI);
	else
		FUNC1(sc, DC_NETCFG, DC_NETCFG_RX_ALLMULTI);

	/*
	 * The ASIX chip has a special bit to enable reception
	 * of broadcast frames.
	 */
	if (ifp->if_flags & IFF_BROADCAST)
		FUNC2(sc, DC_NETCFG, DC_AX_NETCFG_RX_BROAD);
	else
		FUNC1(sc, DC_NETCFG, DC_AX_NETCFG_RX_BROAD);

	/* first, zot all the existing hash bits */
	FUNC0(sc, DC_AX_FILTIDX, DC_AX_FILTIDX_MAR0);
	FUNC0(sc, DC_AX_FILTDATA, 0);
	FUNC0(sc, DC_AX_FILTIDX, DC_AX_FILTIDX_MAR1);
	FUNC0(sc, DC_AX_FILTDATA, 0);

	/*
	 * If we're already in promisc or allmulti mode, we
	 * don't have to bother programming the multicast filter.
	 */
	if (ifp->if_flags & (IFF_PROMISC | IFF_ALLMULTI))
		return;

	/* now program new ones */
	FUNC5(ifp, dc_hash_maddr_admtek_be, hashes);

	FUNC0(sc, DC_AX_FILTIDX, DC_AX_FILTIDX_MAR0);
	FUNC0(sc, DC_AX_FILTDATA, hashes[0]);
	FUNC0(sc, DC_AX_FILTIDX, DC_AX_FILTIDX_MAR1);
	FUNC0(sc, DC_AX_FILTDATA, hashes[1]);
}