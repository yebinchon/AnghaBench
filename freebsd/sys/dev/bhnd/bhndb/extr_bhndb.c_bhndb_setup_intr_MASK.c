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
struct resource {int dummy; } ;
struct bhndb_softc {int /*<<< orphan*/  bus_res; } ;
struct bhndb_intr_isrc {int /*<<< orphan*/  is_res; int /*<<< orphan*/  is_owner; } ;
struct bhndb_intr_handler {int /*<<< orphan*/  ih_cookiep; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhndb_softc*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct resource*,struct bhndb_intr_isrc**) ; 
 int /*<<< orphan*/  FUNC2 (struct bhndb_softc*) ; 
 int ENOMEM ; 
 struct bhndb_intr_handler* FUNC3 (int /*<<< orphan*/ ,struct resource*,struct bhndb_intr_isrc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bhndb_intr_handler*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct bhndb_intr_handler*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 struct bhndb_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev, device_t child, struct resource *r,
    int flags, driver_filter_t filter, driver_intr_t handler, void *arg,
    void **cookiep)
{
	struct bhndb_softc		*sc;
	struct bhndb_intr_isrc		*isrc;
	struct bhndb_intr_handler	*ih;
	int				 error;

	sc = FUNC7(dev);

	/* Fetch the isrc */
	if ((error = FUNC1(dev, r, &isrc))) {
		FUNC8(dev, "failed to fetch isrc: %d\n", error);
		return (error);
	}

	/* Allocate new ihandler entry  */
	ih = FUNC3(child, r, isrc);
	if (ih == NULL)
		return (ENOMEM);

	/* Perform actual interrupt setup via the host isrc */
	error = FUNC6(isrc->is_owner, isrc->is_res, flags, filter,
	    handler, arg, &ih->ih_cookiep);
	if (error) {
		FUNC4(ih);
		return (error);
	}

	/* Add to our interrupt handler list */
	FUNC0(sc);
	FUNC5(sc->bus_res, ih);
	FUNC2(sc);

	/* Provide the interrupt handler entry as our cookiep value */
	*cookiep = ih;
	return (0);
}