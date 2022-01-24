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
struct xae_softc {int /*<<< orphan*/  xae_callout; int /*<<< orphan*/  mii_softc; struct ifnet* ifp; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  RCW1_RX ; 
 int /*<<< orphan*/  TC_TX ; 
 int /*<<< orphan*/  FUNC0 (struct xae_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xae_softc*) ; 
 int /*<<< orphan*/  XAE_RCW1 ; 
 int /*<<< orphan*/  XAE_TC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xae_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xae_softc*) ; 
 int /*<<< orphan*/  xae_tick ; 

__attribute__((used)) static void
FUNC5(struct xae_softc *sc)
{
	struct ifnet *ifp;

	FUNC1(sc);

	ifp = sc->ifp;
	if (ifp->if_drv_flags & IFF_DRV_RUNNING)
		return;

	ifp->if_drv_flags |= IFF_DRV_RUNNING;

	FUNC4(sc);

	/* Enable the transmitter */
	FUNC0(sc, XAE_TC, TC_TX);

	/* Enable the receiver. */
	FUNC0(sc, XAE_RCW1, RCW1_RX);

	/*
	 * Call mii_mediachg() which will call back into xae_miibus_statchg()
	 * to set up the remaining config registers based on current media.
	 */
	FUNC3(sc->mii_softc);
	FUNC2(&sc->xae_callout, hz, xae_tick, sc);
}