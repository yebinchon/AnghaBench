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
struct malo_softc {int malo_invalid; int /*<<< orphan*/  malo_dmat; void* malo_io1h; void* malo_io1t; void* malo_io0h; void* malo_io0t; int /*<<< orphan*/  malo_dev; } ;
struct malo_pci_softc {int malo_msi; int /*<<< orphan*/ * malo_res_mem; int /*<<< orphan*/  malo_mem_spec; int /*<<< orphan*/ * malo_res_irq; int /*<<< orphan*/  malo_irq_spec; int /*<<< orphan*/ * malo_intrhand; struct malo_softc malo_sc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int MALO_MSI_MESSAGES ; 
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 scalar_t__ bootverbose ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct malo_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct malo_pci_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct malo_softc*) ; 
 int /*<<< orphan*/  malo_intr ; 
 int /*<<< orphan*/  malo_res_spec_legacy ; 
 int /*<<< orphan*/  malo_res_spec_mem ; 
 int /*<<< orphan*/  malo_res_spec_msi ; 
 scalar_t__ msi_disable ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 void* FUNC16 (int /*<<< orphan*/ ) ; 
 void* FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	int error = ENXIO, i, msic, reg;
	struct malo_pci_softc *psc = FUNC7(dev);
	struct malo_softc *sc = &psc->malo_sc;

	sc->malo_dev = dev;
	
	FUNC11(dev);

	/* 
	 * Setup memory-mapping of PCI registers.
	 */
	psc->malo_mem_spec = malo_res_spec_mem;
	error = FUNC0(dev, psc->malo_mem_spec, psc->malo_res_mem);
	if (error) {
		FUNC8(dev, "couldn't allocate memory resources\n");
		return (ENXIO);
	}

	/*
	 * Arrange and allocate interrupt line.
	 */
	sc->malo_invalid = 1;

	if (FUNC12(dev, PCIY_EXPRESS, &reg) == 0) {
		msic = FUNC14(dev);
		if (bootverbose)
			FUNC8(dev, "MSI count : %d\n", msic);
	} else
		msic = 0;

	psc->malo_irq_spec = malo_res_spec_legacy;
	if (msic == MALO_MSI_MESSAGES && msi_disable == 0) {
		if (FUNC10(dev, &msic) == 0) {
			if (msic == MALO_MSI_MESSAGES) {
				FUNC8(dev, "Using %d MSI messages\n",
				    msic);
				psc->malo_irq_spec = malo_res_spec_msi;
				psc->malo_msi = 1;
			} else
				FUNC15(dev);
		}
	}

	error = FUNC0(dev, psc->malo_irq_spec, psc->malo_res_irq);
	if (error) {
		FUNC8(dev, "couldn't allocate IRQ resources\n");
		goto bad;
	}

	if (psc->malo_msi == 0)
		error = FUNC5(dev, psc->malo_res_irq[0],
		    INTR_TYPE_NET | INTR_MPSAFE, malo_intr, NULL, sc,
		    &psc->malo_intrhand[0]);
	else {
		for (i = 0; i < MALO_MSI_MESSAGES; i++) {
			error = FUNC5(dev, psc->malo_res_irq[i],
			    INTR_TYPE_NET | INTR_MPSAFE, malo_intr, NULL, sc,
			    &psc->malo_intrhand[i]);
			if (error != 0)
				break;
		}
	}

	/*
	 * Setup DMA descriptor area.
	 */
	if (FUNC1(FUNC3(dev),	/* parent */
			       1, 0,			/* alignment, bounds */
			       BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
			       BUS_SPACE_MAXADDR,	/* highaddr */
			       NULL, NULL,		/* filter, filterarg */
			       BUS_SPACE_MAXSIZE,	/* maxsize */
			       0,			/* nsegments */
			       BUS_SPACE_MAXSIZE,	/* maxsegsize */
			       0,			/* flags */
			       NULL,			/* lockfunc */
			       NULL,			/* lockarg */
			       &sc->malo_dmat)) {
		FUNC8(dev, "cannot allocate DMA tag\n");
		goto bad1;
	}

	sc->malo_io0t = FUNC17(psc->malo_res_mem[0]);
	sc->malo_io0h = FUNC16(psc->malo_res_mem[0]);
	sc->malo_io1t = FUNC17(psc->malo_res_mem[1]);
	sc->malo_io1h = FUNC16(psc->malo_res_mem[1]);

	error = FUNC9(FUNC13(dev), sc);

	if (error != 0)
		goto bad2;

	return (error);

bad2:
	FUNC2(sc->malo_dmat);
bad1:
	if (psc->malo_msi == 0)
		FUNC6(dev, psc->malo_res_irq[0],
		    psc->malo_intrhand[0]);
	else {
		for (i = 0; i < MALO_MSI_MESSAGES; i++)
			FUNC6(dev, psc->malo_res_irq[i],
			    psc->malo_intrhand[i]);
	}
	FUNC4(dev, psc->malo_irq_spec, psc->malo_res_irq);
bad:
	if (psc->malo_msi != 0)
		FUNC15(dev);
	FUNC4(dev, psc->malo_mem_spec, psc->malo_res_mem);

	return (error);
}