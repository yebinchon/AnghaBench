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
struct g_eli_softc {int sc_flags; TYPE_1__* sc_geom; int /*<<< orphan*/  sc_queue_mtx; int /*<<< orphan*/  sc_inflight; int /*<<< orphan*/  sc_queue; } ;
struct g_consumer {int /*<<< orphan*/  provider; } ;
struct bio {int /*<<< orphan*/  bio_to; int /*<<< orphan*/  bio_done; struct bio* bio_driver1; int /*<<< orphan*/ * bio_driver2; scalar_t__ bio_pflags; } ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_2__ {int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int G_ELI_FLAG_SUSPEND ; 
 int /*<<< orphan*/  FUNC1 (int,struct bio*,char*) ; 
 struct g_consumer* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  g_eli_read_done ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct g_eli_softc*) ; 

void
FUNC9(struct g_eli_softc *sc, struct bio *bp, boolean_t fromworker)
{
	struct g_consumer *cp;
	struct bio *cbp;

	if (!fromworker) {
		/*
		 * We are not called from the worker thread, so check if
		 * device is suspended.
		 */
		FUNC6(&sc->sc_queue_mtx);
		if (sc->sc_flags & G_ELI_FLAG_SUSPEND) {
			/*
			 * If device is suspended, we place the request onto
			 * the queue, so it can be handled after resume.
			 */
			FUNC0(0, "device suspended, move onto queue");
			FUNC4(&sc->sc_queue, bp);
			FUNC7(&sc->sc_queue_mtx);
			FUNC8(sc);
			return;
		}
		FUNC3(&sc->sc_inflight, 1);
		FUNC7(&sc->sc_queue_mtx);
	}
	bp->bio_pflags = 0;
	bp->bio_driver2 = NULL;
	cbp = bp->bio_driver1;
	cbp->bio_done = g_eli_read_done;
	cp = FUNC2(&sc->sc_geom->consumer);
	cbp->bio_to = cp->provider;
	FUNC1(2, cbp, "Sending request.");
	/*
	 * Read encrypted data from provider.
	 */
	FUNC5(cbp, cp);
}