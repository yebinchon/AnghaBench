#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct lance_softc {scalar_t__ sc_addr; int /*<<< orphan*/  sc_mem; int /*<<< orphan*/ * sc_supmedia; int /*<<< orphan*/ * sc_mediastatus; int /*<<< orphan*/ * sc_mediachange; int /*<<< orphan*/ * sc_nocarrier; int /*<<< orphan*/ * sc_hwintr; int /*<<< orphan*/ * sc_hwinit; int /*<<< orphan*/ * sc_hwreset; int /*<<< orphan*/  sc_wrcsr; int /*<<< orphan*/  sc_rdcsr; int /*<<< orphan*/  sc_zerobuf; void* sc_copyfrombuf; void* sc_copytobuf; void* sc_copyfromdesc; void* sc_copytodesc; int /*<<< orphan*/ * sc_enaddr; scalar_t__ sc_conf3; scalar_t__ sc_flags; int /*<<< orphan*/  sc_memsize; } ;
struct TYPE_7__ {struct lance_softc lsc; } ;
struct le_isa_softc {int /*<<< orphan*/ * sc_rres; int /*<<< orphan*/ * sc_dres; int /*<<< orphan*/ * sc_ires; int /*<<< orphan*/  sc_pdmat; int /*<<< orphan*/  sc_dmat; int /*<<< orphan*/  sc_dmam; TYPE_4__ sc_am7990; int /*<<< orphan*/  sc_ih; void* sc_rdp; void* sc_rap; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  void* bus_size_t ;
struct TYPE_6__ {int macstride; void* macstart; void* rdp; void* rap; int /*<<< orphan*/  iosize; } ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_WAITOK ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_24BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
#define  ENOENT 129 
#define  ENXIO 128 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LE_ISA_MEMSIZE ; 
 int /*<<< orphan*/  FUNC1 (struct lance_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct lance_softc*,int /*<<< orphan*/ ) ; 
 void* PCNET_RAP ; 
 void* PCNET_RDP ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  am7990_intr ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lance_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct lance_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 struct le_isa_softc* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 void* lance_copyfrombuf_contig ; 
 void* lance_copytobuf_contig ; 
 int /*<<< orphan*/  lance_zerobuf_contig ; 
 int /*<<< orphan*/  le_isa_dma_callback ; 
 int /*<<< orphan*/  le_isa_ids ; 
 TYPE_1__* le_isa_params ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  le_isa_rdcsr ; 
 int /*<<< orphan*/  le_isa_wrcsr ; 
 int FUNC25 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC28(device_t dev)
{
	struct le_isa_softc *lesc;
	struct lance_softc *sc;
	bus_size_t macstart, rap, rdp;
	int error, i, j, macstride;

	lesc = FUNC20(dev);
	sc = &lesc->sc_am7990.lsc;

	FUNC2(sc, FUNC18(dev));

	j = 0;
	switch (FUNC0(FUNC19(dev), dev, le_isa_ids)) {
	case 0:
		lesc->sc_rres = FUNC5(dev, SYS_RES_IOPORT,
		    &j, RF_ACTIVE);
		rap = PCNET_RAP;
		rdp = PCNET_RDP;
		macstart = 0;
		macstride = 1;
		break;
	case ENOENT:
		for (i = 0; i < FUNC25(le_isa_params); i++) {
			if (FUNC24(dev, &le_isa_params[i]) == 0) {
				lesc->sc_rres = FUNC6(dev,
				    SYS_RES_IOPORT, &j,
				    le_isa_params[i].iosize, RF_ACTIVE);
				rap = le_isa_params[i].rap;
				rdp = le_isa_params[i].rdp;
				macstart = le_isa_params[i].macstart;
				macstride = le_isa_params[i].macstride;
				goto found;
			}
		}
		/* FALLTHROUGH */
	case ENXIO:
	default:
		FUNC22(dev, "cannot determine chip\n");
		error = ENXIO;
		goto fail_mtx;
	}

 found:
	if (lesc->sc_rres == NULL) {
		FUNC22(dev, "cannot allocate registers\n");
		error = ENXIO;
		goto fail_mtx;
	}
	lesc->sc_rap = rap;
	lesc->sc_rdp = rdp;

	i = 0;
	if ((lesc->sc_dres = FUNC5(dev, SYS_RES_DRQ,
	    &i, RF_ACTIVE)) == NULL) {
		FUNC22(dev, "cannot allocate DMA channel\n");
		error = ENXIO;
		goto fail_rres;
	}

	i = 0;
	if ((lesc->sc_ires = FUNC5(dev, SYS_RES_IRQ,
	    &i, RF_SHAREABLE | RF_ACTIVE)) == NULL) {
		FUNC22(dev, "cannot allocate interrupt\n");
		error = ENXIO;
		goto fail_dres;
	}

	error = FUNC7(
	    FUNC13(dev),	/* parent */
	    1, 0,			/* alignment, boundary */
	    BUS_SPACE_MAXADDR_24BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    BUS_SPACE_MAXSIZE_32BIT,	/* maxsize */
	    0,				/* nsegments */
	    BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &lesc->sc_pdmat);
	if (error != 0) {
		FUNC22(dev, "cannot allocate parent DMA tag\n");
		goto fail_ires;
	}

	sc->sc_memsize = LE_ISA_MEMSIZE;
	/*
	 * For Am79C90, Am79C961 and Am79C961A the init block must be 2-byte
	 * aligned and the ring descriptors must be 8-byte aligned.
	 */
	error = FUNC7(
	    lesc->sc_pdmat,		/* parent */
	    8, 0,			/* alignment, boundary */
	    BUS_SPACE_MAXADDR_24BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    sc->sc_memsize,		/* maxsize */
	    1,				/* nsegments */
	    sc->sc_memsize,		/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &lesc->sc_dmat);
	if (error != 0) {
		FUNC22(dev, "cannot allocate buffer DMA tag\n");
		goto fail_pdtag;
	}

	error = FUNC11(lesc->sc_dmat, (void **)&sc->sc_mem,
	    BUS_DMA_WAITOK | BUS_DMA_COHERENT, &lesc->sc_dmam);
	if (error != 0) {
		FUNC22(dev, "cannot allocate DMA buffer memory\n");
		goto fail_dtag;
	}

	sc->sc_addr = 0;
	error = FUNC9(lesc->sc_dmat, lesc->sc_dmam, sc->sc_mem,
	    sc->sc_memsize, le_isa_dma_callback, sc, 0);
	if (error != 0 || sc->sc_addr == 0) {
		FUNC22(dev, "cannot load DMA buffer map\n");
		goto fail_dmem;
	}

	FUNC23(FUNC27(lesc->sc_dres));

	sc->sc_flags = 0;
	sc->sc_conf3 = 0;

	/*
	 * Extract the physical MAC address from the ROM.
	 */
	for (i = 0; i < sizeof(sc->sc_enaddr); i++)
		sc->sc_enaddr[i] = FUNC14(lesc->sc_rres,
		    macstart + i * macstride);

	sc->sc_copytodesc = lance_copytobuf_contig;
	sc->sc_copyfromdesc = lance_copyfrombuf_contig;
	sc->sc_copytobuf = lance_copytobuf_contig;
	sc->sc_copyfrombuf = lance_copyfrombuf_contig;
	sc->sc_zerobuf = lance_zerobuf_contig;

	sc->sc_rdcsr = le_isa_rdcsr;
	sc->sc_wrcsr = le_isa_wrcsr;
	sc->sc_hwreset = NULL;
	sc->sc_hwinit = NULL;
	sc->sc_hwintr = NULL;
	sc->sc_nocarrier = NULL;
	sc->sc_mediachange = NULL;
	sc->sc_mediastatus = NULL;
	sc->sc_supmedia = NULL;

	error = FUNC3(&lesc->sc_am7990, FUNC17(dev),
	    FUNC21(dev));
	if (error != 0) {
		FUNC22(dev, "cannot attach Am7990\n");
		goto fail_dmap;
	}

	error = FUNC16(dev, lesc->sc_ires, INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, am7990_intr, sc, &lesc->sc_ih);
	if (error != 0) {
		FUNC22(dev, "cannot set up interrupt\n");
		goto fail_am7990;
	}

	return (0);

 fail_am7990:
	FUNC4(&lesc->sc_am7990);
 fail_dmap:
	FUNC10(lesc->sc_dmat, lesc->sc_dmam);
 fail_dmem:
	FUNC12(lesc->sc_dmat, sc->sc_mem, lesc->sc_dmam);
 fail_dtag:
	FUNC8(lesc->sc_dmat);
 fail_pdtag:
	FUNC8(lesc->sc_pdmat);
 fail_ires:
	FUNC15(dev, SYS_RES_IRQ,
	    FUNC26(lesc->sc_ires), lesc->sc_ires);
 fail_dres:
	FUNC15(dev, SYS_RES_DRQ,
	    FUNC26(lesc->sc_dres), lesc->sc_dres);
 fail_rres:
	FUNC15(dev, SYS_RES_IOPORT,
	    FUNC26(lesc->sc_rres), lesc->sc_rres);
 fail_mtx:
	FUNC1(sc);
	return (error);
}