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
struct rsu_softc {int /*<<< orphan*/ * sc_tx; int /*<<< orphan*/  sc_tx_inactive; int /*<<< orphan*/ * sc_tx_pending; int /*<<< orphan*/ * sc_tx_active; } ;

/* Variables and functions */
 int RSU_N_TRANSFER ; 
 int /*<<< orphan*/  RSU_TXBUFSZ ; 
 int RSU_TX_LIST_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int FUNC2 (struct rsu_softc*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct rsu_softc *sc)
{
	int error, i;

	error = FUNC2(sc, sc->sc_tx, RSU_TX_LIST_COUNT,
	    RSU_TXBUFSZ);
	if (error != 0)
		return (error);

	FUNC0(&sc->sc_tx_inactive);

	for (i = 0; i != RSU_N_TRANSFER; i++) {
		FUNC0(&sc->sc_tx_active[i]);
		FUNC0(&sc->sc_tx_pending[i]);
	}

	for (i = 0; i < RSU_TX_LIST_COUNT; i++) {
		FUNC1(&sc->sc_tx_inactive, &sc->sc_tx[i], next);
	}

	return (0);
}