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
struct g_uzip_softc {int wrkthr_flags; struct g_uzip_softc* last_buf; int /*<<< orphan*/  last_mtx; int /*<<< orphan*/  queue_mtx; struct g_uzip_softc* toc; TYPE_1__* dcp; int /*<<< orphan*/  procp; int /*<<< orphan*/  req_cached; int /*<<< orphan*/  req_total; } ;
struct g_geom {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GUZ_DBG_INFO ; 
 int GUZ_EXITING ; 
 int GUZ_SHUTDOWN ; 
 int /*<<< orphan*/  M_GEOM_UZIP ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC1 (struct g_uzip_softc*,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct g_uzip_softc*) ; 

__attribute__((used)) static void
FUNC8(struct g_uzip_softc *sc, struct g_geom *gp)
{

	if (gp != NULL) {
		FUNC0(GUZ_DBG_INFO, ("%s: %d requests, %d cached\n",
		    gp->name, sc->req_total, sc->req_cached));
	}

	FUNC4(&sc->queue_mtx);
	sc->wrkthr_flags |= GUZ_SHUTDOWN;
	FUNC7(sc);
	while (!(sc->wrkthr_flags & GUZ_EXITING)) {
		FUNC2(sc->procp, &sc->queue_mtx, PRIBIO, "guzfree",
		    hz / 10);
	}
	FUNC5(&sc->queue_mtx);

	sc->dcp->free(sc->dcp);
	FUNC1(sc->toc, M_GEOM_UZIP);
	FUNC3(&sc->queue_mtx);
	FUNC3(&sc->last_mtx);
	FUNC1(sc->last_buf, M_GEOM_UZIP);
	FUNC1(sc, M_GEOM_UZIP);
}