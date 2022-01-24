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
struct g_mountver_softc {scalar_t__ sc_orphaned; scalar_t__ sc_shutting_down; int /*<<< orphan*/  sc_queue; } ;
struct g_geom {struct g_mountver_softc* softc; } ;
struct bio {TYPE_1__* bio_to; } ;
struct TYPE_2__ {struct g_geom* geom; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_geom*) ; 

__attribute__((used)) static void
FUNC6(struct bio *bp)
{
	struct g_mountver_softc *sc;
	struct g_geom *gp;

	gp = bp->bio_to->geom;
	sc = gp->softc;
	FUNC0(bp, "Request received.");

	/*
	 * It is possible that some bios were returned with ENXIO, even though
	 * orphaning didn't happen yet.  In that case, queue all subsequent
	 * requests in order to maintain ordering.
	 */
	if (sc->sc_orphaned || !FUNC1(&sc->sc_queue)) {
		if (sc->sc_shutting_down) {
			FUNC0(bp, "Discarding request due to shutdown.");
			FUNC2(bp, ENXIO);
			return;
		}
		FUNC0(bp, "Queueing request.");
		FUNC3(bp);
		if (!sc->sc_orphaned)
			FUNC5(gp);
	} else {
		FUNC0(bp, "Sending request.");
		FUNC4(bp);
	}
}