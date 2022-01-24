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
struct TYPE_2__ {scalar_t__ queued; } ;
struct nfe_softc {scalar_t__ nfe_watchdog_timer; int nfe_force_tx; int rxtxctl; TYPE_1__ txq; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  NFE_RXTX_CTL ; 
 int NFE_RXTX_KICKTX ; 
 int /*<<< orphan*/  FUNC0 (struct nfe_softc*,int /*<<< orphan*/ ,int) ; 
 struct nfe_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfe_softc*) ; 

__attribute__((used)) static void
FUNC9(if_t ifp)
{
	struct nfe_softc *sc = FUNC1(ifp);

	if (sc->nfe_watchdog_timer == 0 || --sc->nfe_watchdog_timer)
		return;

	/* Check if we've lost Tx completion interrupt. */
	FUNC8(sc);
	if (sc->txq.queued == 0) {
		FUNC3(ifp, "watchdog timeout (missed Tx interrupts) "
		    "-- recovering\n");
		if (!FUNC4(ifp))
			FUNC7(ifp);
		return;
	}
	/* Check if we've lost start Tx command. */
	sc->nfe_force_tx++;
	if (sc->nfe_force_tx <= 3) {
		/*
		 * If this is the case for watchdog timeout, the following
		 * code should go to nfe_txeof().
		 */
		FUNC0(sc, NFE_RXTX_CTL, NFE_RXTX_KICKTX | sc->rxtxctl);
		return;
	}
	sc->nfe_force_tx = 0;

	FUNC3(ifp, "watchdog timeout\n");

	FUNC5(ifp, 0, IFF_DRV_RUNNING);
	FUNC2(ifp, IFCOUNTER_OERRORS, 1);
	FUNC6(sc);
}