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
typedef  int uint32_t ;
struct bhndb_pci_softc {int pci_quirks; int /*<<< orphan*/  parent; } ;
struct bhnd_core_info {int core_idx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHNDB_PCI_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct bhndb_pci_softc*) ; 
 int BHNDB_PCI_QUIRK_SIBA_INTVEC ; 
 int BHNDB_PCI_SBIM_COREIDX_MAX ; 
 int BHNDB_PCI_SBIM_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct bhndb_pci_softc*) ; 
 int ENXIO ; 
 struct bhnd_core_info FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bhndb_pci_softc*,int /*<<< orphan*/ ) ; 
 struct bhndb_pci_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev, device_t child)
{
	struct bhndb_pci_softc	*sc;
	struct bhnd_core_info	 core;
	uint32_t		 core_bit;
	uint32_t		 intmask;

	sc = FUNC4(dev);

	if (sc->pci_quirks & BHNDB_PCI_QUIRK_SIBA_INTVEC)
		return (FUNC3(sc, child));

	core = FUNC2(child);
	if (core.core_idx > BHNDB_PCI_SBIM_COREIDX_MAX) {
		/* This should never be an issue in practice */
		FUNC5(dev, "cannot route interrupts to high core "
		    "index %u\n", core.core_idx);
		return (ENXIO);
	}

	FUNC0(sc);

	core_bit = (1<<core.core_idx) << BHNDB_PCI_SBIM_SHIFT;
	intmask = FUNC6(sc->parent, BHNDB_PCI_INT_MASK, 4);
	intmask |= core_bit;
	FUNC7(sc->parent, BHNDB_PCI_INT_MASK, intmask, 4);

	FUNC1(sc);

	return (0);
}