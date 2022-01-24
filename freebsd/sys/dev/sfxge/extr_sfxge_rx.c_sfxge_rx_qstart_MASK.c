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
struct sfxge_softc {int /*<<< orphan*/  rxq_entries; int /*<<< orphan*/  enp; struct sfxge_evq** evq; struct sfxge_rxq** rxq; } ;
struct sfxge_rxq {scalar_t__ init_state; int /*<<< orphan*/  buf_base_id; int /*<<< orphan*/  flush_state; int /*<<< orphan*/  common; int /*<<< orphan*/  mem; } ;
struct sfxge_evq {scalar_t__ init_state; int /*<<< orphan*/  common; } ;
typedef  int /*<<< orphan*/  efsys_mem_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  EFX_RXQ_FLAG_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EFX_RXQ_TYPE_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sfxge_evq*) ; 
 scalar_t__ SFXGE_EVQ_STARTED ; 
 int /*<<< orphan*/  FUNC5 (struct sfxge_evq*) ; 
 int /*<<< orphan*/  SFXGE_FLUSH_REQUIRED ; 
 scalar_t__ SFXGE_RXQ_INITIALIZED ; 
 scalar_t__ SFXGE_RXQ_STARTED ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sfxge_rxq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct sfxge_softc *sc, unsigned int index)
{
	struct sfxge_rxq *rxq;
	efsys_mem_t *esmp;
	struct sfxge_evq *evq;
	int rc;

	FUNC3(sc);

	rxq = sc->rxq[index];
	esmp = &rxq->mem;
	evq = sc->evq[index];

	FUNC2(rxq->init_state == SFXGE_RXQ_INITIALIZED,
	    ("rxq->init_state != SFXGE_RXQ_INITIALIZED"));
	FUNC2(evq->init_state == SFXGE_EVQ_STARTED,
	    ("evq->init_state != SFXGE_EVQ_STARTED"));

	/* Program the buffer table. */
	if ((rc = FUNC9(sc->enp, rxq->buf_base_id, esmp,
	    FUNC1(sc->rxq_entries))) != 0)
		return (rc);

	/* Create the common code receive queue. */
	if ((rc = FUNC6(sc->enp, index, 0, EFX_RXQ_TYPE_DEFAULT,
	    esmp, sc->rxq_entries, rxq->buf_base_id, EFX_RXQ_FLAG_NONE,
	    evq->common, &rxq->common)) != 0)
		goto fail;

	FUNC4(evq);

	/* Enable the receive queue. */
	FUNC7(rxq->common);

	rxq->init_state = SFXGE_RXQ_STARTED;
	rxq->flush_state = SFXGE_FLUSH_REQUIRED;

	/* Try to fill the queue from the pool. */
	FUNC10(rxq, FUNC0(sc->rxq_entries), B_FALSE);

	FUNC5(evq);

	return (0);

fail:
	FUNC8(sc->enp, rxq->buf_base_id,
	    FUNC1(sc->rxq_entries));
	return (rc);
}