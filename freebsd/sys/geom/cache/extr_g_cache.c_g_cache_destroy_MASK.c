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
struct g_geom {int /*<<< orphan*/ * softc; int /*<<< orphan*/  name; int /*<<< orphan*/  provider; } ;
struct g_cache_softc {int /*<<< orphan*/  sc_zone; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_desclist; int /*<<< orphan*/  sc_callout; struct g_geom* sc_geom; } ;
struct g_cache_desc {int dummy; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int G_CACHE_BUCKETS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 struct g_cache_desc* FUNC2 (struct g_cache_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  d_next ; 
 int /*<<< orphan*/  FUNC4 (struct g_cache_softc*,struct g_cache_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_cache_softc*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct g_geom*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct g_cache_softc *sc, boolean_t force)
{
	struct g_geom *gp;
	struct g_provider *pp;
	struct g_cache_desc *dp, *dp2;
	int i;

	FUNC6();
	if (sc == NULL)
		return (ENXIO);
	gp = sc->sc_geom;
	pp = FUNC1(&gp->provider);
	if (pp != NULL && (pp->acr != 0 || pp->acw != 0 || pp->ace != 0)) {
		if (force) {
			FUNC0(0, "Device %s is still open, so it "
			    "can't be definitely removed.", pp->name);
		} else {
			FUNC0(1, "Device %s is still open (r%dw%de%d).",
			    pp->name, pp->acr, pp->acw, pp->ace);
			return (EBUSY);
		}
	} else {
		FUNC0(0, "Device %s removed.", gp->name);
	}
	FUNC3(&sc->sc_callout);
	FUNC9(&sc->sc_mtx);
	for (i = 0; i < G_CACHE_BUCKETS; i++) {
		dp = FUNC1(&sc->sc_desclist[i]);
		while (dp != NULL) {
			dp2 = FUNC2(dp, d_next);
			FUNC4(sc, dp);
			dp = dp2;
		}
	}
	FUNC10(&sc->sc_mtx);
	FUNC8(&sc->sc_mtx);
	FUNC11(sc->sc_zone);
	FUNC5(sc);
	gp->softc = NULL;
	FUNC7(gp, ENXIO);

	return (0);
}