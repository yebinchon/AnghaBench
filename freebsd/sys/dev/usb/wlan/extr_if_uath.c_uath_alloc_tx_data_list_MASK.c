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
struct uath_softc {int /*<<< orphan*/ * sc_tx; int /*<<< orphan*/  sc_tx_inactive; int /*<<< orphan*/  sc_tx_pending; int /*<<< orphan*/  sc_tx_active; int /*<<< orphan*/  sc_tx_dma_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UATH_MAX_TXBUFSZ ; 
 int /*<<< orphan*/  FUNC2 (struct uath_softc*,int /*<<< orphan*/ ) ; 
 int UATH_TX_DATA_LIST_COUNT ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  st_tx_inactive ; 
 int FUNC3 (struct uath_softc*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct uath_softc *sc)
{
	int error, i;

	error = FUNC3(sc,
	    sc->sc_tx, UATH_TX_DATA_LIST_COUNT, UATH_MAX_TXBUFSZ,
	    sc->sc_tx_dma_buf);
	if (error != 0)
		return (error);

	FUNC0(&sc->sc_tx_active);
	FUNC0(&sc->sc_tx_inactive);
	FUNC0(&sc->sc_tx_pending);

	for (i = 0; i < UATH_TX_DATA_LIST_COUNT; i++) {
		FUNC1(&sc->sc_tx_inactive, &sc->sc_tx[i],
		    next);
		FUNC2(sc, st_tx_inactive);
	}

	return (0);
}