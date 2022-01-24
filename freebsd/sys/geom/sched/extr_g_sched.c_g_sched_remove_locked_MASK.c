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
struct g_sched_softc {int /*<<< orphan*/  sc_flags; int /*<<< orphan*/ * sc_data; int /*<<< orphan*/ * sc_gsched; int /*<<< orphan*/ * sc_hash; int /*<<< orphan*/  sc_mask; } ;
struct g_gsched {int /*<<< orphan*/  (* gs_fini ) (int /*<<< orphan*/ *) ;} ;
struct g_geom {struct g_sched_softc* softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_SCHED_FLUSHING ; 
 int /*<<< orphan*/  FUNC0 (struct g_gsched*) ; 
 int /*<<< orphan*/  FUNC1 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_geom*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct g_gsched*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_geom*) ; 
 int FUNC5 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct g_geom *gp, struct g_gsched *gsp)
{
	struct g_sched_softc *sc = gp->softc;
	int error;

	/* Set the flushing flag: new bios will not enter the scheduler. */
	sc->sc_flags |= G_SCHED_FLUSHING;

	FUNC1(gp);
	error = FUNC5(gp);
	if (error)
		goto failed;
	
	/* No more requests pending or in flight from the old gsp. */

	FUNC2(gp, sc->sc_hash, sc->sc_mask, gsp, sc->sc_data);
	sc->sc_hash = NULL;

	/*
	 * Avoid deadlock here by releasing the gp mutex and reacquiring
	 * it once done.  It should be safe, since no reconfiguration or
	 * destruction can take place due to the geom topology lock; no
	 * new request can use the current sc_data since we flagged the
	 * geom as being flushed.
	 */
	FUNC4(gp);
	gsp->gs_fini(sc->sc_data);
	FUNC3(gp);

	sc->sc_gsched = NULL;
	sc->sc_data = NULL;
	FUNC0(gsp);

failed:
	sc->sc_flags &= ~G_SCHED_FLUSHING;

	return (error);
}