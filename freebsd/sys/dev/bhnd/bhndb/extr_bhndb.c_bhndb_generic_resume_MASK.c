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
struct bhndb_softc {struct bhndb_resources* bus_res; } ;
struct bhndb_resources {size_t dwa_count; struct bhndb_dw_alloc* dw_alloc; } ;
struct bhndb_dw_alloc {int target; int /*<<< orphan*/  win; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhndb_softc*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bhndb_softc*) ; 
 scalar_t__ FUNC3 (struct bhndb_resources*,struct bhndb_dw_alloc*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct bhndb_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC7(device_t dev)
{
	struct bhndb_softc	*sc;
	struct bhndb_resources	*bus_res;
	struct bhndb_dw_alloc	*dwa;
	int			 error;

	sc = FUNC5(dev);
	bus_res = sc->bus_res;

	/* Guarantee that all in-use dynamic register windows are mapped to
	 * their previously configured target address. */
	FUNC0(sc);
	error = 0;
	for (size_t i = 0; i < bus_res->dwa_count; i++) {
		dwa = &bus_res->dw_alloc[i];
	
		/* Skip regions that were not previously used */
		if (FUNC3(bus_res, dwa) && dwa->target == 0x0)
			continue;

		/* Otherwise, ensure the register window is correct before
		 * any children attempt MMIO */
		error = FUNC1(dev, dwa->win, dwa->target);
		if (error)
			break;
	}
	FUNC2(sc);

	/* Error restoring hardware state; children cannot be safely resumed */
	if (error) {
		FUNC6(dev, "Unable to restore hardware configuration; "
		    "cannot resume: %d\n", error);
		return (error);
	}

	return (FUNC4(dev));
}