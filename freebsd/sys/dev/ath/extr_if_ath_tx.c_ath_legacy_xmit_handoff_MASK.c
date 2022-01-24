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
struct ath_txq {scalar_t__ axq_qnum; } ;
struct ath_softc {int /*<<< orphan*/  sc_alq; } ;
struct ath_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_ALQ_EDMA_TXDESC ; 
 scalar_t__ ATH_TXQ_SWQ ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*,struct ath_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,struct ath_txq*,struct ath_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*,struct ath_txq*,struct ath_buf*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ath_softc *sc, struct ath_txq *txq,
    struct ath_buf *bf)
{
	FUNC0(sc);

#ifdef	ATH_DEBUG_ALQ
	if (if_ath_alq_checkdebug(&sc->sc_alq, ATH_ALQ_EDMA_TXDESC))
		ath_tx_alq_post(sc, bf);
#endif

	if (txq->axq_qnum == ATH_TXQ_SWQ)
		FUNC3(sc, txq, bf);
	else
		FUNC2(sc, txq, bf);
}