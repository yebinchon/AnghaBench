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
struct bhndb_dw_alloc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bhndb_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bhndb_softc*) ; 
 int /*<<< orphan*/  PRIO ; 
 int SYS_RES_MEMORY ; 
 struct bhndb_dw_alloc* FUNC3 (int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct bhndb_dw_alloc*,struct resource*) ; 
 struct bhndb_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 

__attribute__((used)) static void
FUNC9(device_t dev, device_t child, int type,
    struct resource *r)
{
	struct bhndb_softc	*sc;
	struct bhndb_dw_alloc	*dwa;

	sc = FUNC5(dev);

	/* Non-MMIO resources (e.g. IRQs) are handled solely by our parent */
	if (type != SYS_RES_MEMORY)
		return;

	FUNC1(sc);
	dwa = FUNC3(sc->bus_res, r);
	if (dwa == NULL) {
		FUNC2(sc);
		return;
	}

	if (FUNC0(PRIO))
		FUNC6(child, "suspend resource type=%d 0x%jx+0x%jx\n",
		    type, FUNC8(r), FUNC7(r));

	/* Release the resource's window reference */
	FUNC4(sc->bus_res, dwa, r);
	FUNC2(sc);
}