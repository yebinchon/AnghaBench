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
struct rsu_softc {int /*<<< orphan*/  sc_tx; int /*<<< orphan*/ * sc_tx_pending; int /*<<< orphan*/ * sc_tx_active; int /*<<< orphan*/  sc_tx_inactive; } ;

/* Variables and functions */
 int RSU_N_TRANSFER ; 
 int /*<<< orphan*/  RSU_TX_LIST_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rsu_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct rsu_softc *sc)
{
	int i;

	/* prevent further allocations from TX list(s) */
	FUNC0(&sc->sc_tx_inactive);

	for (i = 0; i != RSU_N_TRANSFER; i++) {
		FUNC0(&sc->sc_tx_active[i]);
		FUNC0(&sc->sc_tx_pending[i]);
	}

	FUNC1(sc, sc->sc_tx, RSU_TX_LIST_COUNT);
}