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
struct cardbus_softc {int /*<<< orphan*/ * sc_bus; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  PCI_RES_BUS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct cardbus_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t cbdev)
{
	struct cardbus_softc *sc;
#ifdef PCI_RES_BUS
	int rid;
#endif

	sc = FUNC1(cbdev);
	sc->sc_dev = cbdev;
#ifdef PCI_RES_BUS
	rid = 0;
	sc->sc_bus = bus_alloc_resource(cbdev, PCI_RES_BUS, &rid,
	    pcib_get_bus(cbdev), pcib_get_bus(cbdev), 1, 0);
	if (sc->sc_bus == NULL) {
		device_printf(cbdev, "failed to allocate bus number\n");
		return (ENXIO);
	}
#else
	FUNC2(cbdev, "Your bus numbers may be AFU\n");
#endif
	return (0);
}