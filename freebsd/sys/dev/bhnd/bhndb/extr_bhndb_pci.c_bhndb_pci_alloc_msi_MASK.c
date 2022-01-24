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
struct bhndb_pci_softc {int /*<<< orphan*/  parent; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BHNDB_PCI_MSI_COUNT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct bhndb_pci_softc *sc, int *msi_count)
{
	int error, count;

	/* Is MSI available? */
	if (FUNC2(sc->parent) < BHNDB_PCI_MSI_COUNT)
		return (ENXIO);

	/* Allocate expected message count */
	count = BHNDB_PCI_MSI_COUNT;
	if ((error = FUNC1(sc->parent, &count))) {
		FUNC0(sc->dev, "failed to allocate MSI interrupts: "
		    "%d\n", error);

		return (error);
	}

	if (count < BHNDB_PCI_MSI_COUNT) {
		FUNC3(sc->parent);
		return (ENXIO);
	}

	*msi_count = count;
	return (0);
}