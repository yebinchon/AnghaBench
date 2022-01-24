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
struct gctl_req {int dummy; } ;
struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int /*<<< orphan*/  consumers; } ;
struct g_geom {int /*<<< orphan*/  consumer; struct g_bde_softc* softc; int /*<<< orphan*/  provider; int /*<<< orphan*/  name; } ;
struct g_consumer {int dummy; } ;
struct g_class {int /*<<< orphan*/  name; } ;
struct g_bde_softc {int dead; int /*<<< orphan*/  key; int /*<<< orphan*/  worklist_mutex; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  G_T_TOPOLOGY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct g_consumer*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC6 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC7 (struct g_bde_softc*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct g_geom*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct g_bde_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct g_bde_softc*) ; 

__attribute__((used)) static int
FUNC14(struct gctl_req *req, struct g_class *mp, struct g_geom *gp)
{
	struct g_consumer *cp;
	struct g_provider *pp;
	struct g_bde_softc *sc;

	FUNC9(G_T_TOPOLOGY, "g_bde_destroy_geom(%s, %s)", mp->name, gp->name);
	FUNC8();
	/*
	 * Orderly detachment.
	 */
	FUNC0(gp != NULL, ("NULL geom"));
	pp = FUNC2(&gp->provider);
	FUNC0(pp != NULL, ("NULL provider"));
	if (pp->acr > 0 || pp->acw > 0 || pp->ace > 0)
		return (EBUSY);
	sc = gp->softc;
	cp = FUNC2(&gp->consumer);
	FUNC0(cp != NULL, ("NULL consumer"));
	sc->dead = 1;
	FUNC13(sc);
	FUNC4(cp, -1, -1, -1);
	FUNC6(cp);
	FUNC5(cp);
	while (sc->dead != 2 && !FUNC1(&pp->consumers))
		FUNC12(sc, PRIBIO, "g_bdedie", hz);
	FUNC11(&sc->worklist_mutex);
	FUNC3(&sc->key, sizeof sc->key);
	FUNC7(sc);
	FUNC10(gp, ENXIO);
	return (0);
}