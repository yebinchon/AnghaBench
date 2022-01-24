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
struct ifnet {int if_drv_flags; } ;
struct atse_softc {int /*<<< orphan*/  atse_flags; int /*<<< orphan*/  atse_dev; struct ifnet* atse_ifp; int /*<<< orphan*/  atse_tick; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATSE_FLAGS_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct atse_softc*) ; 
 int /*<<< orphan*/  BASE_CFG_COMMAND_CONFIG ; 
 int BASE_CFG_COMMAND_CONFIG_RX_ENA ; 
 int BASE_CFG_COMMAND_CONFIG_TX_ENA ; 
 int FUNC1 (struct atse_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atse_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(struct atse_softc *sc)
{
	uint32_t mask, val4;
	struct ifnet *ifp;
	int i;

	FUNC0(sc);

	FUNC4(&sc->atse_tick);

	ifp = sc->atse_ifp;
	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);

	/* Disable MAC transmit and receive datapath. */
	mask = BASE_CFG_COMMAND_CONFIG_TX_ENA|BASE_CFG_COMMAND_CONFIG_RX_ENA;
	val4 = FUNC1(sc, BASE_CFG_COMMAND_CONFIG);
	val4 &= ~mask;
	FUNC2(sc, BASE_CFG_COMMAND_CONFIG, val4);

	/* Wait for bits to be cleared; i=100 is excessive. */
	for (i = 0; i < 100; i++) {
		val4 = FUNC1(sc, BASE_CFG_COMMAND_CONFIG);
		if ((val4 & mask) == 0) {
			break;
		}
		FUNC3(10);
	}

	if ((val4 & mask) != 0) {
		FUNC5(sc->atse_dev, "Disabling MAC TX/RX timed out.\n");
		/* Punt. */
	}

	sc->atse_flags &= ~ATSE_FLAGS_LINK;

	return (0);
}