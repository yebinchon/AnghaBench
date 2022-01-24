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
struct g_spa {int spa_g_proc_run; int /*<<< orphan*/  spa_g_stat_mtx; int /*<<< orphan*/  spa_g_mtx; int /*<<< orphan*/ * spa_g_devstat; int /*<<< orphan*/ * spa_p; int /*<<< orphan*/  spa_g_queue; int /*<<< orphan*/  spa_g_proc_exiting; } ;
struct g_geom {struct g_spa* softc; } ;
struct g_class {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  M_NVDIMM ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct g_spa*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct g_geom*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct gctl_req *req, struct g_class *cp,
    struct g_geom *gp)
{
	struct g_spa *sc;

	sc = gp->softc;
	FUNC6(&sc->spa_g_mtx);
	sc->spa_g_proc_run = false;
	FUNC8(&sc->spa_g_queue);
	while (!sc->spa_g_proc_exiting)
		FUNC4(&sc->spa_g_queue, &sc->spa_g_mtx, PRIBIO, "spa_e", 0);
	FUNC7(&sc->spa_g_mtx);
	FUNC2();
	FUNC3(gp, ENXIO);
	sc->spa_p = NULL;
	if (sc->spa_g_devstat != NULL) {
		FUNC0(sc->spa_g_devstat);
		sc->spa_g_devstat = NULL;
	}
	FUNC5(&sc->spa_g_mtx);
	FUNC5(&sc->spa_g_stat_mtx);
	FUNC1(sc, M_NVDIMM);
	return (0);
}