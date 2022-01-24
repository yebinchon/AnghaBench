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
struct pci_softc {int /*<<< orphan*/  sc_dma_tag; int /*<<< orphan*/ * sc_bus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  PCI_RES_BUS ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct pci_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(device_t dev)
{
	struct pci_softc *sc;
	int busno, domain;
#ifdef PCI_RES_BUS
	int rid;
#endif

	sc = FUNC2(dev);
	domain = FUNC5(dev);
	busno = FUNC4(dev);
#ifdef PCI_RES_BUS
	rid = 0;
	sc->sc_bus = bus_alloc_resource(dev, PCI_RES_BUS, &rid, busno, busno,
	    1, 0);
	if (sc->sc_bus == NULL) {
		device_printf(dev, "failed to allocate bus number\n");
		return (ENXIO);
	}
#endif
	if (bootverbose)
		FUNC3(dev, "domain=%d, physical bus=%d\n",
		    domain, busno);
	sc->sc_dma_tag = FUNC1(dev);
	return (0);
}