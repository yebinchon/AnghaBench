#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct bhndb_softc {TYPE_2__* bus_res; int /*<<< orphan*/  dev; } ;
struct bhndb_region {scalar_t__ priority; scalar_t__ static_regwin; } ;
struct bhndb_dw_alloc {TYPE_1__* win; struct resource* parent_res; scalar_t__ target; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ bhndb_priority_t ;
struct TYPE_5__ {scalar_t__ min_prio; int /*<<< orphan*/  res; } ;
struct TYPE_4__ {scalar_t__ win_size; scalar_t__ win_offset; } ;

/* Variables and functions */
 scalar_t__ BHNDB_ADDRSPACE_NATIVE ; 
 int /*<<< orphan*/  FUNC0 (struct bhndb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bhndb_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ BHNDB_PRIORITY_LOW ; 
 int /*<<< orphan*/  FUNC2 (struct bhndb_softc*) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 int FUNC4 (struct bhndb_softc*,struct bhndb_region*,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct bhndb_dw_alloc*,struct resource*) ; 
 struct bhndb_region* FUNC6 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (struct bhndb_softc*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int FUNC9 (struct resource*,struct resource*,scalar_t__,scalar_t__) ; 
 struct bhndb_dw_alloc* FUNC10 (struct bhndb_softc*,struct resource*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,unsigned long long,...) ; 
 int FUNC12 (struct resource*) ; 
 scalar_t__ FUNC13 (struct resource*) ; 
 scalar_t__ FUNC14 (struct resource*) ; 

__attribute__((used)) static int
FUNC15(struct bhndb_softc *sc, device_t child, int type,
    int rid, struct resource *r, bool *indirect)
{
	struct bhndb_region	*region;
	struct bhndb_dw_alloc	*dwa;
	bhndb_priority_t	 dw_priority;
	rman_res_t		 r_start, r_size;
	rman_res_t		 parent_offset;
	int			 error;

	FUNC1(sc, MA_NOTOWNED);

	if (indirect != NULL)
		*indirect = false;

	switch (type) {
	case SYS_RES_IRQ:
		/* IRQ resources are always directly mapped */
		return (FUNC12(r));

	case SYS_RES_MEMORY:
		/* Handled below */
		break;

	default:
		FUNC11(sc->dev, "unsupported resource type %d\n", type);
		return (ENXIO);
	}

	/* Only MMIO resources can be mapped via register windows */
	FUNC3(type == SYS_RES_MEMORY, ("invalid type: %d", type));
	
	r_start = FUNC14(r);
	r_size = FUNC13(r);

	/* Activate native addrspace resources using the host address space */
	if (FUNC7(sc, child) == BHNDB_ADDRSPACE_NATIVE) {
		struct resource *parent;

		/* Find the bridge resource referenced by the child */
		parent = FUNC8(sc->bus_res->res,
		    type, r_start, r_size);
		if (parent == NULL) {
			FUNC11(sc->dev, "host resource not found "
			     "for 0x%llx-0x%llx\n",
			     (unsigned long long) r_start,
			     (unsigned long long) r_start + r_size - 1);
			return (ENOENT);
		}

		/* Initialize child resource with the real bus values */
		error = FUNC9(r, parent,
		    r_start - FUNC14(parent), r_size);
		if (error)
			return (error);

		/* Try to activate child resource */
		return (FUNC12(r));
	}

	/* Default to low priority */
	dw_priority = BHNDB_PRIORITY_LOW;

	/* Look for a bus region matching the resource's address range */
	region = FUNC6(sc->bus_res, r_start, r_size);
	if (region != NULL)
		dw_priority = region->priority;

	/* Prefer static mappings over consuming a dynamic windows. */
	if (region && region->static_regwin) {
		error = FUNC4(sc, region, child, type,
		    rid, r);
		if (error)
			FUNC11(sc->dev, "static window allocation "
			     "for 0x%llx-0x%llx failed\n",
			     (unsigned long long) r_start,
			     (unsigned long long) r_start + r_size - 1);
		return (error);
	}

	/* A dynamic window will be required; is this resource high enough
	 * priority to be reserved a dynamic window? */
	if (dw_priority < sc->bus_res->min_prio) {
		if (indirect)
			*indirect = true;

		return (ENOMEM);
	}

	/* Find and retain a usable window */
	FUNC0(sc); {
		dwa = FUNC10(sc, r);
	} FUNC2(sc);

	if (dwa == NULL) {
		if (indirect)
			*indirect = true;
		return (ENOMEM);
	}

	/* Configure resource with its real bus values. */
	parent_offset = dwa->win->win_offset;
	parent_offset += r_start - dwa->target;

	error = FUNC9(r, dwa->parent_res, parent_offset,
	    dwa->win->win_size);
	if (error)
		goto failed;

	/* Mark active */
	if ((error = FUNC12(r)))
		goto failed;

	return (0);

failed:
	/* Release our region allocation. */
	FUNC0(sc);
	FUNC5(sc->bus_res, dwa, r);
	FUNC2(sc);

	return (error);
}