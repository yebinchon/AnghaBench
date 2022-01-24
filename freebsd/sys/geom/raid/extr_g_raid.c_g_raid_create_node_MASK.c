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
struct g_raid_softc {struct g_geom* sc_geom; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_queue_mtx; int /*<<< orphan*/  sc_worker; int /*<<< orphan*/  sc_queue; int /*<<< orphan*/  sc_events; int /*<<< orphan*/  sc_disks; int /*<<< orphan*/  sc_volumes; scalar_t__ sc_flags; struct g_raid_md_object* sc_md; } ;
struct g_raid_md_object {int dummy; } ;
struct g_geom {struct g_raid_softc* softc; int /*<<< orphan*/  dumpconf; int /*<<< orphan*/  access; int /*<<< orphan*/  orphan; int /*<<< orphan*/  start; } ;
struct g_class {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct g_raid_softc*,char*,char const*) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_RAID ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct g_raid_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct g_geom*) ; 
 struct g_geom* FUNC6 (struct g_class*,char*,char const*) ; 
 int /*<<< orphan*/  g_raid_access ; 
 int /*<<< orphan*/  g_raid_dumpconf ; 
 int /*<<< orphan*/  g_raid_orphan ; 
 int /*<<< orphan*/  g_raid_start ; 
 int /*<<< orphan*/  g_raid_worker ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,struct g_raid_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 struct g_raid_softc* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 

struct g_raid_softc *
FUNC14(struct g_class *mp,
    const char *name, struct g_raid_md_object *md)
{
	struct g_raid_softc *sc;
	struct g_geom *gp;
	int error;

	FUNC7();
	FUNC0(1, "Creating array %s.", name);

	gp = FUNC6(mp, "%s", name);
	sc = FUNC9(sizeof(*sc), M_RAID, M_WAITOK | M_ZERO);
	gp->start = g_raid_start;
	gp->orphan = g_raid_orphan;
	gp->access = g_raid_access;
	gp->dumpconf = g_raid_dumpconf;

	sc->sc_md = md;
	sc->sc_geom = gp;
	sc->sc_flags = 0;
	FUNC2(&sc->sc_volumes);
	FUNC2(&sc->sc_disks);
	FUNC13(&sc->sc_lock, "graid:lock");
	FUNC11(&sc->sc_queue_mtx, "graid:queue", NULL, MTX_DEF);
	FUNC2(&sc->sc_events);
	FUNC3(&sc->sc_queue);
	gp->softc = sc;
	error = FUNC8(g_raid_worker, sc, &sc->sc_worker, 0, 0,
	    "g_raid %s", name);
	if (error != 0) {
		FUNC0(0, "Cannot create kernel thread for %s.", name);
		FUNC10(&sc->sc_queue_mtx);
		FUNC12(&sc->sc_lock);
		FUNC5(sc->sc_geom);
		FUNC4(sc, M_RAID);
		return (NULL);
	}

	FUNC1(0, sc, "Array %s created.", name);
	return (sc);
}