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
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 struct bhndb_intr_handler* FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct bhndb_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int
FUNC8(device_t dev, device_t child, struct resource *irq,
    void *cookie, const char *descr)
{
	struct bhndb_softc		*sc;
	struct bhndb_intr_handler	*ih;
	struct bhndb_intr_isrc		*isrc;

	sc = FUNC6(dev);

	/* Locate the interrupt handler entry; the caller owns the handler
	 * reference, and thus our entry is guaranteed to remain valid after
	 * we drop out lock below. */
	FUNC0(sc);

	ih = FUNC3(sc->bus_res, cookie);
	if (ih == NULL) {
		FUNC7("%s requested invalid cookiep %p",
		    FUNC4(child), cookie);
	}

	isrc = ih->ih_isrc;

	FUNC1(sc);

	/* Perform the actual request via the host isrc */
	return (FUNC2(FUNC5(isrc->is_owner),
	    isrc->is_owner, isrc->is_res, ih->ih_cookiep, descr));
}