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
struct sc_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  dmat; int /*<<< orphan*/  ih; void* irq; void* irqid; void* mt; void* mth; void* mtt; void* ds; void* dsh; void* dst; void* ddma; void* ddmah; void* ddmat; void* cs; void* csh; void* cst; void* mtid; void* dsid; void* ddmaid; void* csid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_ENVY24 ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_ENVY24 ; 
 int ENXIO ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  INTR_MPSAFE ; 
 void* PCIR_CCS ; 
 void* PCIR_DDMA ; 
 void* PCIR_DS ; 
 void* PCIR_MT ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  envy24_intr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int) ; 
 void* FUNC5 (void*) ; 
 void* FUNC6 (void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sc_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct sc_info *sc)
{
	/* allocate I/O port resource */
	sc->csid = PCIR_CCS;
	sc->cs = FUNC0(sc->dev, SYS_RES_IOPORT,
	    &sc->csid, RF_ACTIVE);
	sc->ddmaid = PCIR_DDMA;
	sc->ddma = FUNC0(sc->dev, SYS_RES_IOPORT,
	    &sc->ddmaid, RF_ACTIVE);
	sc->dsid = PCIR_DS;
	sc->ds = FUNC0(sc->dev, SYS_RES_IOPORT,
	    &sc->dsid, RF_ACTIVE);
	sc->mtid = PCIR_MT;
	sc->mt = FUNC0(sc->dev, SYS_RES_IOPORT,
	    &sc->mtid, RF_ACTIVE);
	if (!sc->cs || !sc->ddma || !sc->ds || !sc->mt) {
		FUNC3(sc->dev, "unable to map IO port space\n");
		return ENXIO;
	}
	sc->cst = FUNC6(sc->cs);
	sc->csh = FUNC5(sc->cs);
	sc->ddmat = FUNC6(sc->ddma);
	sc->ddmah = FUNC5(sc->ddma);
	sc->dst = FUNC6(sc->ds);
	sc->dsh = FUNC5(sc->ds);
	sc->mtt = FUNC6(sc->mt);
	sc->mth = FUNC5(sc->mt);
#if(0)
	device_printf(sc->dev,
	    "IO port register values\nCCS: 0x%lx\nDDMA: 0x%lx\nDS: 0x%lx\nMT: 0x%lx\n",
	    pci_read_config(sc->dev, PCIR_CCS, 4),
	    pci_read_config(sc->dev, PCIR_DDMA, 4),
	    pci_read_config(sc->dev, PCIR_DS, 4),
	    pci_read_config(sc->dev, PCIR_MT, 4));
#endif

	/* allocate interrupt resource */
	sc->irqid = 0;
	sc->irq = FUNC0(sc->dev, SYS_RES_IRQ, &sc->irqid,
				 RF_ACTIVE | RF_SHAREABLE);
	if (!sc->irq ||
	    FUNC7(sc->dev, sc->irq, INTR_MPSAFE, envy24_intr, sc, &sc->ih)) {
		FUNC3(sc->dev, "unable to map interrupt\n");
		return ENXIO;
	}

	/* allocate DMA resource */
	if (FUNC1(/*parent*/FUNC2(sc->dev),
	    /*alignment*/4,
	    /*boundary*/0,
	    /*lowaddr*/BUS_SPACE_MAXADDR_ENVY24,
	    /*highaddr*/BUS_SPACE_MAXADDR_ENVY24,
	    /*filter*/NULL, /*filterarg*/NULL,
	    /*maxsize*/BUS_SPACE_MAXSIZE_ENVY24,
	    /*nsegments*/1, /*maxsegsz*/0x3ffff,
	    /*flags*/0, /*lockfunc*/busdma_lock_mutex,
	    /*lockarg*/&Giant, &sc->dmat) != 0) {
		FUNC3(sc->dev, "unable to create dma tag\n");
		return ENXIO;
	}

	return 0;
}