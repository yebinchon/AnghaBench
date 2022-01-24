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
struct ath_txq {int /*<<< orphan*/  axq_q; } ;
struct ath_softc {scalar_t__ sc_isedma; struct ath_txq* sc_cabq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_txq*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 

void
FUNC4(struct ath_softc *sc)
{
	struct ath_txq *cabq = sc->sc_cabq;

	FUNC0(cabq);

	if (FUNC1(&cabq->axq_q))
		return;

	if (sc->sc_isedma)
		FUNC2(sc);
	else
		FUNC3(sc);
}