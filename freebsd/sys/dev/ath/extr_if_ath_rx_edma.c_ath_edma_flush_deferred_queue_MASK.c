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
struct ath_softc {int /*<<< orphan*/ * sc_rx_rxlist; } ;
struct ath_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 size_t HAL_RX_QUEUE_HP ; 
 size_t HAL_RX_QUEUE_LP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ath_buf* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ath_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*,struct ath_buf*) ; 
 int /*<<< orphan*/  bf_list ; 

__attribute__((used)) static void
FUNC5(struct ath_softc *sc)
{
	struct ath_buf *bf;

	FUNC0(sc);

	/* Free in one set, inside the lock */
	while (! FUNC1(&sc->sc_rx_rxlist[HAL_RX_QUEUE_LP])) {
		bf = FUNC2(&sc->sc_rx_rxlist[HAL_RX_QUEUE_LP]);
		FUNC3(&sc->sc_rx_rxlist[HAL_RX_QUEUE_LP], bf, bf_list);
		/* Free the buffer/mbuf */
		FUNC4(sc, bf);
	}
	while (! FUNC1(&sc->sc_rx_rxlist[HAL_RX_QUEUE_HP])) {
		bf = FUNC2(&sc->sc_rx_rxlist[HAL_RX_QUEUE_HP]);
		FUNC3(&sc->sc_rx_rxlist[HAL_RX_QUEUE_HP], bf, bf_list);
		/* Free the buffer/mbuf */
		FUNC4(sc, bf);
	}
}