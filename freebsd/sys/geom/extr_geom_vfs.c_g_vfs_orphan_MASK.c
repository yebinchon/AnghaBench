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
struct g_vfs_softc {int sc_orphaned; scalar_t__ sc_active; int /*<<< orphan*/  sc_mtx; } ;
struct g_geom {struct g_vfs_softc* softc; int /*<<< orphan*/  name; } ;
struct g_consumer {struct g_geom* geom; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_T_TOPOLOGY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct g_consumer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct g_consumer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct g_consumer *cp)
{
	struct g_geom *gp;
	struct g_vfs_softc *sc;
	int destroy;

	FUNC0();

	gp = cp->geom;
	FUNC1(G_T_TOPOLOGY, "g_vfs_orphan(%p(%s))", cp, gp->name);
	sc = gp->softc;
	if (sc == NULL)
		return;
	FUNC3(&sc->sc_mtx);
	sc->sc_orphaned = 1;
	destroy = (sc->sc_active == 0);
	FUNC4(&sc->sc_mtx);
	if (destroy)
		FUNC2(cp, 0);

	/*
	 * Do not destroy the geom.  Filesystem will do that during unmount.
	 */
}