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
struct g_mountver_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_queue; } ;
struct g_geom {struct g_mountver_softc* softc; } ;
struct bio {TYPE_1__* bio_to; } ;
struct TYPE_2__ {struct g_geom* geom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_queue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct bio *bp)
{
	struct g_mountver_softc *sc;
	struct g_geom *gp;

	gp = bp->bio_to->geom;
	sc = gp->softc;

	FUNC1(&sc->sc_mtx);
	FUNC0(&sc->sc_queue, bp, bio_queue);
	FUNC2(&sc->sc_mtx);
}