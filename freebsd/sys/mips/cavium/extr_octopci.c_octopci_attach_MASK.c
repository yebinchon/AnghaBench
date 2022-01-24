#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* rm_descr; void* rm_type; } ;
struct octopci_softc {int sc_bus; scalar_t__ sc_mem1_next; scalar_t__ sc_io_next; TYPE_1__ sc_mem1; TYPE_1__ sc_io; void* sc_mem1_base; void* sc_io_base; scalar_t__ sc_domain; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CVMX_OCT_DID_PCI ; 
 scalar_t__ CVMX_OCT_PCI_IO_BASE ; 
 scalar_t__ CVMX_OCT_PCI_IO_SIZE ; 
 scalar_t__ CVMX_OCT_PCI_MEM1_BASE ; 
 scalar_t__ CVMX_OCT_PCI_MEM1_SIZE ; 
 int /*<<< orphan*/  CVMX_OCT_SUBDID_PCI_IO ; 
 int /*<<< orphan*/  CVMX_OCT_SUBDID_PCI_MEM1 ; 
 int ENXIO ; 
 int /*<<< orphan*/  OCTEON_FEATURE_PCIE ; 
 int /*<<< orphan*/  PCIR_SUBBUS_1 ; 
 void* RMAN_ARRAY ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 struct octopci_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int FUNC15 (TYPE_1__*) ; 
 int FUNC16 (TYPE_1__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct octopci_softc *sc;
	unsigned subbus;
	int error;

	sc = FUNC8(dev);
	sc->sc_dev = dev;

	if (FUNC11(OCTEON_FEATURE_PCIE)) {
		sc->sc_domain = FUNC9(dev);

		error = FUNC6(sc->sc_domain);
		if (error != 0) {
			FUNC10(dev, "Failed to put PCIe bus in host mode.\n");
			return (ENXIO);
		}

		/*
		 * In RC mode, the Simple Executive programs the first bus to
		 * be numbered as bus 1, because some IDT bridges used in
		 * Octeon systems object to being attached to bus 0.
		 */
		sc->sc_bus = 1;

		sc->sc_io_base = FUNC1(FUNC4(sc->sc_domain));
		sc->sc_io.rm_descr = "Cavium Octeon PCIe I/O Ports";

		sc->sc_mem1_base = FUNC1(FUNC5(sc->sc_domain));
		sc->sc_mem1.rm_descr = "Cavium Octeon PCIe Memory";
	} else {
		FUNC13(dev);

		sc->sc_domain = 0;
		sc->sc_bus = 0;

		sc->sc_io_base = FUNC0(FUNC2(CVMX_OCT_DID_PCI, CVMX_OCT_SUBDID_PCI_IO));
		sc->sc_io.rm_descr = "Cavium Octeon PCI I/O Ports";

		sc->sc_mem1_base = FUNC0(FUNC2(CVMX_OCT_DID_PCI, CVMX_OCT_SUBDID_PCI_MEM1));
		sc->sc_mem1.rm_descr = "Cavium Octeon PCI Memory";
	}

	sc->sc_io.rm_type = RMAN_ARRAY;
	error = FUNC15(&sc->sc_io);
	if (error != 0)
		return (error);

	error = FUNC16(&sc->sc_io, CVMX_OCT_PCI_IO_BASE,
	    CVMX_OCT_PCI_IO_BASE + CVMX_OCT_PCI_IO_SIZE);
	if (error != 0)
		return (error);

	sc->sc_mem1.rm_type = RMAN_ARRAY;
	error = FUNC15(&sc->sc_mem1);
	if (error != 0)
		return (error);

	error = FUNC16(&sc->sc_mem1, CVMX_OCT_PCI_MEM1_BASE,
	    CVMX_OCT_PCI_MEM1_BASE + CVMX_OCT_PCI_MEM1_SIZE);
	if (error != 0)
		return (error);

	/*
	 * Next offsets for resource allocation in octopci_init_bar.
	 */
	sc->sc_io_next = 0;
	sc->sc_mem1_next = 0;

	/*
	 * Configure devices.
	 */
	FUNC14(dev, sc->sc_bus, 0, 0, PCIR_SUBBUS_1, 0xff, 1);
	subbus = FUNC12(dev, sc->sc_bus);
	FUNC14(dev, sc->sc_bus, 0, 0, PCIR_SUBBUS_1, subbus, 1);

	FUNC7(dev, "pci", -1);

	return (FUNC3(dev));
}