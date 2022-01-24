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
struct ath_txq {int /*<<< orphan*/  axq_qnum; int /*<<< orphan*/  axq_flags; int /*<<< orphan*/  axq_q; } ;
struct ath_softc {int /*<<< orphan*/  sc_ah; struct ath_txq* sc_cabq; } ;
struct ath_buf {int /*<<< orphan*/  bf_daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_txq*) ; 
 int /*<<< orphan*/  ATH_TXQ_PUTRUNNING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct ath_buf* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ath_softc *sc)
{
	struct ath_buf *bf;
	struct ath_txq *cabq = sc->sc_cabq;

	FUNC0(cabq);
	if (FUNC1(&cabq->axq_q))
		return;
	bf = FUNC2(&cabq->axq_q);

	/* Push the first entry into the hardware */
	FUNC3(sc->sc_ah, cabq->axq_qnum, bf->bf_daddr);
	cabq->axq_flags |= ATH_TXQ_PUTRUNNING;

	/* NB: gated by beacon so safe to start here */
	FUNC4(sc->sc_ah, cabq->axq_qnum);
}