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
typedef  int /*<<< orphan*/  uintmax_t ;
struct bhndb_pci_softc {int /*<<< orphan*/  dev; } ;
struct bhndb_devinfo {int /*<<< orphan*/  addrspace; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  scalar_t__ bus_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHNDB_ADDRSPACE_NATIVE ; 
 scalar_t__ BHND_PROBE_ORDER_EARLY ; 
 scalar_t__ BHND_PROBE_ROOT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,scalar_t__,char*,int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (struct bhndb_pci_softc*) ; 
 scalar_t__ FUNC2 (struct bhndb_pci_softc*) ; 
 scalar_t__ bootverbose ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct bhndb_devinfo* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC6(struct bhndb_pci_softc *sc)
{
	bus_size_t		 nv_sz;
	int			 error;

	/**
	 * If SPROM is mapped directly into BAR0, add child NVRAM
	 * device.
	 */
	nv_sz = FUNC2(sc);
	if (nv_sz > 0) {
		struct bhndb_devinfo	*dinfo;
		device_t		 child;

		if (bootverbose) {
			FUNC5(sc->dev, "found SPROM (%ju bytes)\n",
			    (uintmax_t)nv_sz);
		}

		/* Add sprom device, ordered early enough to be available
		 * before the bridged bhnd(4) bus is attached. */
		child = FUNC0(sc->dev,
		    BHND_PROBE_ROOT + BHND_PROBE_ORDER_EARLY, "bhnd_nvram", -1);
		if (child == NULL) {
			FUNC5(sc->dev, "failed to add sprom device\n");
			return (ENXIO);
		}

		/* Initialize device address space and resource covering the
		 * BAR0 SPROM shadow. */
		dinfo = FUNC4(child);
		dinfo->addrspace = BHNDB_ADDRSPACE_NATIVE;

		error = FUNC3(child, SYS_RES_MEMORY, 0,
		    FUNC1(sc), nv_sz);
		if (error) {
			FUNC5(sc->dev,
			    "failed to register sprom resources\n");
			return (error);
		}
	}

	return (0);
}