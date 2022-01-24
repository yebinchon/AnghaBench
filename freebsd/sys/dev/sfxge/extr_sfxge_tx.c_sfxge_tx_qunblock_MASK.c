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
struct sfxge_txq {size_t evq_index; scalar_t__ init_state; unsigned int added; unsigned int completed; scalar_t__ blocked; int /*<<< orphan*/  entries; struct sfxge_softc* sc; } ;
struct sfxge_softc {struct sfxge_evq** evq; } ;
struct sfxge_evq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sfxge_evq*) ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_txq*) ; 
 scalar_t__ SFXGE_TXQ_STARTED ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sfxge_txq*) ; 
 int /*<<< orphan*/  FUNC5 (struct sfxge_txq*) ; 

__attribute__((used)) static void
FUNC6(struct sfxge_txq *txq)
{
	struct sfxge_softc *sc;
	struct sfxge_evq *evq;

	sc = txq->sc;
	evq = sc->evq[txq->evq_index];

	FUNC0(evq);

	if (FUNC3(txq->init_state != SFXGE_TXQ_STARTED))
		return;

	FUNC1(txq);

	if (txq->blocked) {
		unsigned int level;

		level = txq->added - txq->completed;
		if (level <= FUNC2(txq->entries)) {
			/* reaped must be in sync with blocked */
			FUNC5(txq);
			txq->blocked = 0;
		}
	}

	FUNC4(txq);
	/* note: lock has been dropped */
}