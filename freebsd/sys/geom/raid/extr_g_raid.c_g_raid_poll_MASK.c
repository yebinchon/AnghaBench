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
struct g_raid_softc {scalar_t__ sc_geom; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_queue_mtx; int /*<<< orphan*/  sc_queue; int /*<<< orphan*/  sc_events; } ;
struct g_raid_event {int dummy; } ;
struct bio {TYPE_1__* bio_from; } ;
struct TYPE_2__ {scalar_t__ geom; } ;

/* Variables and functions */
 struct g_raid_event* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct g_raid_event*,int /*<<< orphan*/ ) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  e_next ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_raid_softc*,struct g_raid_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct g_raid_softc *sc)
{
	struct g_raid_event *ep;
	struct bio *bp;

	FUNC8(&sc->sc_lock);
	FUNC6(&sc->sc_queue_mtx);
	/*
	 * First take a look at events.
	 * This is important to handle events before any I/O requests.
	 */
	ep = FUNC0(&sc->sc_events);
	if (ep != NULL) {
		FUNC1(&sc->sc_events, ep, e_next);
		FUNC7(&sc->sc_queue_mtx);
		FUNC4(sc, ep);
		goto out;
	}
	bp = FUNC2(&sc->sc_queue);
	if (bp != NULL) {
		FUNC7(&sc->sc_queue_mtx);
		if (bp->bio_from == NULL ||
		    bp->bio_from->geom != sc->sc_geom)
			FUNC5(bp);
		else
			FUNC3(bp);
	}
out:
	FUNC9(&sc->sc_lock);
}