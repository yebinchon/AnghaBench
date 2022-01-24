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
struct resource {int dummy; } ;
struct bhndb_softc {TYPE_1__* bus_res; } ;
struct bhndb_regwin {scalar_t__ win_offset; int /*<<< orphan*/  win_type; } ;
struct bhndb_region {scalar_t__ addr; struct bhndb_regwin* static_regwin; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ bhnd_size_t ;
struct TYPE_2__ {int /*<<< orphan*/  res; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct resource* FUNC2 (int /*<<< orphan*/ ,struct bhndb_regwin const*) ; 
 int FUNC3 (struct resource*,struct resource*,scalar_t__,scalar_t__) ; 
 int FUNC4 (struct resource*) ; 
 scalar_t__ FUNC5 (struct resource*) ; 
 scalar_t__ FUNC6 (struct resource*) ; 

__attribute__((used)) static int
FUNC7(struct bhndb_softc *sc,
    struct bhndb_region *region, device_t child, int type, int rid,
    struct resource *r)
{
	struct resource			*bridge_res;
	const struct bhndb_regwin	*win;
	bhnd_size_t			 parent_offset;
	rman_res_t			 r_start, r_size;
	int				 error;

	win = region->static_regwin;

	FUNC1(win != NULL && FUNC0(win->win_type),
	    ("can't activate non-static region"));

	r_start = FUNC6(r);
	r_size = FUNC5(r);

	/* Find the corresponding bridge resource */
	bridge_res = FUNC2(sc->bus_res->res, win);
	if (bridge_res == NULL)
		return (ENXIO);
	
	/* Calculate subregion offset within the parent resource */
	parent_offset = r_start - region->addr;
	parent_offset += win->win_offset;

	/* Configure resource with its real bus values. */
	error = FUNC3(r, bridge_res, parent_offset, r_size);
	if (error)
		return (error);

	/* Mark active */
	if ((error = FUNC4(r)))
		return (error);

	return (0);
}