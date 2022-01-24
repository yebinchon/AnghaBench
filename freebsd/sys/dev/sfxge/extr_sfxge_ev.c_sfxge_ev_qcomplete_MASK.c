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
struct sfxge_txq {unsigned int evq_index; scalar_t__ pending; scalar_t__ completed; struct sfxge_txq* next; } ;
struct sfxge_softc {struct sfxge_rxq** rxq; } ;
struct sfxge_rxq {scalar_t__ pending; scalar_t__ completed; } ;
struct sfxge_evq {unsigned int index; struct sfxge_txq* txq; struct sfxge_txq** txqs; struct sfxge_softc* sc; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_evq*) ; 
 int /*<<< orphan*/  FUNC2 (struct sfxge_rxq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sfxge_txq*,struct sfxge_evq*) ; 

__attribute__((used)) static void
FUNC4(struct sfxge_evq *evq, boolean_t eop)
{
	struct sfxge_softc *sc;
	unsigned int index;
	struct sfxge_rxq *rxq;
	struct sfxge_txq *txq;

	FUNC1(evq);

	sc = evq->sc;
	index = evq->index;
	rxq = sc->rxq[index];

	if ((txq = evq->txq) != NULL) {
		evq->txq = NULL;
		evq->txqs = &(evq->txq);

		do {
			struct sfxge_txq *next;

			next = txq->next;
			txq->next = NULL;

			FUNC0(txq->evq_index == index,
			    ("txq->evq_index != index"));

			if (txq->pending != txq->completed)
				FUNC3(txq, evq);

			txq = next;
		} while (txq != NULL);
	}

	if (rxq->pending != rxq->completed)
		FUNC2(rxq, eop);
}