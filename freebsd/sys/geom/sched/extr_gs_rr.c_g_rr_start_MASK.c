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
struct g_rr_softc {int /*<<< orphan*/  sc_rr_tailq; int /*<<< orphan*/  sc_wait; struct g_rr_queue* sc_active; } ;
struct g_rr_queue {int q_bionum; int /*<<< orphan*/  q_bioq; int /*<<< orphan*/  q_status; } ;
struct bio {struct g_rr_queue* bio_caller1; } ;
struct TYPE_2__ {scalar_t__ bypass; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_QUEUE_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct g_rr_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct g_rr_queue* FUNC4 (struct g_rr_softc*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_rr_queue*,struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct g_rr_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct g_rr_queue*) ; 
 TYPE_1__ me ; 
 int /*<<< orphan*/  q_tailq ; 

__attribute__((used)) static int
FUNC8(void *data, struct bio *bp)
{
	struct g_rr_softc *sc = data;
	struct g_rr_queue *qp;

	if (me.bypass)
		return (-1);	/* bypass the scheduler */

	/* Get the queue for the request. */
	qp = FUNC4(sc, bp);
	if (qp == NULL)
		return (-1); /* allocation failed, tell upstream */

	if (FUNC2(&qp->q_bioq) == NULL) {
		/*
		 * We are inserting into an empty queue.
		 * Reset its state if it is sc_active,
		 * otherwise insert it in the RR list.
		 */
		if (qp == sc->sc_active) {
			qp->q_status = G_QUEUE_READY;
			FUNC3(&sc->sc_wait);
		} else {
			FUNC7(qp);
			FUNC0(&sc->sc_rr_tailq, qp, q_tailq);
		}
	}

	qp->q_bionum = 1 + qp->q_bionum - (qp->q_bionum >> 3);

	FUNC6(qp);
	FUNC5(qp, bp);

	/* Inherit the reference returned by g_rr_queue_get(). */
	bp->bio_caller1 = qp;
	FUNC1(&qp->q_bioq, bp);

	return (0);
}