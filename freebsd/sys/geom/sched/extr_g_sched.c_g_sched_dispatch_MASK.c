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
struct g_sched_softc {int sc_flags; int /*<<< orphan*/  sc_data; int /*<<< orphan*/  sc_mtx; struct g_gsched* sc_gsched; } ;
struct g_gsched {struct bio* (* gs_next ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct g_geom {int /*<<< orphan*/  consumer; struct g_sched_softc* softc; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int G_SCHED_FLUSHING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct bio* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(struct g_geom *gp)
{
	struct g_sched_softc *sc = gp->softc;
	struct g_gsched *gsp = sc->sc_gsched;
	struct bio *bp;

	FUNC0(FUNC3(&sc->sc_mtx), ("sc_mtx not owned during dispatch"));

	if ((sc->sc_flags & G_SCHED_FLUSHING))
		return;

	while ((bp = gsp->gs_next(sc->sc_data, 0)) != NULL)
		FUNC2(bp, FUNC1(&gp->consumer));
}