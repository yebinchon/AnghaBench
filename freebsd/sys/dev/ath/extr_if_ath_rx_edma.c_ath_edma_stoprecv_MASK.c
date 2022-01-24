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
struct ath_softc {int sc_rx_stopped; TYPE_1__* sc_rxedma; struct ath_hal* sc_ah; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * m_rxpending; } ;

/* Variables and functions */
 scalar_t__ AH_TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t HAL_RX_QUEUE_HP ; 
 size_t HAL_RX_QUEUE_LP ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct ath_softc *sc, int dodelay)
{
	struct ath_hal *ah = sc->sc_ah;

	FUNC0(sc);

	FUNC5(ah);
	FUNC3(ah, 0);

	/*
	 *
	 */
	if (FUNC4(ah) == AH_TRUE)
		sc->sc_rx_stopped = 1;

	/*
	 * Give the various bus FIFOs (not EDMA descriptor FIFO)
	 * time to finish flushing out data.
	 */
	FUNC2(3000);

	/* Flush RX pending for each queue */
	/* XXX should generic-ify this */
	if (sc->sc_rxedma[HAL_RX_QUEUE_HP].m_rxpending) {
		FUNC6(sc->sc_rxedma[HAL_RX_QUEUE_HP].m_rxpending);
		sc->sc_rxedma[HAL_RX_QUEUE_HP].m_rxpending = NULL;
	}

	if (sc->sc_rxedma[HAL_RX_QUEUE_LP].m_rxpending) {
		FUNC6(sc->sc_rxedma[HAL_RX_QUEUE_LP].m_rxpending);
		sc->sc_rxedma[HAL_RX_QUEUE_LP].m_rxpending = NULL;
	}
	FUNC1(sc);
}