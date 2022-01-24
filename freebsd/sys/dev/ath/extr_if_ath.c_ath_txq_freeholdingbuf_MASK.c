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
struct ath_txq {TYPE_1__* axq_holdingbf; } ;
struct ath_softc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bf_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_BUF_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_txq*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*,TYPE_1__*) ; 

void
FUNC5(struct ath_softc *sc, struct ath_txq *txq)
{
	FUNC2(sc);
	FUNC3(txq);

	if (txq->axq_holdingbf == NULL)
		return;

	txq->axq_holdingbf->bf_flags &= ~ATH_BUF_BUSY;

	FUNC0(sc);
	FUNC4(sc, txq->axq_holdingbf);
	FUNC1(sc);

	txq->axq_holdingbf = NULL;
}