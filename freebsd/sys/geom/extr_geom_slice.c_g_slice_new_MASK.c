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
typedef  int /*<<< orphan*/  u_int ;
struct g_slicer {void* softc; int /*<<< orphan*/ * start; } ;
struct g_provider {int /*<<< orphan*/  name; } ;
struct g_geom {TYPE_1__* class; int /*<<< orphan*/ * dumpconf; int /*<<< orphan*/  spoiled; int /*<<< orphan*/  orphan; int /*<<< orphan*/  access; int /*<<< orphan*/  start; struct g_slicer* softc; } ;
struct g_consumer {int flags; } ;
struct g_class {int dummy; } ;
typedef  int /*<<< orphan*/  g_slice_start_t ;
struct TYPE_2__ {int /*<<< orphan*/ * destroy_geom; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int G_CF_DIRECT_RECEIVE ; 
 int G_CF_DIRECT_SEND ; 
 int FUNC0 (struct g_consumer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct g_consumer*,struct g_provider*) ; 
 struct g_consumer* FUNC2 (struct g_geom*) ; 
 struct g_geom* FUNC3 (struct g_class*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_slice_access ; 
 struct g_slicer* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * g_slice_destroy_geom ; 
 int /*<<< orphan*/ * g_slice_dumpconf ; 
 int /*<<< orphan*/  g_slice_orphan ; 
 int /*<<< orphan*/  g_slice_spoiled ; 
 int /*<<< orphan*/  g_slice_start ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct g_geom*,int /*<<< orphan*/ ) ; 

struct g_geom *
FUNC7(struct g_class *mp, u_int slices, struct g_provider *pp, struct g_consumer **cpp, void *extrap, int extra, g_slice_start_t *start)
{
	struct g_geom *gp;
	struct g_slicer *gsp;
	struct g_consumer *cp;
	void **vp;
	int error;

	FUNC5();
	vp = (void **)extrap;
	gp = FUNC3(mp, "%s", pp->name);
	gsp = FUNC4(slices, extra);
	gsp->start = start;
	gp->softc = gsp;
	gp->start = g_slice_start;
	gp->access = g_slice_access;
	gp->orphan = g_slice_orphan;
	gp->spoiled = g_slice_spoiled;
	if (gp->dumpconf == NULL)
		gp->dumpconf = g_slice_dumpconf;
	if (gp->class->destroy_geom == NULL)
		gp->class->destroy_geom = g_slice_destroy_geom;
	cp = FUNC2(gp);
	cp->flags |= G_CF_DIRECT_SEND | G_CF_DIRECT_RECEIVE;
	error = FUNC1(cp, pp);
	if (error == 0)
		error = FUNC0(cp, 1, 0, 0);
	if (error) {
		FUNC6(gp, ENXIO);
		return (NULL);
	}
	if (extrap != NULL)
		*vp = gsp->softc;
	*cpp = cp;
	return (gp);
}