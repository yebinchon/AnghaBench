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
struct bhndb_intr_handler {int /*<<< orphan*/  ih_cookiep; struct bhndb_intr_isrc* ih_isrc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhndb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bhndb_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bhndb_intr_handler*) ; 
 struct bhndb_intr_handler* FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct bhndb_intr_handler*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct bhndb_intr_handler*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct bhndb_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int
FUNC10(device_t dev, device_t child, struct resource *r,
    void *cookiep)
{
	struct bhndb_softc		*sc;
	struct bhndb_intr_handler	*ih;
	struct bhndb_intr_isrc		*isrc;
	int				 error;

	sc = FUNC8(dev);

	/* Locate and claim ownership of the interrupt handler entry */
	FUNC0(sc);

	ih = FUNC3(sc->bus_res, cookiep);
	if (ih == NULL) {
		FUNC9("%s requested teardown of invalid cookiep %p",
		    FUNC7(child), cookiep);
	}

	FUNC2(sc->bus_res, ih);

	FUNC1(sc);

	/* Perform actual interrupt teardown via the host isrc */
	isrc = ih->ih_isrc;
	error = FUNC6(isrc->is_owner, isrc->is_res, ih->ih_cookiep);
	if (error) {
		/* If teardown fails, we need to reinsert the handler entry
		 * to allow later teardown */
		FUNC0(sc);
		FUNC5(sc->bus_res, ih);
		FUNC1(sc);

		return (error);
	}

	/* Free the entry */
	FUNC4(ih);
	return (0);
}