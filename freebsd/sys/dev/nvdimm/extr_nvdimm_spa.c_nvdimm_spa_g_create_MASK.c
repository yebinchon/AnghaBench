#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nvdimm_spa_dev {int /*<<< orphan*/  spa_len; } ;
struct g_spa {int spa_g_proc_run; int spa_g_proc_exiting; int /*<<< orphan*/  spa_g_devstat; TYPE_1__* spa_p; int /*<<< orphan*/  spa_g_stat_mtx; int /*<<< orphan*/  spa_g_mtx; int /*<<< orphan*/  spa_g_proc; int /*<<< orphan*/  spa_g_queue; struct nvdimm_spa_dev* dev; } ;
struct g_geom {struct g_spa* softc; } ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  sectorsize; int /*<<< orphan*/  mediasize; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVSTAT_ALL_SUPPORTED ; 
 int /*<<< orphan*/  DEVSTAT_PRIORITY_MAX ; 
 int /*<<< orphan*/  DEVSTAT_TYPE_DIRECT ; 
 int /*<<< orphan*/  DEV_BSIZE ; 
 int G_PF_ACCEPT_UNMAPPED ; 
 int G_PF_DIRECT_RECEIVE ; 
 int G_PF_DIRECT_SEND ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_NVDIMM ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct g_spa*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct g_geom* FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 TYPE_1__* FUNC5 (struct g_geom*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,struct g_spa*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct g_spa* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvdimm_spa_g_class ; 
 int /*<<< orphan*/  nvdimm_spa_g_thread ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int) ; 

__attribute__((used)) static struct g_geom *
FUNC13(struct nvdimm_spa_dev *dev, const char *name)
{
	struct g_geom *gp;
	struct g_spa *sc;
	int error;

	gp = NULL;
	sc = FUNC9(sizeof(struct g_spa), M_NVDIMM, M_WAITOK | M_ZERO);
	sc->dev = dev;
	FUNC0(&sc->spa_g_queue);
	FUNC11(&sc->spa_g_mtx, "spag", NULL, MTX_DEF);
	FUNC11(&sc->spa_g_stat_mtx, "spagst", NULL, MTX_DEF);
	sc->spa_g_proc_run = true;
	sc->spa_g_proc_exiting = false;
	error = FUNC8(nvdimm_spa_g_thread, sc, &sc->spa_g_proc, 0, 0,
	    "g_spa");
	if (error != 0) {
		FUNC10(&sc->spa_g_mtx);
		FUNC10(&sc->spa_g_stat_mtx);
		FUNC2(sc, M_NVDIMM);
		FUNC12("NVDIMM %s cannot create geom worker, error %d\n", name,
		    error);
	} else {
		FUNC6();
		gp = FUNC4(&nvdimm_spa_g_class, "%s", name);
		gp->softc = sc;
		sc->spa_p = FUNC5(gp, "%s", name);
		sc->spa_p->mediasize = dev->spa_len;
		sc->spa_p->sectorsize = DEV_BSIZE;
		sc->spa_p->flags |= G_PF_DIRECT_SEND | G_PF_DIRECT_RECEIVE |
		    G_PF_ACCEPT_UNMAPPED;
		FUNC3(sc->spa_p, 0);
		sc->spa_g_devstat = FUNC1("spa", -1, DEV_BSIZE,
		    DEVSTAT_ALL_SUPPORTED, DEVSTAT_TYPE_DIRECT,
		    DEVSTAT_PRIORITY_MAX);
		FUNC7();
	}
	return (gp);
}