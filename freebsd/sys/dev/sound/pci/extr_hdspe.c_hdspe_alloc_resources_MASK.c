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
struct sc_info {int bufsize; int /*<<< orphan*/  rbuf; int /*<<< orphan*/  pbuf; int /*<<< orphan*/  dev; int /*<<< orphan*/  rmap; int /*<<< orphan*/  dmat; int /*<<< orphan*/  pmap; int /*<<< orphan*/  ih; void* irq; scalar_t__ irqid; void* cs; int /*<<< orphan*/  csh; int /*<<< orphan*/  cst; scalar_t__ csid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int ENXIO ; 
 int /*<<< orphan*/  Giant ; 
 int HDSPE_DMASEGSIZE ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_AV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct sc_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sc_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hdspe_dmapsetmap ; 
 int /*<<< orphan*/  hdspe_intr ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 

__attribute__((used)) static int
FUNC11(struct sc_info *sc)
{

	/* Allocate resource. */
	sc->csid = FUNC0(0);
	sc->cs = FUNC1(sc->dev, SYS_RES_MEMORY,
	    &sc->csid, RF_ACTIVE);

	if (!sc->cs) {
		FUNC8(sc->dev, "Unable to map SYS_RES_MEMORY.\n");
		return (ENXIO);
	}

	sc->cst = FUNC10(sc->cs);
	sc->csh = FUNC9(sc->cs);

	/* Allocate interrupt resource. */
	sc->irqid = 0;
	sc->irq = FUNC1(sc->dev, SYS_RES_IRQ, &sc->irqid,
	    RF_ACTIVE | RF_SHAREABLE);

	if (!sc->irq ||
	    FUNC6(sc->dev, sc->irq, INTR_MPSAFE | INTR_TYPE_AV,
		NULL, hdspe_intr, sc, &sc->ih)) {
		FUNC8(sc->dev, "Unable to alloc interrupt resource.\n");
		return (ENXIO);
	}

	/* Allocate DMA resources. */
	if (FUNC2(/*parent*/FUNC5(sc->dev),
		/*alignment*/4,
		/*boundary*/0,
		/*lowaddr*/BUS_SPACE_MAXADDR_32BIT,
		/*highaddr*/BUS_SPACE_MAXADDR,
		/*filter*/NULL,
		/*filterarg*/NULL,
		/*maxsize*/2 * HDSPE_DMASEGSIZE,
		/*nsegments*/2,
		/*maxsegsz*/HDSPE_DMASEGSIZE,
		/*flags*/0,
		/*lockfunc*/busdma_lock_mutex,
		/*lockarg*/&Giant,
		/*dmatag*/&sc->dmat) != 0) {
		FUNC8(sc->dev, "Unable to create dma tag.\n");
		return (ENXIO);
	}

	sc->bufsize = HDSPE_DMASEGSIZE;

	/* pbuf (play buffer). */
	if (FUNC4(sc->dmat, (void **)&sc->pbuf,
		BUS_DMA_NOWAIT, &sc->pmap)) {
		FUNC8(sc->dev, "Can't alloc pbuf.\n");
		return (ENXIO);
	}

	if (FUNC3(sc->dmat, sc->pmap, sc->pbuf, sc->bufsize,
		hdspe_dmapsetmap, sc, 0)) {
		FUNC8(sc->dev, "Can't load pbuf.\n");
		return (ENXIO);
	}

	/* rbuf (rec buffer). */
	if (FUNC4(sc->dmat, (void **)&sc->rbuf,
		BUS_DMA_NOWAIT, &sc->rmap)) {
		FUNC8(sc->dev, "Can't alloc rbuf.\n");
		return (ENXIO);
	}

	if (FUNC3(sc->dmat, sc->rmap, sc->rbuf, sc->bufsize,
		hdspe_dmapsetmap, sc, 0)) {
		FUNC8(sc->dev, "Can't load rbuf.\n");
		return (ENXIO);
	}

	FUNC7(sc->pbuf, sc->bufsize);
	FUNC7(sc->rbuf, sc->bufsize);

	return (0);
}