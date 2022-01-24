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
struct smc_softc {int /*<<< orphan*/ * smc_mii_tick; int /*<<< orphan*/  smc_mii_tick_ch; struct ifnet* smc_ifp; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_capenable; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCAP_POLLING ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct smc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct smc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct smc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ifnet*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC5 (struct smc_softc*) ; 
 int /*<<< orphan*/  smc_poll ; 
 int /*<<< orphan*/  FUNC6 (struct smc_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC8(struct smc_softc *sc)
{
	struct ifnet	*ifp;

	FUNC0(sc);
	ifp = sc->smc_ifp;
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
		return;

	FUNC6(sc);
	FUNC5(sc);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

	FUNC7(ifp);

	if (sc->smc_mii_tick != NULL)
		FUNC3(&sc->smc_mii_tick_ch, hz, sc->smc_mii_tick, sc);

#ifdef DEVICE_POLLING
	SMC_UNLOCK(sc);
	ether_poll_register(smc_poll, ifp);
	SMC_LOCK(sc);
	ifp->if_capenable |= IFCAP_POLLING;
#endif
}