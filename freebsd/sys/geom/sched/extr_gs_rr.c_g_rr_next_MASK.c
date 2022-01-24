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
struct g_rr_softc {scalar_t__ sc_in_flight; struct g_rr_queue* sc_active; int /*<<< orphan*/  sc_rr_tailq; } ;
struct g_rr_queue {scalar_t__ q_status; int /*<<< orphan*/  q_bioq; scalar_t__ q_service; int /*<<< orphan*/  q_flags; } ;
struct bio {scalar_t__ bio_length; } ;
struct TYPE_2__ {scalar_t__ bypass; int /*<<< orphan*/  queue_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_FLAG_COMPLETED ; 
 scalar_t__ G_QUEUE_BUSY ; 
 scalar_t__ G_QUEUE_READY ; 
 struct g_rr_queue* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct g_rr_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct g_rr_queue*,int /*<<< orphan*/ ) ; 
 struct bio* FUNC3 (int /*<<< orphan*/ *) ; 
 struct bio* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct g_rr_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct g_rr_queue*) ; 
 scalar_t__ FUNC7 (struct g_rr_queue*,struct bio*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ me ; 
 int /*<<< orphan*/  q_tailq ; 

__attribute__((used)) static struct bio *
FUNC9(void *data, int force)
{
	struct g_rr_softc *sc = data;
	struct g_rr_queue *qp;
	struct bio *bp, *next;
	int expired;

	qp = sc->sc_active;
	if (me.bypass == 0 && !force) {
		if (sc->sc_in_flight >= FUNC8(&me.queue_depth, 0))
			return (NULL);

		/* Try with the queue under service first. */
		if (qp != NULL && qp->q_status != G_QUEUE_READY) {
			/*
			 * Queue is anticipating, ignore request.
			 * We should check that we are not past
			 * the timeout, but in that case the timeout
			 * will fire immediately afterwards so we
			 * don't bother.
			 */
			return (NULL);
		}
	} else if (qp != NULL && qp->q_status != G_QUEUE_READY) {
		FUNC6(qp);
		sc->sc_active = qp = NULL;
	}

	/*
	 * No queue under service, look for the first in RR order.
	 * If we find it, select if as sc_active, clear service
	 * and record the end time of the slice.
	 */
	if (qp == NULL) {
		qp = FUNC0(&sc->sc_rr_tailq);
		if (qp == NULL)
			return (NULL); /* no queues at all, return */
		/* otherwise select the new queue for service. */
		FUNC2(&sc->sc_rr_tailq, qp, q_tailq);
		sc->sc_active = qp;
		qp->q_service = 0;
		qp->q_flags &= ~G_FLAG_COMPLETED;
	}

	bp = FUNC4(&qp->q_bioq);	/* surely not NULL */
	qp->q_service += bp->bio_length;	/* charge the service */

	/*
	 * The request at the head of the active queue is always
	 * dispatched, and gs_rr_next() will be called again
	 * immediately.
	 * We need to prepare for what to do next:
	 *
	 * 1. have we reached the end of the (time or service) slice ?
	 *    If so, clear sc_active and possibly requeue the previous
	 *    active queue if it has more requests pending;
	 * 2. do we have more requests in sc_active ?
	 *    If yes, do not anticipate, as gs_rr_next() will run again;
	 *    if no, decide whether or not to anticipate depending
	 *    on read or writes (e.g., anticipate only on reads).
	 */
	expired = FUNC5(qp);	/* are we expired ? */
	next = FUNC3(&qp->q_bioq);	/* do we have one more ? */
 	if (expired) {
		sc->sc_active = NULL;
		/* Either requeue or release reference. */
		if (next != NULL)
			FUNC1(&sc->sc_rr_tailq, qp, q_tailq);
		else
			FUNC6(qp);
	} else if (next != NULL) {
		qp->q_status = G_QUEUE_READY;
	} else {
		if (!force && FUNC7(qp, bp)) {
			/* anticipate */
			qp->q_status = G_QUEUE_BUSY;
		} else {
			/* do not anticipate, release reference */
			FUNC6(qp);
			sc->sc_active = NULL;
		}
	}
	/* If sc_active != NULL, its q_status is always correct. */

	sc->sc_in_flight++;

	return (bp);
}