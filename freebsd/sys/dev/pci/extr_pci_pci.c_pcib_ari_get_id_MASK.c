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
typedef  int /*<<< orphan*/  uint8_t ;
struct pcib_softc {int flags; } ;
typedef  enum pci_id_type { ____Placeholder_pci_id_type } pci_id_type ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PCIB_ENABLE_ARI ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,uintptr_t*) ; 
 uintptr_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PCI_ID_RID ; 
 uintptr_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct pcib_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t pcib, device_t dev, enum pci_id_type type,
    uintptr_t *id)
{
	struct pcib_softc *sc;
	device_t bus_dev;
	uint8_t bus, slot, func;

	if (type != PCI_ID_RID) {
		bus_dev = FUNC3(pcib);
		return (FUNC0(FUNC3(bus_dev), dev, type, id));
	}

	sc = FUNC4(pcib);

	if (sc->flags & PCIB_ENABLE_ARI) {
		bus = FUNC5(dev);
		func = FUNC6(dev);

		*id = (FUNC1(bus, func));
	} else {
		bus = FUNC5(dev);
		slot = FUNC7(dev);
		func = FUNC6(dev);

		*id = (FUNC2(bus, slot, func));
	}

	return (0);
}