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
struct bhndb_softc {int /*<<< orphan*/  bus_res; int /*<<< orphan*/  dev; } ;
struct bhndb_dw_alloc {TYPE_1__* win; } ;
typedef  scalar_t__ rman_res_t ;
struct TYPE_2__ {scalar_t__ win_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhndb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 struct bhndb_dw_alloc* FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct bhndb_dw_alloc* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct bhndb_dw_alloc*,struct resource*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bhndb_dw_alloc*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned long long,scalar_t__,int) ; 
 scalar_t__ FUNC6 (struct resource*) ; 
 scalar_t__ FUNC7 (struct resource*) ; 

__attribute__((used)) static struct bhndb_dw_alloc *
FUNC8(struct bhndb_softc *sc, struct resource *r)
{
	struct bhndb_dw_alloc	*dwa;
	rman_res_t		 r_start, r_size;
	int			 error;

	FUNC0(sc, MA_OWNED);

	r_start = FUNC7(r);
	r_size = FUNC6(r);

	/* Look for an existing dynamic window we can reference */
	dwa = FUNC1(sc->bus_res, r_start, r_size);
	if (dwa != NULL) {
		if (FUNC3(sc->bus_res, dwa, r) == 0)
			return (dwa);

		return (NULL);
	}

	/* Otherwise, try to reserve a free window */
	dwa = FUNC2(sc->bus_res);
	if (dwa == NULL) {
		/* No free windows */
		return (NULL);
	}

	/* Window must be large enough to map the entire resource */
	if (dwa->win->win_size < FUNC6(r))
		return (NULL);

	/* Set the window target */
	error = FUNC4(sc->dev, sc->bus_res, dwa, FUNC7(r),
	    FUNC6(r));
	if (error) {
		FUNC5(sc->dev, "dynamic window initialization "
			"for 0x%llx-0x%llx failed: %d\n",
			(unsigned long long) r_start,
			(unsigned long long) r_start + r_size - 1,
			error);
		return (NULL);
	}

	/* Add our reservation */
	if (FUNC3(sc->bus_res, dwa, r))
		return (NULL);

	return (dwa);
}