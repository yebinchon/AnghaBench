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
typedef  int uint32_t ;
struct sfxge_txq {scalar_t__ evq_index; scalar_t__ init_state; int ptr_mask; int pending; int entries; scalar_t__ completed; struct sfxge_txq* next; } ;
struct sfxge_evq {scalar_t__ index; scalar_t__ tx_done; struct sfxge_txq** txqs; } ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_evq*) ; 
 scalar_t__ SFXGE_EV_BATCH ; 
 scalar_t__ SFXGE_TXQ_STARTED ; 
 scalar_t__ SFXGE_TX_BATCH ; 
 scalar_t__ FUNC2 (int) ; 
 struct sfxge_txq* FUNC3 (struct sfxge_evq*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sfxge_txq*,struct sfxge_evq*) ; 

__attribute__((used)) static boolean_t
FUNC5(void *arg, uint32_t label, uint32_t id)
{
	struct sfxge_evq *evq;
	struct sfxge_txq *txq;
	unsigned int stop;
	unsigned int delta;

	evq = (struct sfxge_evq *)arg;
	FUNC1(evq);

	txq = FUNC3(evq, label);

	FUNC0(txq != NULL, ("txq == NULL"));
	FUNC0(evq->index == txq->evq_index,
	    ("evq->index != txq->evq_index"));

	if (FUNC2(txq->init_state != SFXGE_TXQ_STARTED))
		goto done;

	stop = (id + 1) & txq->ptr_mask;
	id = txq->pending & txq->ptr_mask;

	delta = (stop >= id) ? (stop - id) : (txq->entries - id + stop);
	txq->pending += delta;

	evq->tx_done++;

	if (txq->next == NULL &&
	    evq->txqs != &(txq->next)) {
		*(evq->txqs) = txq;
		evq->txqs = &(txq->next);
	}

	if (txq->pending - txq->completed >= SFXGE_TX_BATCH)
		FUNC4(txq, evq);

done:
	return (evq->tx_done >= SFXGE_EV_BATCH);
}