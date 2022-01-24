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
struct resource_list_entry {int /*<<< orphan*/ * res; } ;
struct resource {int dummy; } ;
struct bhndb_softc {int /*<<< orphan*/  parent_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int RF_ACTIVE ; 
 int /*<<< orphan*/ * FUNC3 (struct bhndb_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct bhndb_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 struct resource_list_entry* FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (struct resource*) ; 
 int FUNC8 (struct resource*) ; 

__attribute__((used)) static int
FUNC9(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{
	struct bhndb_softc		*sc;
	struct resource_list_entry	*rle;
	bool				 passthrough;
	int				 error;

	sc = FUNC5(dev);
	passthrough = (FUNC4(child) != dev);

	/* Delegate to our parent device's bus if the requested resource type
	 * isn't handled locally. */
	if (FUNC3(sc, child, type) == NULL) {
		return (FUNC2(FUNC4(sc->parent_dev),
		    child, type, rid, r));
	}

	/* Deactivate resources */
	if (FUNC7(r) & RF_ACTIVE) {
		error = FUNC0(dev, child, type, rid, r);
		if (error)
			return (error);
	}

	if ((error = FUNC8(r)))
		return (error);

	if (!passthrough) {
		/* Clean resource list entry */
		rle = FUNC6(FUNC1(dev, child),
		    type, rid);
		if (rle != NULL)
			rle->res = NULL;
	}

	return (0);
}