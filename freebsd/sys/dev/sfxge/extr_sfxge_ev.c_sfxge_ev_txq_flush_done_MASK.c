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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct sfxge_txq {scalar_t__ init_state; size_t evq_index; } ;
struct sfxge_softc {struct sfxge_evq** evq; struct sfxge_txq** txq; } ;
struct sfxge_evq {size_t index; scalar_t__ init_state; int /*<<< orphan*/  common; struct sfxge_softc* sc; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_evq*) ; 
 scalar_t__ SFXGE_EVQ_STARTED ; 
 int /*<<< orphan*/  SFXGE_SW_EV_TX_QFLUSH_DONE ; 
 scalar_t__ SFXGE_TXQ_INITIALIZED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sfxge_txq*) ; 
 int /*<<< orphan*/  FUNC4 (struct sfxge_txq*) ; 

__attribute__((used)) static boolean_t
FUNC5(void *arg, uint32_t txq_index)
{
	struct sfxge_evq *evq;
	struct sfxge_softc *sc;
	struct sfxge_txq *txq;
	uint16_t magic;

	evq = (struct sfxge_evq *)arg;
	FUNC1(evq);

	sc = evq->sc;
	txq = sc->txq[txq_index];

	FUNC0(txq != NULL, ("txq == NULL"));
	FUNC0(txq->init_state == SFXGE_TXQ_INITIALIZED,
	    ("txq not initialized"));

	if (txq->evq_index == evq->index) {
		FUNC4(txq);
		return (B_FALSE);
	}

	/* Resend a software event on the correct queue */
	evq = sc->evq[txq->evq_index];
	magic = FUNC3(SFXGE_SW_EV_TX_QFLUSH_DONE, txq);

	FUNC0(evq->init_state == SFXGE_EVQ_STARTED,
	    ("evq not started"));
	FUNC2(evq->common, magic);

	return (B_FALSE);
}