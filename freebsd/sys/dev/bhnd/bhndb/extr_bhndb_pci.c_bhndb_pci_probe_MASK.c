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
struct bhndb_pci_probe {int /*<<< orphan*/  hostb_core; } ;
struct bhndb_pci_core {int dummy; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/ * devclass_t ;
typedef  int /*<<< orphan*/  bhnd_devclass_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct bhndb_pci_core* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct bhndb_pci_probe**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bhndb_pci_probe*) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct bhndb_pci_probe	*probe;
	struct bhndb_pci_core	*entry;
	bhnd_devclass_t		 hostb_devclass;
	device_t		 parent, parent_bus;
	devclass_t		 pci, bus_devclass;
	int			 error;

	probe = NULL;

	/* Our parent must be a PCI/PCIe device. */
	pci = FUNC6("pci");
	parent = FUNC9(dev);
	parent_bus = FUNC9(parent);
	if (parent_bus == NULL)
		return (ENXIO);

	/* The bus device class may inherit from 'pci' */
	for (bus_devclass = FUNC8(parent_bus);
	    bus_devclass != NULL;
	    bus_devclass = FUNC7(bus_devclass))
	{
		if (bus_devclass == pci)
			break;
	}

	if (bus_devclass != pci)
		return (ENXIO);

	/* Enable clocks */
	if ((error = FUNC1(dev)))
		return (error);

	/* Identify the chip and enumerate the bridged cores */
	hostb_devclass = FUNC2(dev);
	if ((error = FUNC4(&probe, dev, hostb_devclass)))
		goto cleanup;

	/* Look for a matching core table entry */
	if ((entry = FUNC3(&probe->hostb_core)) == NULL) {
		error = ENXIO;
		goto cleanup;
	}

	FUNC10(dev, "PCI-BHND bridge");

	/* fall-through */
	error = BUS_PROBE_DEFAULT;

cleanup:
	if (probe != NULL)
		FUNC5(probe);

	FUNC0(dev);

	return (error);
}