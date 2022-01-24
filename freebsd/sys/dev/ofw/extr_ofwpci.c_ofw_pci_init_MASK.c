#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  scalar_t__ u_int32_t ;
struct TYPE_4__ {char* rm_descr; void* rm_type; } ;
struct ofw_pci_softc {int sc_initialized; int sc_quirks; int sc_nrange; int sc_range_mask; int sc_have_pmem; TYPE_1__ sc_pmem_rman; TYPE_1__ sc_mem_rman; TYPE_1__ sc_io_rman; struct ofw_pci_range* sc_range; int /*<<< orphan*/  sc_pci_iinfo; scalar_t__ sc_bus; scalar_t__ sc_node; int /*<<< orphan*/  sc_dev; struct ofw_pci_range* sc_cell_info; int /*<<< orphan*/  sc_pci_domain; } ;
struct ofw_pci_range {int pci_hi; scalar_t__ size; scalar_t__ pci; } ;
struct ofw_pci_cell_info {int pci_hi; scalar_t__ size; scalar_t__ pci; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cell_t ;
typedef  int /*<<< orphan*/  busrange ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int OFW_PCI_PHYS_HI_PREFETCHABLE ; 
 int OFW_PCI_PHYS_HI_SPACEMASK ; 
#define  OFW_PCI_PHYS_HI_SPACE_CONFIG 131 
#define  OFW_PCI_PHYS_HI_SPACE_IO 130 
#define  OFW_PCI_PHYS_HI_SPACE_MEM32 129 
#define  OFW_PCI_PHYS_HI_SPACE_MEM64 128 
 int OFW_PCI_QUIRK_RANGES_ON_CHILDREN ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,char*,scalar_t__*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 void* RMAN_ARRAY ; 
 struct ofw_pci_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct ofw_pci_range*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (scalar_t__,struct ofw_pci_range*) ; 
 void* FUNC12 (scalar_t__,struct ofw_pci_range*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int FUNC14 (TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*,scalar_t__,scalar_t__) ; 

int
FUNC16(device_t dev)
{
	struct ofw_pci_softc *sc;
	phandle_t node;
	u_int32_t busrange[2];
	struct ofw_pci_range *rp;
	int i, error;
	struct ofw_pci_cell_info *cell_info;

	node = FUNC9(dev);
	sc = FUNC4(dev);
	sc->sc_initialized = 1;
	sc->sc_range = NULL;
	sc->sc_pci_domain = FUNC5(dev);

	cell_info = (struct ofw_pci_cell_info *)FUNC8(sizeof(*cell_info),
	    M_DEVBUF, M_WAITOK | M_ZERO);

	sc->sc_cell_info = cell_info;

	if (FUNC2(node, "bus-range", busrange, sizeof(busrange)) != 8)
		busrange[0] = 0;

	sc->sc_dev = dev;
	sc->sc_node = node;
	sc->sc_bus = busrange[0];

	if (sc->sc_quirks & OFW_PCI_QUIRK_RANGES_ON_CHILDREN) {
		phandle_t c;
		int n, i;

		sc->sc_nrange = 0;
		for (c = FUNC1(node); c != 0; c = FUNC3(c)) {
			n = FUNC12(c, cell_info);
			if (n > 0)
				sc->sc_nrange += n;
		}
		if (sc->sc_nrange == 0) {
			error = ENXIO;
			goto out;
		}
		sc->sc_range = FUNC8(sc->sc_nrange * sizeof(sc->sc_range[0]),
		    M_DEVBUF, M_WAITOK);
		i = 0;
		for (c = FUNC1(node); c != 0; c = FUNC3(c)) {
			n = FUNC11(c, &sc->sc_range[i]);
			if (n > 0)
				i += n;
		}
		FUNC0(i == sc->sc_nrange, ("range count mismatch"));
	} else {
		sc->sc_nrange = FUNC12(node, cell_info);
		if (sc->sc_nrange <= 0) {
			FUNC6(dev, "could not getranges\n");
			error = ENXIO;
			goto out;
		}
		sc->sc_range = FUNC8(sc->sc_nrange * sizeof(sc->sc_range[0]),
		    M_DEVBUF, M_WAITOK);
		FUNC11(node, sc->sc_range);
	}

	sc->sc_io_rman.rm_type = RMAN_ARRAY;
	sc->sc_io_rman.rm_descr = "PCI I/O Ports";
	error = FUNC14(&sc->sc_io_rman);
	if (error != 0) {
		FUNC6(dev, "rman_init() failed. error = %d\n", error);
		goto out;
	}

	sc->sc_mem_rman.rm_type = RMAN_ARRAY;
	sc->sc_mem_rman.rm_descr = "PCI Non Prefetchable Memory";
	error = FUNC14(&sc->sc_mem_rman);
	if (error != 0) {
		FUNC6(dev, "rman_init() failed. error = %d\n", error);
		goto out;
	}

	sc->sc_pmem_rman.rm_type = RMAN_ARRAY;
	sc->sc_pmem_rman.rm_descr = "PCI Prefetchable Memory";
	error = FUNC14(&sc->sc_pmem_rman);
	if (error != 0) {
		FUNC6(dev, "rman_init() failed. error = %d\n", error);
		goto out;
	}

	for (i = 0; i < sc->sc_nrange; i++) {
		error = 0;
		rp = sc->sc_range + i;

		if (sc->sc_range_mask & ((uint64_t)1 << i))
			continue;
		switch (rp->pci_hi & OFW_PCI_PHYS_HI_SPACEMASK) {
		case OFW_PCI_PHYS_HI_SPACE_CONFIG:
			break;
		case OFW_PCI_PHYS_HI_SPACE_IO:
			error = FUNC15(&sc->sc_io_rman, rp->pci,
			    rp->pci + rp->size - 1);
			break;
		case OFW_PCI_PHYS_HI_SPACE_MEM32:
		case OFW_PCI_PHYS_HI_SPACE_MEM64:
			if (rp->pci_hi & OFW_PCI_PHYS_HI_PREFETCHABLE) {
				sc->sc_have_pmem = 1;
				error = FUNC15(&sc->sc_pmem_rman,
				    rp->pci, rp->pci + rp->size - 1);
			} else {
				error = FUNC15(&sc->sc_mem_rman,
				    rp->pci, rp->pci + rp->size - 1);
			}
			break;
		}

		if (error != 0) {
			FUNC6(dev,
			    "rman_manage_region(%x, %#jx, %#jx) failed. "
			    "error = %d\n", rp->pci_hi &
			    OFW_PCI_PHYS_HI_SPACEMASK, rp->pci,
			    rp->pci + rp->size - 1, error);
			goto out;
		}
	}

	FUNC10(node, &sc->sc_pci_iinfo, sizeof(cell_t));
	return (0);

out:
	FUNC7(cell_info, M_DEVBUF);
	FUNC7(sc->sc_range, M_DEVBUF);
	FUNC13(&sc->sc_io_rman);
	FUNC13(&sc->sc_mem_rman);
	FUNC13(&sc->sc_pmem_rman);

	return (error);
}