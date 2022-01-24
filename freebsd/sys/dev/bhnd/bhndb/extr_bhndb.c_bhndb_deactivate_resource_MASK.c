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
struct resource {int dummy; } ;
struct bhndb_softc {int /*<<< orphan*/  bus_res; int /*<<< orphan*/  parent_dev; } ;
struct bhndb_dw_alloc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHNDB_ADDRSPACE_BRIDGED ; 
 int /*<<< orphan*/  FUNC0 (struct bhndb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bhndb_softc*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int ENXIO ; 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 struct bhndb_dw_alloc* FUNC3 (int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct bhndb_dw_alloc*,struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct bhndb_softc*,int /*<<< orphan*/ ) ; 
 struct rman* FUNC6 (struct bhndb_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct bhndb_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC10 (struct resource*) ; 

__attribute__((used)) static int
FUNC11(device_t dev, device_t child, int type,
    int rid, struct resource *r)
{
	struct bhndb_dw_alloc	*dwa;
	struct bhndb_softc	*sc;
	struct rman		*rm;
	int			 error;

	sc = FUNC8(dev);

	/* Delegate directly to our parent device's bus if the requested
	 * resource type isn't handled locally. */
	rm = FUNC6(sc, child, type);
	if (rm == NULL) {
		return (FUNC2(
		    FUNC7(sc->parent_dev), child, type, rid, r));
	}

	/* Mark inactive */
	if ((error = FUNC10(r)))
		return (error);

	switch (type) {
	case SYS_RES_IRQ:
		/* No bridge-level state to be freed */
		return (0);

	case SYS_RES_MEMORY:
		/* Free any dynamic window allocation. */
		if (FUNC5(sc, child) == BHNDB_ADDRSPACE_BRIDGED) {
			FUNC0(sc);
			dwa = FUNC3(sc->bus_res, r);
			if (dwa != NULL)
				FUNC4(sc->bus_res, dwa, r);
			FUNC1(sc);
		}

		return (0);

	default:
		FUNC9(dev, "unsupported resource type %d\n", type);
		return (ENXIO);
	}
}