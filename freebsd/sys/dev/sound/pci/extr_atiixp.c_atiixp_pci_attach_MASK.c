#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* ich_func ) (struct atiixp_info*) ;struct atiixp_info* ich_arg; } ;
struct atiixp_info {int poll_ticks; int polling; int bufsz; int blkcnt; TYPE_1__ delayed_attach; int /*<<< orphan*/  sgd_table; int /*<<< orphan*/  sgd_dmamap; int /*<<< orphan*/  sgd_dmat; int /*<<< orphan*/  parent_dmat; int /*<<< orphan*/  ih; void* irq; scalar_t__ irqid; void* reg; int /*<<< orphan*/  sh; int /*<<< orphan*/  st; scalar_t__ regid; int /*<<< orphan*/  regtype; int /*<<< orphan*/  dev; int /*<<< orphan*/  poll_timer; int /*<<< orphan*/  lock; } ;
struct atiixp_dma_op {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ATI_IXP_BLK_ALIGN ; 
 int ATI_IXP_BLK_MIN ; 
 int /*<<< orphan*/  ATI_IXP_BUFSZ_DEFAULT ; 
 int /*<<< orphan*/  ATI_IXP_BUFSZ_MAX ; 
 int /*<<< orphan*/  ATI_IXP_BUFSZ_MIN ; 
 int ATI_IXP_DMA_CHSEGS ; 
 int ATI_IXP_DMA_CHSEGS_MAX ; 
 int ATI_IXP_DMA_CHSEGS_MIN ; 
 int ATI_IXP_NCHANS ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int ENXIO ; 
 int /*<<< orphan*/  INTR_MPSAFE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct atiixp_info*) ; 
 int /*<<< orphan*/  atiixp_dma_cb ; 
 int /*<<< orphan*/  atiixp_intr ; 
 int /*<<< orphan*/  FUNC3 (struct atiixp_info*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct atiixp_info*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ cold ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 struct atiixp_info* FUNC15 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC19 (void*) ; 
 int /*<<< orphan*/  FUNC20 (void*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct atiixp_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC23(device_t dev)
{
	struct atiixp_info *sc;
	int i;

	sc = FUNC15(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
	sc->lock = FUNC21(FUNC12(dev), "snd_atiixp softc");
	sc->dev = dev;

	FUNC9(&sc->poll_timer, 1);
	sc->poll_ticks = 1;

	if (FUNC18(FUNC11(sc->dev),
	    FUNC13(sc->dev), "polling", &i) == 0 && i != 0)
		sc->polling = 1;
	else
		sc->polling = 0;

	FUNC16(dev);

	sc->regid = FUNC0(0);
	sc->regtype = SYS_RES_MEMORY;
	sc->reg = FUNC4(dev, sc->regtype,
	    &sc->regid, RF_ACTIVE);

	if (!sc->reg) {
		FUNC14(dev, "unable to allocate register space\n");
		goto bad;
	}

	sc->st = FUNC20(sc->reg);
	sc->sh = FUNC19(sc->reg);

	sc->bufsz = FUNC17(dev, ATI_IXP_BUFSZ_MIN,
	    ATI_IXP_BUFSZ_DEFAULT, ATI_IXP_BUFSZ_MAX);

	sc->irqid = 0;
	sc->irq = FUNC4(dev, SYS_RES_IRQ, &sc->irqid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (!sc->irq || FUNC22(dev, sc->irq, INTR_MPSAFE,
	    atiixp_intr, sc, &sc->ih)) {
		FUNC14(dev, "unable to map interrupt\n");
		goto bad;
	}

	/*
	 * Let the user choose the best DMA segments.
	 */
	if (FUNC18(FUNC11(dev),
	    FUNC13(dev), "blocksize", &i) == 0 && i > 0) {
		i &= ATI_IXP_BLK_ALIGN;
		if (i < ATI_IXP_BLK_MIN)
			i = ATI_IXP_BLK_MIN;
		sc->blkcnt = sc->bufsz / i;
		i = 0;
		while (sc->blkcnt >> i)
			i++;
		sc->blkcnt = 1 << (i - 1);
		if (sc->blkcnt < ATI_IXP_DMA_CHSEGS_MIN)
			sc->blkcnt = ATI_IXP_DMA_CHSEGS_MIN;
		else if (sc->blkcnt > ATI_IXP_DMA_CHSEGS_MAX)
			sc->blkcnt = ATI_IXP_DMA_CHSEGS_MAX;

	} else
		sc->blkcnt = ATI_IXP_DMA_CHSEGS;

	/*
	 * DMA tag for scatter-gather buffers and link pointers
	 */
	if (FUNC5(/*parent*/FUNC8(dev), /*alignment*/2,
		/*boundary*/0,
		/*lowaddr*/BUS_SPACE_MAXADDR_32BIT,
		/*highaddr*/BUS_SPACE_MAXADDR,
		/*filter*/NULL, /*filterarg*/NULL,
		/*maxsize*/sc->bufsz, /*nsegments*/1, /*maxsegz*/0x3ffff,
		/*flags*/0, /*lockfunc*/NULL,
		/*lockarg*/NULL, &sc->parent_dmat) != 0) {
		FUNC14(dev, "unable to create dma tag\n");
		goto bad;
	}

	if (FUNC5(/*parent*/FUNC8(dev), /*alignment*/2,
		/*boundary*/0,
		/*lowaddr*/BUS_SPACE_MAXADDR_32BIT,
		/*highaddr*/BUS_SPACE_MAXADDR,
		/*filter*/NULL, /*filterarg*/NULL,
		/*maxsize*/ATI_IXP_DMA_CHSEGS_MAX * ATI_IXP_NCHANS *
		sizeof(struct atiixp_dma_op),
		/*nsegments*/1, /*maxsegz*/0x3ffff,
		/*flags*/0, /*lockfunc*/NULL,
		/*lockarg*/NULL, &sc->sgd_dmat) != 0) {
		FUNC14(dev, "unable to create dma tag\n");
		goto bad;
	}

	if (FUNC7(sc->sgd_dmat, (void **)&sc->sgd_table,
	    BUS_DMA_NOWAIT, &sc->sgd_dmamap) == -1)
		goto bad;

	if (FUNC6(sc->sgd_dmat, sc->sgd_dmamap, sc->sgd_table,
	    ATI_IXP_DMA_CHSEGS_MAX * ATI_IXP_NCHANS *
	    sizeof(struct atiixp_dma_op), atiixp_dma_cb, sc, 0))
		goto bad;


	FUNC2(sc);

	sc->delayed_attach.ich_func = atiixp_chip_post_init;
	sc->delayed_attach.ich_arg = sc;
	if (cold == 0 ||
	    FUNC10(&sc->delayed_attach) != 0) {
		sc->delayed_attach.ich_func = NULL;
		FUNC1(sc);
	}

	return (0);

bad:
	FUNC3(sc);
	return (ENXIO);
}