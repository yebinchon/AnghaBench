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
struct TYPE_2__ {int /*<<< orphan*/  esm_map; int /*<<< orphan*/  esm_tag; } ;
struct sfxge_evq {scalar_t__ init_state; scalar_t__ rx_done; scalar_t__ tx_done; int /*<<< orphan*/  read_ptr; int /*<<< orphan*/  common; int /*<<< orphan*/ * txq; int /*<<< orphan*/ ** txqs; TYPE_1__ mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  B_TRUE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_evq*) ; 
 scalar_t__ SFXGE_EVQ_STARTED ; 
 scalar_t__ SFXGE_EVQ_STARTING ; 
 int /*<<< orphan*/  FUNC2 (struct sfxge_evq*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sfxge_evq*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sfxge_ev_callbacks ; 
 int /*<<< orphan*/  FUNC7 (struct sfxge_evq*,int /*<<< orphan*/ ) ; 

int
FUNC8(struct sfxge_evq *evq)
{
	int rc;

	FUNC1(evq);

	if (FUNC3(evq->init_state != SFXGE_EVQ_STARTING &&
			    evq->init_state != SFXGE_EVQ_STARTED)) {
		rc = EINVAL;
		goto fail;
	}

	/* Synchronize the DMA memory for reading */
	FUNC4(evq->mem.esm_tag, evq->mem.esm_map,
	    BUS_DMASYNC_POSTREAD);

	FUNC0(evq->rx_done == 0, ("evq->rx_done != 0"));
	FUNC0(evq->tx_done == 0, ("evq->tx_done != 0"));
	FUNC0(evq->txq == NULL, ("evq->txq != NULL"));
	FUNC0(evq->txqs == &evq->txq, ("evq->txqs != &evq->txq"));

	/* Poll the queue */
	FUNC5(evq->common, &evq->read_ptr, &sfxge_ev_callbacks, evq);

	evq->rx_done = 0;
	evq->tx_done = 0;

	/* Perform any pending completion processing */
	FUNC7(evq, B_TRUE);

	/* Re-prime the event queue for interrupts */
	if ((rc = FUNC6(evq->common, evq->read_ptr)) != 0)
		goto fail;

	FUNC2(evq);

	return (0);

fail:
	FUNC2(evq);
	return (rc);
}