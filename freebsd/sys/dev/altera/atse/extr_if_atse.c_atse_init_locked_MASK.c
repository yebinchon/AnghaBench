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
typedef  int /*<<< orphan*/  uint8_t ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct atse_softc {int /*<<< orphan*/  atse_tick; int /*<<< orphan*/  atse_flags; int /*<<< orphan*/  atse_miibus; int /*<<< orphan*/  atse_eth_addr; struct ifnet* atse_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATSE_FLAGS_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct atse_softc*) ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/ * FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct atse_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct atse_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct atse_softc*) ; 
 int /*<<< orphan*/  atse_tick ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct atse_softc*) ; 
 struct mii_data* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC8 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC9(struct atse_softc *sc)
{
	struct ifnet *ifp;
	struct mii_data *mii;
	uint8_t *eaddr;

	FUNC0(sc);
	ifp = sc->atse_ifp;

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
		return;
	}

	/*
	 * Must update the ether address if changed.  Given we do not handle
	 * in atse_ioctl() but it's in the general framework, just always
	 * do it here before atse_reset().
	 */
	eaddr = FUNC1(sc->atse_ifp);
	FUNC5(eaddr, &sc->atse_eth_addr, ETHER_ADDR_LEN);

	/* Make things frind to halt, cleanup, ... */
	FUNC4(sc);

	FUNC2(sc);

	/* ... and fire up the engine again. */
	FUNC3(sc);

	sc->atse_flags &= ATSE_FLAGS_LINK;	/* Preserve. */

	mii = FUNC7(sc->atse_miibus);

	sc->atse_flags &= ~ATSE_FLAGS_LINK;
	FUNC8(mii);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

	FUNC6(&sc->atse_tick, hz, atse_tick, sc);
}