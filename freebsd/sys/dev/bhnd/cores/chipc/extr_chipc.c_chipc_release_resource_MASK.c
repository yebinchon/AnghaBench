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
struct rman {int dummy; } ;
struct resource_list_entry {int /*<<< orphan*/ * res; } ;
struct resource {int dummy; } ;
struct chipc_softc {int dummy; } ;
struct chipc_region {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int RF_ACTIVE ; 
 int /*<<< orphan*/  RF_ALLOCATED ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct chipc_region* FUNC3 (struct chipc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rman* FUNC4 (struct chipc_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct chipc_softc*,struct chipc_region*,int /*<<< orphan*/ ) ; 
 struct chipc_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 struct resource_list_entry* FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 
 int FUNC9 (struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*,struct rman*) ; 
 int FUNC12 (struct resource*) ; 

__attribute__((used)) static int
FUNC13(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{
	struct chipc_softc		*sc;
	struct chipc_region		*cr;
	struct rman			*rm;
	struct resource_list_entry	*rle;
	int			 	 error;

	sc = FUNC6(dev);

	/* Handled by parent bus? */
	rm = FUNC4(sc, type);
	if (rm == NULL || !FUNC11(r, rm)) {
		return (FUNC2(dev, child, type, rid,
		    r));
	}

	/* Locate the mapping region */
	cr = FUNC3(sc, FUNC10(r), FUNC8(r));
	if (cr == NULL)
		return (EINVAL);

	/* Deactivate resources */
	if (FUNC9(r) & RF_ACTIVE) {
		error = FUNC0(dev, child, type, rid, r);
		if (error)
			return (error);
	}

	if ((error = FUNC12(r)))
		return (error);

	/* Drop allocation reference */
	FUNC5(sc, cr, RF_ALLOCATED);

	/* Clear reference from the resource list entry if exists */
	rle = FUNC7(FUNC1(dev, child), type, rid);
	if (rle != NULL)
		rle->res = NULL;

	return (0);
}