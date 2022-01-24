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
struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int /*<<< orphan*/  name; } ;
struct g_geom {int /*<<< orphan*/  name; int /*<<< orphan*/ * softc; int /*<<< orphan*/  access; int /*<<< orphan*/  provider; } ;
struct g_eli_softc {int /*<<< orphan*/  sc_queue_mtx; int /*<<< orphan*/  sc_workers; int /*<<< orphan*/  sc_flags; struct g_geom* sc_geom; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  G_ELI_FLAG_DESTROY ; 
 int /*<<< orphan*/  G_ELI_FLAG_RW_DETACH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct g_provider* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_ELI ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC3 (struct g_eli_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct g_eli_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_eli_access ; 
 int /*<<< orphan*/  FUNC5 (struct g_eli_softc*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct g_geom*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct g_provider*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct g_eli_softc*) ; 

int
FUNC13(struct g_eli_softc *sc, boolean_t force)
{
	struct g_geom *gp;
	struct g_provider *pp;

	FUNC6();

	if (sc == NULL)
		return (ENXIO);

	gp = sc->sc_geom;
	pp = FUNC2(&gp->provider);
	if (pp != NULL && (pp->acr != 0 || pp->acw != 0 || pp->ace != 0)) {
		if (force) {
			FUNC0(1, "Device %s is still open, so it "
			    "cannot be definitely removed.", pp->name);
			sc->sc_flags |= G_ELI_FLAG_RW_DETACH;
			gp->access = g_eli_access;
			FUNC8(pp, ENXIO);
			return (EBUSY);
		} else {
			FUNC0(1,
			    "Device %s is still open (r%dw%de%d).", pp->name,
			    pp->acr, pp->acw, pp->ace);
			return (EBUSY);
		}
	}

	FUNC11(&sc->sc_queue_mtx);
	sc->sc_flags |= G_ELI_FLAG_DESTROY;
	FUNC12(sc);
	while (!FUNC1(&sc->sc_workers)) {
		FUNC9(&sc->sc_workers, &sc->sc_queue_mtx, PRIBIO,
		    "geli:destroy", 0);
	}
	FUNC10(&sc->sc_queue_mtx);
	gp->softc = NULL;
	FUNC5(sc);
	FUNC3(sc, sizeof(*sc));
	FUNC4(sc, M_ELI);

	if (pp == NULL || (pp->acr == 0 && pp->acw == 0 && pp->ace == 0))
		FUNC0(0, "Device %s destroyed.", gp->name);
	FUNC7(gp, ENXIO);

	return (0);
}