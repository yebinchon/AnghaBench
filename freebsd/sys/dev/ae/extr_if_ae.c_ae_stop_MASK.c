#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ifnet {int if_drv_flags; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  tick_ch; scalar_t__ wd_timer; int /*<<< orphan*/  flags; struct ifnet* ifp; } ;
typedef  TYPE_1__ ae_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  AE_DMAREAD_EN ; 
 int /*<<< orphan*/  AE_DMAREAD_REG ; 
 int /*<<< orphan*/  AE_DMAWRITE_EN ; 
 int /*<<< orphan*/  AE_DMAWRITE_REG ; 
 int /*<<< orphan*/  AE_FLAG_LINK ; 
 int /*<<< orphan*/  AE_IDLE_REG ; 
 int AE_IDLE_TIMEOUT ; 
 int /*<<< orphan*/  AE_IMR_REG ; 
 int /*<<< orphan*/  AE_ISR_REG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC9(ae_softc_t *sc)
{
	struct ifnet *ifp;
	int i;

	FUNC0(sc);

	ifp = sc->ifp;
	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
	sc->flags &= ~AE_FLAG_LINK;
	sc->wd_timer = 0;	/* Cancel watchdog. */
	FUNC7(&sc->tick_ch);

	/*
	 * Clear and disable interrupts.
	 */
	FUNC3(sc, AE_IMR_REG, 0);
	FUNC3(sc, AE_ISR_REG, 0xffffffff);

	/*
	 * Stop Rx/Tx MACs.
	 */
	FUNC6(sc);
	FUNC5(sc);

	/*
	 * Stop DMA engines.
	 */
	FUNC2(sc, AE_DMAREAD_REG, ~AE_DMAREAD_EN);
	FUNC2(sc, AE_DMAWRITE_REG, ~AE_DMAWRITE_EN);

	/*
	 * Wait for everything to enter idle state.
	 */
	for (i = 0; i < AE_IDLE_TIMEOUT; i++) {
		if (FUNC1(sc, AE_IDLE_REG) == 0)
			break;
		FUNC4(100);
	}
	if (i == AE_IDLE_TIMEOUT)
		FUNC8(sc->dev, "could not enter idle state in stop.\n");
}