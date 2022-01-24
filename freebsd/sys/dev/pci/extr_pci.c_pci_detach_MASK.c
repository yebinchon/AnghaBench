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
struct pci_softc {int /*<<< orphan*/  sc_bus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_RES_BUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct pci_softc* FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(device_t dev)
{
#ifdef PCI_RES_BUS
	struct pci_softc *sc;
#endif
	int error;

	error = FUNC0(dev);
	if (error)
		return (error);
#ifdef PCI_RES_BUS
	sc = device_get_softc(dev);
	error = bus_release_resource(dev, PCI_RES_BUS, 0, sc->sc_bus);
	if (error)
		return (error);
#endif
	return (FUNC2(dev));
}