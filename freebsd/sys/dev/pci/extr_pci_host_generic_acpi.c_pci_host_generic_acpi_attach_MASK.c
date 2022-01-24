#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {int /*<<< orphan*/  mem_rman; int /*<<< orphan*/  io_rman; TYPE_1__* ranges; scalar_t__ coherent; scalar_t__ ecam; scalar_t__ bus_start; } ;
struct generic_pcie_acpi_softc {TYPE_2__ base; int /*<<< orphan*/  ap_prt; } ;
typedef  scalar_t__ device_t ;
struct TYPE_3__ {scalar_t__ phys_base; scalar_t__ pci_base; scalar_t__ size; int flags; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*) ; 
 int ENXIO ; 
 int FLAG_IO ; 
 int FLAG_MEM ; 
 int MAX_RANGES_TUPLES ; 
 scalar_t__ PCI_IO_WINDOW_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ bootverbose ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,int) ; 
 struct generic_pcie_acpi_softc* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  pci_host_generic_acpi_parse_resource ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct generic_pcie_acpi_softc *sc;
	ACPI_HANDLE handle;
	uint64_t phys_base;
	uint64_t pci_base;
	uint64_t size;
	ACPI_STATUS status;
	int error;
	int tuple;

	sc = FUNC7(dev);
	handle = FUNC3(dev);

	/* Get Start bus number for the PCI host bus is from _BBN method */
	status = FUNC2(handle, "_BBN", &sc->base.bus_start);
	if (FUNC0(status)) {
		FUNC8(dev, "No _BBN, using start bus 0\n");
		sc->base.bus_start = 0;
	}

	/* Get PCI Segment (domain) needed for MCFG lookup */
	status = FUNC2(handle, "_SEG", &sc->base.ecam);
	if (FUNC0(status)) {
		FUNC8(dev, "No _SEG for PCI Bus, using segment 0\n");
		sc->base.ecam = 0;
	}

	/* Bus decode ranges */
	status = FUNC1(handle, "_CRS",
	    pci_host_generic_acpi_parse_resource, (void *)dev);
	if (FUNC0(status))
		return (ENXIO);

	/* Coherency attribute */
	if (FUNC0(FUNC2(handle, "_CCA", &sc->base.coherent)))
		sc->base.coherent = 0;
	if (bootverbose)
		FUNC8(dev, "Bus is%s cache-coherent\n",
		    sc->base.coherent ? "" : " not");

	/* add config space resource */
	FUNC9(dev);
	FUNC4(dev, &sc->ap_prt);

	error = FUNC10(dev);
	if (error != 0)
		return (error);

	for (tuple = 0; tuple < MAX_RANGES_TUPLES; tuple++) {
		phys_base = sc->base.ranges[tuple].phys_base;
		pci_base = sc->base.ranges[tuple].pci_base;
		size = sc->base.ranges[tuple].size;
		if (phys_base == 0 || size == 0)
			continue; /* empty range element */
		if (sc->base.ranges[tuple].flags & FLAG_MEM) {
			error = FUNC12(&sc->base.mem_rman,
			   pci_base, pci_base + size - 1);
		} else if (sc->base.ranges[tuple].flags & FLAG_IO) {
			error = FUNC12(&sc->base.io_rman,
			   pci_base + PCI_IO_WINDOW_OFFSET,
			   pci_base + PCI_IO_WINDOW_OFFSET + size - 1);
		} else
			continue;
		if (error) {
			FUNC8(dev, "rman_manage_region() failed."
						"error = %d\n", error);
			FUNC11(&sc->base.mem_rman);
			return (error);
		}
	}

	FUNC6(dev, "pci", -1);
	return (FUNC5(dev));
}