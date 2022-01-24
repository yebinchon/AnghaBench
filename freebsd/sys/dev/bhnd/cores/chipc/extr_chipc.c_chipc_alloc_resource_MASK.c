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
typedef  int u_int ;
struct rman {int dummy; } ;
struct resource_list_entry {scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  count; struct resource* res; } ;
struct resource {int dummy; } ;
struct chipc_softc {struct chipc_region* core_region; } ;
struct chipc_region {scalar_t__ cr_addr; scalar_t__ cr_end; scalar_t__ cr_count; } ;
typedef  scalar_t__ rman_res_t ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int RF_ACTIVE ; 
 int /*<<< orphan*/  RF_ALLOCATED ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 (scalar_t__,int,int,struct resource*) ; 
 struct resource* FUNC3 (scalar_t__,scalar_t__,int,int*,scalar_t__,scalar_t__,scalar_t__,int) ; 
 struct chipc_region* FUNC4 (struct chipc_softc*,scalar_t__,scalar_t__) ; 
 struct rman* FUNC5 (struct chipc_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct chipc_softc*,struct chipc_region*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct chipc_softc*,struct chipc_region*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 struct chipc_softc* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,char*,int,int,int /*<<< orphan*/ ,...) ; 
 struct resource_list_entry* FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC13 (struct resource*) ; 
 int FUNC14 (struct resource*) ; 
 int /*<<< orphan*/  FUNC15 (struct resource*) ; 
 scalar_t__ FUNC16 (struct resource*) ; 
 int /*<<< orphan*/  FUNC17 (struct resource*) ; 
 struct resource* FUNC18 (struct rman*,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct resource*,int) ; 
 scalar_t__ FUNC20 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct resource *
FUNC21(device_t dev, device_t child, int type,
    int *rid, rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct chipc_softc		*sc;
	struct chipc_region		*cr;
	struct resource_list_entry	*rle;
	struct resource			*rv;
	struct rman			*rm;
	int				 error;
	bool				 passthrough, isdefault;

	sc = FUNC10(dev);
	passthrough = (FUNC9(child) != dev);
	isdefault = FUNC1(start, end);
	rle = NULL;

	/* Fetch the resource manager, delegate request if necessary */
	rm = FUNC5(sc, type);
	if (rm == NULL) {
		/* Requested resource type is delegated to our parent */
		rv = FUNC3(dev, child, type, rid,
		    start, end, count, flags);
		return (rv);
	}

	/* Populate defaults */
	if (!passthrough && isdefault) {
		/* Fetch the resource list entry. */
		rle = FUNC12(FUNC0(dev, child),
		    type, *rid);
		if (rle == NULL) {
			FUNC11(dev,
			    "default resource %#x type %d for child %s "
			    "not found\n", *rid, type,
			    FUNC8(child));			
			return (NULL);
		}
		
		if (rle->res != NULL) {
			FUNC11(dev,
			    "resource entry %#x type %d for child %s is busy "
			    "[%d]\n",
			    *rid, type, FUNC8(child),
			    FUNC14(rle->res));
			
			return (NULL);
		}

		start = rle->start;
		end = rle->end;
		count = FUNC20(count, rle->count);
	}

	/* Locate a mapping region */
	if ((cr = FUNC4(sc, start, end)) == NULL) {
		/* Resource requests outside our shared port regions can be
		 * delegated to our parent. */
		rv = FUNC3(dev, child, type, rid,
		    start, end, count, flags);
		return (rv);
	}

	/*
	 * As a special case, children that map the complete ChipCommon register
	 * block are delegated to our parent.
	 *
	 * The rman API does not support sharing resources that are not
	 * identical in size; since we allocate subregions to various children,
	 * any children that need to map the entire register block (e.g. because
	 * they require access to discontiguous register ranges) must make the
	 * allocation through our parent, where we hold a compatible
	 * RF_SHAREABLE allocation.
	 */
	if (cr == sc->core_region && cr->cr_addr == start &&
	    cr->cr_end == end && cr->cr_count == count)
	{
		rv = FUNC3(dev, child, type, rid,
		    start, end, count, flags);
		return (rv);
	}

	/* Try to retain a region reference */
	if ((error = FUNC7(sc, cr, RF_ALLOCATED)))
		return (NULL);

	/* Make our rman reservation */
	rv = FUNC18(rm, start, end, count, flags & ~RF_ACTIVE,
	    child);
	if (rv == NULL) {
		FUNC6(sc, cr, RF_ALLOCATED);
		return (NULL);
	}

	FUNC19(rv, *rid);

	/* Activate */
	if (flags & RF_ACTIVE) {
		error = FUNC2(child, type, *rid, rv);
		if (error) {
			FUNC11(dev,
			    "failed to activate entry %#x type %d for "
				"child %s: %d\n",
			     *rid, type, FUNC8(child), error);

			FUNC6(sc, cr, RF_ALLOCATED);
			FUNC17(rv);

			return (NULL);
		}
	}

	/* Update child's resource list entry */
	if (rle != NULL) {
		rle->res = rv;
		rle->start = FUNC16(rv);
		rle->end = FUNC13(rv);
		rle->count = FUNC15(rv);
	}

	return (rv);
}