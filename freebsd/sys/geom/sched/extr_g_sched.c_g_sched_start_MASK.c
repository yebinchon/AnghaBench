#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct g_sched_softc {int sc_flags; int /*<<< orphan*/  sc_pending; int /*<<< orphan*/  sc_data; TYPE_1__* sc_gsched; } ;
struct g_geom {int /*<<< orphan*/  consumer; int /*<<< orphan*/  provider; struct g_sched_softc* softc; } ;
struct bio {scalar_t__ bio_cmd; TYPE_2__* bio_caller1; int /*<<< orphan*/  bio_done; scalar_t__ bio_length; struct g_geom* bio_caller2; TYPE_3__* bio_to; } ;
struct TYPE_7__ {struct g_geom* geom; } ;
struct TYPE_6__ {int /*<<< orphan*/  gs_write_bytes_in_flight; int /*<<< orphan*/  gs_writes_in_flight; int /*<<< orphan*/  gs_bytes_in_flight; int /*<<< orphan*/  gs_requests; int /*<<< orphan*/  gs_in_flight; } ;
struct TYPE_5__ {scalar_t__ (* gs_start ) (int /*<<< orphan*/ ,struct bio*) ;} ;

/* Variables and functions */
 scalar_t__ BIO_READ ; 
 scalar_t__ BIO_WRITE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int G_SCHED_FLUSHING ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  START ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bio*) ; 
 struct bio* FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct g_geom*) ; 
 int /*<<< orphan*/  g_sched_done ; 
 int /*<<< orphan*/  FUNC8 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC9 (struct g_geom*) ; 
 int /*<<< orphan*/  g_std_done ; 
 TYPE_2__ me ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct bio*) ; 

__attribute__((used)) static void
FUNC11(struct bio *bp)
{
	struct g_geom *gp = bp->bio_to->geom;
	struct g_sched_softc *sc = gp->softc;
	struct bio *cbp;

	FUNC3(START, bp);
	FUNC0(bp, "Request received.");

	cbp = FUNC4(bp);
	if (cbp == NULL) {
		FUNC5(bp, ENOMEM);
		return;
	}
	cbp->bio_done = g_sched_done;
	cbp->bio_to = FUNC2(&gp->provider);
	FUNC1(cbp->bio_to != NULL, ("NULL provider"));

	/* We only schedule reads and writes. */
	if (bp->bio_cmd != BIO_READ && bp->bio_cmd != BIO_WRITE)
		goto bypass;

	FUNC0(cbp, "Sending request.");

	FUNC8(gp);
	/*
	 * Call the algorithm's gs_start to queue the request in the
	 * scheduler. If gs_start fails then pass the request down,
	 * otherwise call g_sched_dispatch() which tries to push
	 * one or more requests down.
	 */
	if (!sc->sc_gsched || (sc->sc_flags & G_SCHED_FLUSHING) ||
	    sc->sc_gsched->gs_start(sc->sc_data, cbp)) {
		FUNC9(gp);
		goto bypass;
	}
	/*
	 * We use bio_caller1 to mark requests that are scheduled
	 * so make sure it is not NULL.
	 */
	if (cbp->bio_caller1 == NULL)
		cbp->bio_caller1 = &me;	/* anything not NULL */

	cbp->bio_caller2 = gp;
	sc->sc_pending++;

	/* Update general stats. */
	me.gs_in_flight++;
	me.gs_requests++;
	me.gs_bytes_in_flight += bp->bio_length;
	if (bp->bio_cmd == BIO_WRITE) {
		me.gs_writes_in_flight++;
		me.gs_write_bytes_in_flight += bp->bio_length;
	}
	FUNC7(gp);
	FUNC9(gp);
	return;

bypass:
	cbp->bio_done = g_std_done;
	cbp->bio_caller1 = NULL; /* not scheduled */
	FUNC6(cbp, FUNC2(&gp->consumer));
}