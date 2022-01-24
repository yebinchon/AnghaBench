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
struct g_sched_softc {int sc_flags; int /*<<< orphan*/  sc_mtx; struct g_gsched* sc_gsched; int /*<<< orphan*/  sc_data; int /*<<< orphan*/ * sc_hash; int /*<<< orphan*/  sc_mask; } ;
struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int /*<<< orphan*/  name; } ;
struct g_gsched {int /*<<< orphan*/  (* gs_fini ) (int /*<<< orphan*/ ) ;} ;
struct g_geom {struct g_sched_softc* softc; int /*<<< orphan*/  name; int /*<<< orphan*/  provider; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int G_SCHED_PROXYING ; 
 struct g_provider* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct g_geom*,struct g_provider*) ; 
 struct g_provider* FUNC3 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_sched_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_gsched*) ; 
 int /*<<< orphan*/  g_sched_blackhole ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC8 (struct g_geom*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct g_gsched*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct g_geom*) ; 
 int /*<<< orphan*/  g_sched_start ; 
 int /*<<< orphan*/  FUNC10 (struct g_geom*) ; 
 int FUNC11 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct g_geom*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(struct g_geom *gp, boolean_t force)
{
	struct g_provider *pp, *oldpp = NULL;
	struct g_sched_softc *sc;
	struct g_gsched *gsp;
	int error;

	FUNC12();
	sc = gp->softc;
	if (sc == NULL)
		return (ENXIO);
	if (!(sc->sc_flags & G_SCHED_PROXYING)) {
		pp = FUNC1(&gp->provider);
		if (pp && (pp->acr != 0 || pp->acw != 0 || pp->ace != 0)) {
			const char *msg = force ?
				"but we force removal" : "cannot remove";

			FUNC0(!force,
			    "Device %s is still open (r%dw%de%d), %s.",
			    pp->name, pp->acr, pp->acw, pp->ace, msg);
			if (!force)
				return (EBUSY);
		} else {
			FUNC0(0, "Device %s removed.", gp->name);
		}
	} else
		oldpp = FUNC3(gp);

	gsp = sc->sc_gsched;
	if (gsp) {
		/*
		 * XXX bad hack here: force a dispatch to release
		 * any reference to the hash table still held by
		 * the scheduler.
		 */
		FUNC9(gp);
		/*
		 * We are dying here, no new requests should enter
		 * the scheduler.  This is granted by the topolgy,
		 * either in case we were proxying (new bios are
		 * being redirected) or not (see the access check
		 * above).
		 */
		FUNC7(gp);
		error = FUNC11(gp);

		if (error) {
			/*
			 * Not all the requests came home: this might happen
			 * under heavy load, or if we were waiting for any
			 * bio which is served in the event path (see
			 * geom_slice.c for an example of how this can
			 * happen).  Try to restore a working configuration
			 * if we can fail.
			 */
			if ((sc->sc_flags & G_SCHED_PROXYING) && oldpp) {
				FUNC6(force ?
				    g_sched_blackhole : g_sched_start);
			}

			/*
			 * In the forced destroy case there is not so much
			 * we can do, we have pending bios that will call
			 * g_sched_done() somehow, and we don't want them
			 * to crash the system using freed memory.  We tell
			 * the user that something went wrong, and leak some
			 * memory here.
			 * Note: the callers using force = 1 ignore the
			 * return value.
			 */
			if (force) {
				FUNC0(0, "Pending requests while "
				    " destroying geom, some memory leaked.");
			}

			return (error);
		}

		FUNC10(gp);
		FUNC8(gp, sc->sc_hash, sc->sc_mask,
		    gsp, sc->sc_data);
		sc->sc_hash = NULL;
		gsp->gs_fini(sc->sc_data);
		FUNC5(gsp);
		sc->sc_gsched = NULL;
	} else
		error = 0;

	if ((sc->sc_flags & G_SCHED_PROXYING) && oldpp) {
		error = FUNC2(gp, oldpp);

		if (error) {
			if (force) {
				FUNC0(0, "Unrecoverable error while "
				    "destroying a proxy geom, leaking some "
				    " memory.");
			}

			return (error);
		}
	}

	FUNC14(&sc->sc_mtx);

	FUNC4(gp->softc);
	gp->softc = NULL;
	FUNC13(gp, ENXIO);

	return (error);
}