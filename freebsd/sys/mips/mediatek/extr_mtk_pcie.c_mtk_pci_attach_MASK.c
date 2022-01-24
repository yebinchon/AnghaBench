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
struct TYPE_4__ {char* rm_descr; void* rm_type; } ;
struct mtk_pci_softc {int addr_mask; scalar_t__ socid; int sc_num_irq; int /*<<< orphan*/ ** pci_res; TYPE_1__ sc_mem_rman; TYPE_1__ sc_io_rman; TYPE_1__ sc_irq_rman; int /*<<< orphan*/ ** pci_intrhand; scalar_t__ sc_irq_end; scalar_t__ sc_irq_start; scalar_t__ sc_io_size; scalar_t__ sc_io_base; scalar_t__ sc_mem_size; scalar_t__ sc_mem_base; int /*<<< orphan*/  sc_dev; } ;
struct mtk_pci_range {scalar_t__ len; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_MISC ; 
 scalar_t__ MTK_PCIE0_IRQ ; 
 scalar_t__ MTK_PCIE2_IRQ ; 
 scalar_t__ MTK_SOC_MT7621 ; 
 intptr_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 void* RMAN_ARRAY ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mtk_pci_softc*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 struct mtk_pci_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,intptr_t) ; 
 struct mtk_pci_softc* mt_sc ; 
 int /*<<< orphan*/  mtk_pci_intr ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct mtk_pci_range*,struct mtk_pci_range*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 scalar_t__ FUNC17 (TYPE_1__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct mtk_pci_softc *sc = FUNC7(dev);
	struct mtk_pci_range io_space, mem_space;
	phandle_t node;
	intptr_t xref;
	int i, rid;

	sc->sc_dev = dev;
	mt_sc = sc;
	sc->addr_mask = 0xffffffff;

	/* Request our memory */
	rid = 0;
	sc->pci_res[0] = FUNC1(dev, SYS_RES_MEMORY, &rid,
			    RF_ACTIVE);
	if (sc->pci_res[0] == NULL) {
		FUNC8(dev, "could not allocate memory resource\n");
		return (ENXIO);
	}

	/* See how many interrupts we need */
	if (sc->socid == MTK_SOC_MT7621)
		sc->sc_num_irq = 3;
	else {
		sc->sc_num_irq = 1;
		sc->pci_res[2] = sc->pci_res[3] = NULL;
		sc->pci_intrhand[1] = sc->pci_intrhand[2] = NULL;
	}

	/* Request our interrupts */	
	for (i = 1; i <= sc->sc_num_irq ; i++) {
		rid = i - 1;
		sc->pci_res[i] = FUNC1(dev, SYS_RES_IRQ, &rid,
				     RF_ACTIVE);
		if (sc->pci_res[i] == NULL) {
			FUNC8(dev, "could not allocate interrupt "
			    "resource %d\n", rid);
			goto cleanup_res;
		}
	}

	/* Parse our PCI 'ranges' property */
	node = FUNC14(dev);
	xref = FUNC0(node);
	if (FUNC11(node, &io_space, &mem_space)) {
		FUNC8(dev, "could not retrieve 'ranges' data\n");
		goto cleanup_res;
	}

	/* Memory, I/O and IRQ resource limits */
	sc->sc_io_base = io_space.base;
	sc->sc_io_size = io_space.len;
	sc->sc_mem_base = mem_space.base;
	sc->sc_mem_size = mem_space.len;
	sc->sc_irq_start = MTK_PCIE0_IRQ;
	sc->sc_irq_end = MTK_PCIE2_IRQ;

	/* Init resource managers for memory, I/O and IRQ */
	sc->sc_mem_rman.rm_type = RMAN_ARRAY;
	sc->sc_mem_rman.rm_descr = "mtk pcie memory window";
	if (FUNC16(&sc->sc_mem_rman) != 0 ||
	    FUNC17(&sc->sc_mem_rman, sc->sc_mem_base,
	    sc->sc_mem_base + sc->sc_mem_size - 1) != 0) {
		FUNC8(dev, "failed to setup memory rman\n");
		goto cleanup_res;
	}

	sc->sc_io_rman.rm_type = RMAN_ARRAY;
	sc->sc_io_rman.rm_descr = "mtk pcie io window";
	if (FUNC16(&sc->sc_io_rman) != 0 ||
	    FUNC17(&sc->sc_io_rman, sc->sc_io_base,
	    sc->sc_io_base + sc->sc_io_size - 1) != 0) {
		FUNC8(dev, "failed to setup io rman\n");
		goto cleanup_res;
	}

	sc->sc_irq_rman.rm_type = RMAN_ARRAY;
	sc->sc_irq_rman.rm_descr = "mtk pcie irqs";
	if (FUNC16(&sc->sc_irq_rman) != 0 ||
	    FUNC17(&sc->sc_irq_rman, sc->sc_irq_start,
	    sc->sc_irq_end) != 0) {
		FUNC8(dev, "failed to setup irq rman\n");
		goto cleanup_res;
	}

	/* Do SoC-specific PCIe initialization */
	if (FUNC12(dev)) {
		FUNC8(dev, "pcie phy init failed\n");
		goto cleanup_rman;
	}

	/* Register ourselves as an interrupt controller */
	if (FUNC9(dev, xref) == NULL) {
		FUNC8(dev, "could not register PIC\n");
		goto cleanup_rman;
	}

	/* Set up our interrupt handler */
	for (i = 1; i <= sc->sc_num_irq; i++) {
		sc->pci_intrhand[i - 1] = NULL;
		if (FUNC4(dev, sc->pci_res[i], INTR_TYPE_MISC,
		    mtk_pci_intr, NULL, sc, &sc->pci_intrhand[i - 1])) {
			FUNC8(dev, "could not setup intr handler %d\n",
			    i);
			goto cleanup;
		}
	}

	/* Attach our PCI child so bus enumeration can start */
	if (FUNC6(dev, "pci", -1) == NULL) {
		FUNC8(dev, "could not attach pci bus\n");
		goto cleanup;
	}

	/* And finally, attach ourselves to the bus */
	if (FUNC2(dev)) {
		FUNC8(dev, "could not attach to bus\n");
		goto cleanup;
	}

	return (0);

cleanup:
#ifdef notyet
	intr_pic_unregister(dev, xref);
#endif
	for (i = 1; i <= sc->sc_num_irq; i++) {
		if (sc->pci_intrhand[i - 1] != NULL)
			FUNC5(dev, sc->pci_res[i],
			    sc->pci_intrhand[i - 1]);
	}
cleanup_rman:
	FUNC13(dev);
	FUNC15(&sc->sc_irq_rman);
	FUNC15(&sc->sc_io_rman);
	FUNC15(&sc->sc_mem_rman);
cleanup_res:
	mt_sc = NULL;
	if (sc->pci_res[0] != NULL)
		FUNC3(dev, SYS_RES_MEMORY, 0, sc->pci_res[0]);
	if (sc->pci_res[1] != NULL)
		FUNC3(dev, SYS_RES_IRQ, 0, sc->pci_res[1]);
	if (sc->pci_res[2] != NULL)
		FUNC3(dev, SYS_RES_IRQ, 1, sc->pci_res[2]);
	if (sc->pci_res[3] != NULL)
		FUNC3(dev, SYS_RES_IRQ, 2, sc->pci_res[3]);
	return (ENXIO);
}