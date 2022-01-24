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
typedef  int /*<<< orphan*/  u_long ;
struct gctl_req {int dummy; } ;
struct g_sched_softc {int /*<<< orphan*/  sc_mask; struct g_hash* sc_hash; void* sc_data; struct g_gsched* sc_gsched; } ;
struct g_provider {struct g_geom* geom; } ;
struct g_hash {int dummy; } ;
struct g_gsched {int /*<<< orphan*/  (* gs_fini ) (void*) ;scalar_t__ gs_priv_size; void* (* gs_init ) (struct g_geom*) ;} ;
struct g_geom {struct g_sched_softc* softc; } ;
struct g_class {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HASH_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct g_gsched*) ; 
 int /*<<< orphan*/  FUNC1 (struct g_geom*,struct g_hash*,int /*<<< orphan*/ ,struct g_gsched*,void*) ; 
 struct g_hash* FUNC2 (struct g_gsched*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct g_geom*) ; 
 int FUNC4 (struct g_geom*,struct g_gsched*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_geom*) ; 
 void* FUNC6 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static int
FUNC8(struct gctl_req *req, struct g_class *mp,
    struct g_provider *pp, struct g_gsched *gsp)
{
	struct g_sched_softc *sc;
	struct g_geom *gp;
	struct g_hash *newh;
	void *data;
	u_long mask;
	int error = 0;

	gp = pp->geom;
	sc = gp->softc;

	data = gsp->gs_init(gp);
	if (data == NULL)
		return (ENOMEM);

	newh = FUNC2(gsp, &mask, HASH_WAITOK);
	if (gsp->gs_priv_size && !newh) {
		error = ENOMEM;
		goto fail;
	}

	FUNC3(gp);
	if (sc->sc_gsched) {	/* can be NULL in some cases */
		error = FUNC4(gp, sc->sc_gsched);
		if (error)
			goto fail;
	}

	FUNC0(gsp);
	sc->sc_gsched = gsp;
	sc->sc_data = data;
	sc->sc_hash = newh;
	sc->sc_mask = mask;

	FUNC5(gp);

	return (0);

fail:
	if (newh)
		FUNC1(gp, newh, mask, gsp, data);

	if (data)
		gsp->gs_fini(data);

	FUNC5(gp);

	return (error);
}