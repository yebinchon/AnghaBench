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
struct ath_softc {int sc_debug; struct ath_rx_edma* sc_rxedma; } ;
struct ath_rx_edma {int m_fifolen; scalar_t__ m_fifo_depth; scalar_t__ m_fifo_tail; scalar_t__ m_fifo_head; int /*<<< orphan*/ * m_rxpending; struct ath_buf** m_fifo; } ;
struct ath_buf {int dummy; } ;
typedef  size_t HAL_RX_QUEUE ;

/* Variables and functions */
 int ATH_DEBUG_RECV_DESC ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  HAL_OK ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*,struct ath_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,struct ath_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct ath_softc *sc, HAL_RX_QUEUE qtype)
{
	struct ath_rx_edma *re = &sc->sc_rxedma[qtype];
	int i;

	FUNC0(sc);

	for (i = 0; i < re->m_fifolen; i++) {
		if (re->m_fifo[i] != NULL) {
#ifdef	ATH_DEBUG
			struct ath_buf *bf = re->m_fifo[i];

			if (sc->sc_debug & ATH_DEBUG_RECV_DESC)
				ath_printrxbuf(sc, bf, 0, HAL_OK);
#endif
			FUNC1(sc, re->m_fifo[i]);
			re->m_fifo[i] = NULL;
			re->m_fifo_depth--;
		}
	}

	if (re->m_rxpending != NULL) {
		FUNC3(re->m_rxpending);
		re->m_rxpending = NULL;
	}
	re->m_fifo_head = re->m_fifo_tail = re->m_fifo_depth = 0;

	return (0);
}