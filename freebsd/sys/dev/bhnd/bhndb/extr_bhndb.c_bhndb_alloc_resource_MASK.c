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
struct resource_list_entry {int /*<<< orphan*/  count; scalar_t__ end; scalar_t__ start; struct resource* res; } ;
struct resource {int dummy; } ;
struct bhndb_softc {int /*<<< orphan*/  parent_dev; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 
 struct rman* FUNC3 (struct bhndb_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct bhndb_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,...) ; 
 struct resource_list_entry* FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC10 (struct resource*) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 
 scalar_t__ FUNC12 (struct resource*) ; 
 int /*<<< orphan*/  FUNC13 (struct resource*) ; 
 struct resource* FUNC14 (struct rman*,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct resource*,int) ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct resource *
FUNC17(device_t dev, device_t child, int type,
    int *rid, rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct bhndb_softc		*sc;
	struct resource_list_entry	*rle;
	struct resource			*rv;
	struct rman			*rm;
	int				 error;
	bool				 passthrough, isdefault;

	sc = FUNC7(dev);
	passthrough = (FUNC6(child) != dev);
	isdefault = FUNC2(start, end);
	rle = NULL;

	/* Fetch the resource manager */
	rm = FUNC3(sc, child, type);
	if (rm == NULL) {
		/* Delegate to our parent device's bus; the requested
		 * resource type isn't handled locally. */
		return (FUNC0(FUNC6(sc->parent_dev),
		    child, type, rid,  start, end, count, flags));
	}

	/* Populate defaults */
	if (!passthrough && isdefault) {
		/* Fetch the resource list entry. */
		rle = FUNC9(FUNC1(dev, child),
		    type, *rid);
		if (rle == NULL) {
			FUNC8(dev,
			    "default resource %#x type %d for child %s "
			    "not found\n", *rid, type,
			    FUNC5(child));
			
			return (NULL);
		}
		
		if (rle->res != NULL) {
			FUNC8(dev,
			    "resource entry %#x type %d for child %s is busy\n",
			    *rid, type, FUNC5(child));
			
			return (NULL);
		}

		start = rle->start;
		end = rle->end;
		count = FUNC16(count, rle->count);
	}

	/* Validate resource addresses */
	if (start > end || count > ((end - start) + 1))
		return (NULL);

	/* Make our reservation */
	rv = FUNC14(rm, start, end, count, flags & ~RF_ACTIVE,
	    child);
	if (rv == NULL)
		return (NULL);
	
	FUNC15(rv, *rid);

	/* Activate */
	if (flags & RF_ACTIVE) {
		error = FUNC4(child, type, *rid, rv);
		if (error) {
			FUNC8(dev,
			    "failed to activate entry %#x type %d for "
				"child %s: %d\n",
			     *rid, type, FUNC5(child), error);

			FUNC13(rv);

			return (NULL);
		}
	}

	/* Update child's resource list entry */
	if (rle != NULL) {
		rle->res = rv;
		rle->start = FUNC12(rv);
		rle->end = FUNC10(rv);
		rle->count = FUNC11(rv);
	}

	return (rv);
}