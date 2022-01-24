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
struct sfxge_softc {int /*<<< orphan*/  rxq_entries; int /*<<< orphan*/  enp; int /*<<< orphan*/  dev; struct sfxge_evq** evq; struct sfxge_rxq** rxq; } ;
struct sfxge_rxq {scalar_t__ init_state; scalar_t__ flush_state; scalar_t__ pending; scalar_t__ added; scalar_t__ completed; int /*<<< orphan*/  buf_base_id; int /*<<< orphan*/  common; scalar_t__ loopback; scalar_t__ pushed; int /*<<< orphan*/  refill_callout; } ;
struct sfxge_evq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
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
 scalar_t__ SFXGE_RXQ_INITIALIZED ; 
 scalar_t__ SFXGE_RXQ_STARTED ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct sfxge_rxq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct sfxge_softc *sc, unsigned int index)
{
	struct sfxge_rxq *rxq;
	struct sfxge_evq *evq;
	unsigned int count;
	unsigned int retry = 3;

	FUNC3(sc);

	rxq = sc->rxq[index];
	evq = sc->evq[index];

	FUNC4(evq);

	FUNC2(rxq->init_state == SFXGE_RXQ_STARTED,
	    ("rxq not started"));

	rxq->init_state = SFXGE_RXQ_INITIALIZED;

	FUNC6(&rxq->refill_callout);

	while (rxq->flush_state != SFXGE_FLUSH_DONE && retry != 0) {
		rxq->flush_state = SFXGE_FLUSH_PENDING;

		FUNC5(evq);

		/* Flush the receive queue */
		if (FUNC9(rxq->common) != 0) {
			FUNC4(evq);
			rxq->flush_state = SFXGE_FLUSH_FAILED;
			break;
		}

		count = 0;
		do {
			/* Spin for 100 ms */
			FUNC0(100000);

			if (rxq->flush_state != SFXGE_FLUSH_PENDING)
				break;

		} while (++count < 20);

		FUNC4(evq);

		if (rxq->flush_state == SFXGE_FLUSH_PENDING) {
			/* Flush timeout - neither done nor failed */
			FUNC11(LOG_ERR, "%s: Cannot flush Rx queue %u\n",
			    FUNC7(sc->dev), index);
			rxq->flush_state = SFXGE_FLUSH_DONE;
		}
		retry--;
	}
	if (rxq->flush_state == SFXGE_FLUSH_FAILED) {
		FUNC11(LOG_ERR, "%s: Flushing Rx queue %u failed\n",
		    FUNC7(sc->dev), index);
		rxq->flush_state = SFXGE_FLUSH_DONE;
	}

	rxq->pending = rxq->added;
	FUNC12(rxq, B_TRUE);

	FUNC2(rxq->completed == rxq->pending,
	    ("rxq->completed != rxq->pending"));

	rxq->added = 0;
	rxq->pushed = 0;
	rxq->pending = 0;
	rxq->completed = 0;
	rxq->loopback = 0;

	/* Destroy the common code receive queue. */
	FUNC8(rxq->common);

	FUNC10(sc->enp, rxq->buf_base_id,
	    FUNC1(sc->rxq_entries));

	FUNC5(evq);
}