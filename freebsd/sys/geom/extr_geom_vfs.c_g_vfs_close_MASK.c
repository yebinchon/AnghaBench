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
struct g_vfs_softc {int /*<<< orphan*/  sc_orphaned; int /*<<< orphan*/  sc_mtx; TYPE_1__* sc_bo; } ;
struct g_geom {struct g_vfs_softc* softc; } ;
struct g_consumer {int /*<<< orphan*/ * provider; int /*<<< orphan*/  private; struct g_geom* geom; } ;
struct TYPE_2__ {int /*<<< orphan*/  bo_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  V_SAVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct g_vfs_softc*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct g_geom*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct g_consumer *cp)
{
	struct g_geom *gp;
	struct g_vfs_softc *sc;

	FUNC2();

	gp = cp->geom;
	sc = gp->softc;
	FUNC0(sc->sc_bo, V_SAVE, 0, 0);
	sc->sc_bo->bo_private = cp->private;
	gp->softc = NULL;
	FUNC4(&sc->sc_mtx);
	if (!sc->sc_orphaned || cp->provider == NULL)
		FUNC3(gp, ENXIO);
	FUNC1(sc);
}