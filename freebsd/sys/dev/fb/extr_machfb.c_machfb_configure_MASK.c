#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {int va_flags; } ;
struct machfb_softc {int sc_flags; int sc_node; scalar_t__ sc_chip_rev; TYPE_2__ sc_va; int /*<<< orphan*/  sc_regh; int /*<<< orphan*/  sc_memh; int /*<<< orphan*/ * sc_regt; int /*<<< orphan*/ * sc_memt; scalar_t__ sc_chip_id; } ;
typedef  int /*<<< orphan*/  stdout ;
typedef  int phandle_t ;
typedef  scalar_t__ ihandle_t ;
typedef  int /*<<< orphan*/  id ;
typedef  int /*<<< orphan*/  bus_addr_t ;
struct TYPE_4__ {scalar_t__ chip_id; } ;

/* Variables and functions */
 scalar_t__ ATI_VENDOR ; 
 int /*<<< orphan*/  MACH64_REG_OFF ; 
 int /*<<< orphan*/  MACH64_REG_SIZE ; 
 int MACHFB_CONSOLE ; 
 int /*<<< orphan*/  MACHFB_DRIVER_NAME ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int,char*,scalar_t__*,int) ; 
 int FUNC3 (scalar_t__) ; 
 int VIO_PROBE_ONLY ; 
 int V_ADP_REGISTERED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * machfb_bst_store ; 
 TYPE_1__* machfb_info ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct machfb_softc machfb_softc ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(int flags)
{
	struct machfb_softc *sc;
	phandle_t chosen, output;
	ihandle_t stdout;
	bus_addr_t addr;
	uint32_t id;
	int i, space;

	/*
	 * For the high-level console probing return the number of
	 * registered adapters.
	 */
	if (!(flags & VIO_PROBE_ONLY)) {
		for (i = 0; FUNC8(MACHFB_DRIVER_NAME, i) >= 0; i++)
			;
		return (i);
	}

	/* Low-level console probing and initialization. */

	sc = &machfb_softc;
	if (sc->sc_va.va_flags & V_ADP_REGISTERED)
		goto found;

	if ((chosen = FUNC1("/chosen")) == -1)	/* Quis contra nos? */
		return (0);
	if (FUNC2(chosen, "stdout", &stdout, sizeof(stdout)) == -1)
		return (0);
	if ((output = FUNC3(stdout)) == -1)
		return (0);
	if ((FUNC2(output, "vendor-id", &id, sizeof(id)) == -1) ||
	    id != ATI_VENDOR)
		return (0);
	if (FUNC2(output, "device-id", &id, sizeof(id)) == -1)
		return (0);
	for (i = 0; i < FUNC6(machfb_info); i++) {
		if (id == machfb_info[i].chip_id) {
			sc->sc_flags = MACHFB_CONSOLE;
			sc->sc_node = output;
			sc->sc_chip_id = id;
			break;
		}
	}
	if (!(sc->sc_flags & MACHFB_CONSOLE))
		return (0);

	if (FUNC2(output, "revision-id", &sc->sc_chip_rev,
	    sizeof(sc->sc_chip_rev)) == -1)
		return (0);
	if (FUNC0(output, 0, &space, &addr) != 0)
		return (0);
	sc->sc_memt = &machfb_bst_store[0];
	sc->sc_memh = FUNC7(space, addr, sc->sc_memt);
	sc->sc_regt = sc->sc_memt;
	FUNC4(sc->sc_regt, sc->sc_memh, MACH64_REG_OFF,
	    MACH64_REG_SIZE, &sc->sc_regh);

	if (FUNC5(0, &sc->sc_va, 0) < 0)
		 return (0);

 found:
	/* Return number of found adapters. */
	return (1);
}