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
struct sfxge_txq {size_t evq_index; scalar_t__ init_state; scalar_t__ flush_state; scalar_t__ pending; scalar_t__ added; scalar_t__ completed; scalar_t__ reaped; scalar_t__ hw_cksum_flags; int /*<<< orphan*/  buf_base_id; int /*<<< orphan*/ * common; scalar_t__ blocked; } ;
struct sfxge_softc {int /*<<< orphan*/  txq_entries; int /*<<< orphan*/  enp; int /*<<< orphan*/  dev; struct sfxge_evq** evq; struct sfxge_txq** txq; } ;
struct sfxge_evq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC3 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sfxge_evq*) ; 
 int /*<<< orphan*/  FUNC5 (struct sfxge_evq*) ; 
 scalar_t__ SFXGE_FLUSH_DONE ; 
 scalar_t__ SFXGE_FLUSH_FAILED ; 
 scalar_t__ SFXGE_FLUSH_PENDING ; 
 scalar_t__ SFXGE_TXQ_INITIALIZED ; 
 int /*<<< orphan*/  FUNC6 (struct sfxge_txq*) ; 
 scalar_t__ SFXGE_TXQ_STARTED ; 
 int /*<<< orphan*/  FUNC7 (struct sfxge_txq*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct sfxge_txq*,struct sfxge_evq*) ; 
 int /*<<< orphan*/  FUNC14 (struct sfxge_txq*) ; 

__attribute__((used)) static void
FUNC15(struct sfxge_softc *sc, unsigned int index)
{
	struct sfxge_txq *txq;
	struct sfxge_evq *evq;
	unsigned int count;

	FUNC3(sc);

	txq = sc->txq[index];
	evq = sc->evq[txq->evq_index];

	FUNC4(evq);
	FUNC6(txq);

	FUNC2(txq->init_state == SFXGE_TXQ_STARTED,
	    ("txq->init_state != SFXGE_TXQ_STARTED"));

	txq->init_state = SFXGE_TXQ_INITIALIZED;

	if (txq->flush_state != SFXGE_FLUSH_DONE) {
		txq->flush_state = SFXGE_FLUSH_PENDING;

		FUNC5(evq);
		FUNC7(txq);

		/* Flush the transmit queue. */
		if (FUNC11(txq->common) != 0) {
			FUNC12(LOG_ERR, "%s: Flushing Tx queue %u failed\n",
			    FUNC8(sc->dev), index);
			txq->flush_state = SFXGE_FLUSH_DONE;
		} else {
			count = 0;
			do {
				/* Spin for 100ms. */
				FUNC0(100000);
				if (txq->flush_state != SFXGE_FLUSH_PENDING)
					break;
			} while (++count < 20);
		}
		FUNC4(evq);
		FUNC6(txq);

		FUNC2(txq->flush_state != SFXGE_FLUSH_FAILED,
		    ("txq->flush_state == SFXGE_FLUSH_FAILED"));

		if (txq->flush_state != SFXGE_FLUSH_DONE) {
			/* Flush timeout */
			FUNC12(LOG_ERR, "%s: Cannot flush Tx queue %u\n",
			    FUNC8(sc->dev), index);
			txq->flush_state = SFXGE_FLUSH_DONE;
		}
	}

	txq->blocked = 0;
	txq->pending = txq->added;

	FUNC13(txq, evq);
	FUNC2(txq->completed == txq->added,
	    ("txq->completed != txq->added"));

	FUNC14(txq);
	FUNC2(txq->reaped == txq->completed,
	    ("txq->reaped != txq->completed"));

	txq->added = 0;
	txq->pending = 0;
	txq->completed = 0;
	txq->reaped = 0;

	/* Destroy the common code transmit queue. */
	FUNC10(txq->common);
	txq->common = NULL;

	FUNC9(sc->enp, txq->buf_base_id,
	    FUNC1(sc->txq_entries));

	txq->hw_cksum_flags = 0;

	FUNC5(evq);
	FUNC7(txq);
}