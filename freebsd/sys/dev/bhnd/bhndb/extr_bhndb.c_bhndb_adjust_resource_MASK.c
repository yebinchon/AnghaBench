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
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhndb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bhndb_softc*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*,scalar_t__,scalar_t__) ; 
 int EINVAL ; 
 int ENXIO ; 
 int RF_ACTIVE ; 
 int FUNC3 (int /*<<< orphan*/ ,int,struct resource*,scalar_t__*,scalar_t__*) ; 
 struct rman* FUNC4 (struct bhndb_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct bhndb_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct resource*,scalar_t__,scalar_t__) ; 
 int FUNC8 (struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*,struct rman*) ; 

__attribute__((used)) static int
FUNC10(device_t dev, device_t child, int type,
    struct resource *r, rman_res_t start, rman_res_t end)
{
	struct bhndb_softc		*sc;
	struct rman			*rm;
	rman_res_t			 mstart, mend;
	int				 error;
	
	sc = FUNC6(dev);
	error = 0;

	/* Delegate to our parent device's bus if the requested resource type
	 * isn't handled locally. */
	rm = FUNC4(sc, child, type);
	if (rm == NULL) {
		return (FUNC2(FUNC5(sc->parent_dev),
		    child, type, r, start, end));
	}

	/* Verify basic constraints */
	if (end <= start)
		return (EINVAL);

	if (!FUNC9(r, rm))
		return (ENXIO);

	FUNC0(sc);

	/* If not active, allow any range permitted by the resource manager */
	if (!(FUNC8(r) & RF_ACTIVE))
		goto done;

	/* Otherwise, the range is limited by the bridged resource mapping */
	error = FUNC3(sc->bus_res, type, r, &mstart,
	    &mend);
	if (error)
		goto done;

	if (start < mstart || end > mend) {
		error = EINVAL;
		goto done;
	}

	/* Fall through */
done:
	if (!error)
		error = FUNC7(r, start, end);

	FUNC1(sc);
	return (error);
}