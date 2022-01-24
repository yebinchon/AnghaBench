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
struct g_raid_subdisk {struct g_raid_softc* sd_softc; } ;
struct g_raid_softc {int /*<<< orphan*/  sc_queue_mtx; int /*<<< orphan*/  sc_queue; } ;
struct bio {struct g_raid_subdisk* bio_caller1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  dumping ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct g_raid_softc*) ; 

__attribute__((used)) static void
FUNC4(struct bio *bp)
{
	struct g_raid_softc *sc;
	struct g_raid_subdisk *sd;

	sd = bp->bio_caller1;
	sc = sd->sd_softc;
	FUNC1(&sc->sc_queue_mtx);
	FUNC0(&sc->sc_queue, bp);
	FUNC2(&sc->sc_queue_mtx);
	if (!dumping)
		FUNC3(sc);
}