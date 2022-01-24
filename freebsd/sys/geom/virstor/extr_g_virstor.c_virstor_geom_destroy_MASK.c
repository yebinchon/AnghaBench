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
typedef  size_t u_int ;
struct g_virstor_softc {size_t n_components; struct g_virstor_softc* components; struct g_virstor_softc* map; int /*<<< orphan*/  delayed_bio_q_mtx; int /*<<< orphan*/  delayed_bio_q; TYPE_1__* bio; struct g_provider* provider; struct g_geom* geom; int /*<<< orphan*/ * gcons; } ;
struct g_virstor_bio_q {size_t n_components; struct g_virstor_bio_q* components; struct g_virstor_bio_q* map; int /*<<< orphan*/  delayed_bio_q_mtx; int /*<<< orphan*/  delayed_bio_q; TYPE_1__* bio; struct g_provider* provider; struct g_geom* geom; int /*<<< orphan*/ * gcons; } ;
struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int /*<<< orphan*/  name; } ;
struct g_geom {int /*<<< orphan*/  name; int /*<<< orphan*/  provider; int /*<<< orphan*/ * softc; } ;
typedef  scalar_t__ boolean_t ;
struct TYPE_2__ {int /*<<< orphan*/  bio_error; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOSPC ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct g_provider* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LVL_DEBUG ; 
 int /*<<< orphan*/  LVL_ERROR ; 
 int /*<<< orphan*/  LVL_WARNING ; 
 int /*<<< orphan*/  M_GVIRSTOR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct g_virstor_softc* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct g_virstor_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct g_virstor_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct g_geom*,int) ; 
 int /*<<< orphan*/  linkage ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct g_virstor_softc*,struct g_virstor_softc*,scalar_t__) ; 

__attribute__((used)) static int
FUNC15(struct g_virstor_softc *sc, boolean_t force,
    boolean_t delay)
{
	struct g_provider *pp;
	struct g_geom *gp;
	u_int n;

	FUNC9();

	if (sc == NULL)
		return (ENXIO);

	pp = sc->provider;
	if (pp != NULL && (pp->acr != 0 || pp->acw != 0 || pp->ace != 0)) {
		FUNC2(force ? LVL_WARNING : LVL_ERROR,
		    "Device %s is still open.", pp->name);
		if (!force)
			return (EBUSY);
	}

	for (n = 0; n < sc->n_components; n++) {
		if (sc->components[n].gcons != NULL)
			FUNC14(sc, &sc->components[n], delay);
	}

	gp = sc->geom;
	gp->softc = NULL;

	FUNC0(sc->provider == NULL, ("Provider still exists for %s",
	    gp->name));

	/* XXX: This might or might not work, since we're called with
	 * the topology lock held. Also, it might panic the kernel if
	 * the error'd BIO is in softupdates code. */
	FUNC12(&sc->delayed_bio_q_mtx);
	while (!FUNC3(&sc->delayed_bio_q)) {
		struct g_virstor_bio_q *bq;
		bq = FUNC4(&sc->delayed_bio_q);
		bq->bio->bio_error = ENOSPC;
		FUNC8(bq->bio, EIO);
		FUNC5(&sc->delayed_bio_q, linkage);
		FUNC7(bq, M_GVIRSTOR);
	}
	FUNC13(&sc->delayed_bio_q_mtx);
	FUNC11(&sc->delayed_bio_q_mtx);

	FUNC7(sc->map, M_GVIRSTOR);
	FUNC7(sc->components, M_GVIRSTOR);
	FUNC6(sc, sizeof *sc);
	FUNC7(sc, M_GVIRSTOR);

	pp = FUNC1(&gp->provider); /* We only offer one provider */
	if (pp == NULL || (pp->acr == 0 && pp->acw == 0 && pp->ace == 0))
		FUNC2(LVL_DEBUG, "Device %s destroyed", gp->name);

	FUNC10(gp, ENXIO);

	return (0);
}