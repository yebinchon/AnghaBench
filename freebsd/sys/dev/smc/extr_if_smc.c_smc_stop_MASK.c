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
struct smc_softc {TYPE_1__* smc_ifp; scalar_t__ smc_mask; int /*<<< orphan*/  smc_mii_tick_ch; int /*<<< orphan*/  smc_watchdog; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_drv_flags; int /*<<< orphan*/  if_capenable; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCAP_POLLING ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  MSK ; 
 int /*<<< orphan*/  RCR ; 
 int /*<<< orphan*/  FUNC0 (struct smc_softc*) ; 
 int /*<<< orphan*/  TCR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct smc_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct smc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct smc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct smc_softc *sc)
{

	FUNC0(sc);

	/*
	 * Turn off callouts.
	 */
	FUNC1(&sc->smc_watchdog);
	FUNC1(&sc->smc_mii_tick_ch);

	/*
	 * Mask all interrupts.
	 */
	FUNC3(sc, 2);
	sc->smc_mask = 0;
	FUNC4(sc, MSK, 0);
#ifdef DEVICE_POLLING
	ether_poll_deregister(sc->smc_ifp);
	sc->smc_ifp->if_capenable &= ~IFCAP_POLLING;
#endif

	/*
	 * Disable transmit and receive.
	 */
	FUNC3(sc, 0);
	FUNC5(sc, TCR, 0);
	FUNC5(sc, RCR, 0);

	sc->smc_ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
}