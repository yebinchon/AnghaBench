#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sfxge_softc {int /*<<< orphan*/  enp; int /*<<< orphan*/  ev_moderation; struct sfxge_evq** evq; } ;
struct TYPE_4__ {int /*<<< orphan*/  esm_base; } ;
struct sfxge_evq {scalar_t__ init_state; int /*<<< orphan*/  entries; int /*<<< orphan*/  buf_base_id; int /*<<< orphan*/  common; int /*<<< orphan*/  read_ptr; TYPE_1__ mem; } ;
typedef  TYPE_1__ efsys_mem_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_EVQ_FLAGS_TYPE_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ SFXGE_EVQ_INITIALIZED ; 
 int /*<<< orphan*/  FUNC3 (struct sfxge_evq*) ; 
 scalar_t__ SFXGE_EVQ_STARTED ; 
 scalar_t__ SFXGE_EVQ_STARTING ; 
 int /*<<< orphan*/  FUNC4 (struct sfxge_evq*) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 

__attribute__((used)) static int
FUNC12(struct sfxge_softc *sc, unsigned int index)
{
	struct sfxge_evq *evq;
	efsys_mem_t *esmp;
	int count;
	int rc;

	evq = sc->evq[index];
	esmp = &evq->mem;

	FUNC2(evq->init_state == SFXGE_EVQ_INITIALIZED,
	    ("evq->init_state != SFXGE_EVQ_INITIALIZED"));

	/* Clear all events. */
	(void)FUNC10(esmp->esm_base, 0xff, FUNC1(evq->entries));

	/* Program the buffer table. */
	if ((rc = FUNC9(sc->enp, evq->buf_base_id, esmp,
	    FUNC0(evq->entries))) != 0)
		return (rc);

	/* Create the common code event queue. */
	if ((rc = FUNC5(sc->enp, index, esmp, evq->entries,
	    evq->buf_base_id, sc->ev_moderation, EFX_EVQ_FLAGS_TYPE_AUTO,
	    &evq->common)) != 0)
		goto fail;

	FUNC3(evq);

	/* Prime the event queue for interrupts */
	if ((rc = FUNC7(evq->common, evq->read_ptr)) != 0)
		goto fail2;

	evq->init_state = SFXGE_EVQ_STARTING;

	FUNC4(evq);

	/* Wait for the initialization event */
	count = 0;
	do {
		/* Pause for 100 ms */
		FUNC11("sfxge evq init", hz / 10);

		/* Check to see if the test event has been processed */
		if (evq->init_state == SFXGE_EVQ_STARTED)
			goto done;

	} while (++count < 20);

	rc = ETIMEDOUT;
	goto fail3;

done:
	return (0);

fail3:
	FUNC3(evq);
	evq->init_state = SFXGE_EVQ_INITIALIZED;
fail2:
	FUNC4(evq);
	FUNC6(evq->common);
fail:
	FUNC8(sc->enp, evq->buf_base_id,
	    FUNC0(evq->entries));

	return (rc);
}