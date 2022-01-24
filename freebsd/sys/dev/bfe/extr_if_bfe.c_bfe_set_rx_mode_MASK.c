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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ifnet {int if_flags; } ;
struct bfe_softc {struct ifnet* bfe_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFE_CAM_CTRL ; 
 int /*<<< orphan*/  BFE_CAM_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BFE_RXCONF ; 
 int /*<<< orphan*/  BFE_RXCONF_ALLMULTI ; 
 int /*<<< orphan*/  BFE_RXCONF_DBCAST ; 
 int /*<<< orphan*/  BFE_RXCONF_PROMISC ; 
 int /*<<< orphan*/  FUNC2 (struct bfe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfe_write_maddr ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,struct bfe_softc*) ; 

__attribute__((used)) static void
FUNC7(struct bfe_softc *sc)
{
	struct ifnet *ifp = sc->bfe_ifp;
	u_int32_t val;

	FUNC0(sc);

	val = FUNC2(sc, BFE_RXCONF);

	if (ifp->if_flags & IFF_PROMISC)
		val |= BFE_RXCONF_PROMISC;
	else
		val &= ~BFE_RXCONF_PROMISC;

	if (ifp->if_flags & IFF_BROADCAST)
		val &= ~BFE_RXCONF_DBCAST;
	else
		val |= BFE_RXCONF_DBCAST;


	FUNC3(sc, BFE_CAM_CTRL, 0);
	FUNC5(sc, FUNC4(sc->bfe_ifp), 0);

	if (ifp->if_flags & IFF_ALLMULTI)
		val |= BFE_RXCONF_ALLMULTI;
	else {
		val &= ~BFE_RXCONF_ALLMULTI;
		FUNC6(ifp, bfe_write_maddr, sc);
	}

	FUNC3(sc, BFE_RXCONF, val);
	FUNC1(sc, BFE_CAM_CTRL, BFE_CAM_ENABLE);
}