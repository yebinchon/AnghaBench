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
struct gv_softc {int /*<<< orphan*/  bqueue_mtx; int /*<<< orphan*/  bqueue_up; } ;
struct g_geom {struct gv_softc* softc; } ;
struct bio {TYPE_1__* bio_from; } ;
struct TYPE_2__ {struct g_geom* geom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gv_softc*) ; 

void
FUNC5(struct bio *bp)
{
	struct g_geom *gp;
	struct gv_softc *sc;
	
	FUNC0(bp != NULL, ("NULL bp"));

	gp = bp->bio_from->geom;
	sc = gp->softc;

	FUNC2(&sc->bqueue_mtx);
	FUNC1(sc->bqueue_up, bp);
	FUNC4(sc);
	FUNC3(&sc->bqueue_mtx);
}