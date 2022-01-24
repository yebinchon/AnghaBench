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
typedef  int /*<<< orphan*/  vm_paddr_t ;
struct amr_softc {int /*<<< orphan*/  amr_hw_lock; int /*<<< orphan*/  amr_list_lock; int /*<<< orphan*/  amr_dev; int /*<<< orphan*/  amr_buffer64_dmat; int /*<<< orphan*/  amr_parent_dmat; int /*<<< orphan*/  amr_buffer_dmat; int /*<<< orphan*/  amr_intr; int /*<<< orphan*/ * amr_irq; int /*<<< orphan*/ * amr_reg; int /*<<< orphan*/  amr_bhandle; int /*<<< orphan*/  amr_btag; int /*<<< orphan*/  amr_type; } ;
struct amr_ident {int flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AMR_ID_DO_SG64 ; 
 int AMR_ID_QUARTZ ; 
 scalar_t__ FUNC0 (struct amr_softc*) ; 
 scalar_t__ FUNC1 (struct amr_softc*) ; 
 int /*<<< orphan*/  AMR_NSEG ; 
 int /*<<< orphan*/  AMR_TYPE_QUARTZ ; 
 int /*<<< orphan*/  AMR_TYPE_SG64 ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_UNRESTRICTED ; 
 int /*<<< orphan*/  DFLTPHYS ; 
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_ENTROPY ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 int SYS_RES_MEMORY ; 
 int FUNC3 (struct amr_softc*) ; 
 int FUNC4 (struct amr_softc*) ; 
 struct amr_ident* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ amr_force_sg32 ; 
 int /*<<< orphan*/  FUNC6 (struct amr_softc*) ; 
 int /*<<< orphan*/  amr_pci_intr ; 
 int FUNC7 (struct amr_softc*) ; 
 int FUNC8 (struct amr_softc*) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int,int*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct amr_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC13 (struct amr_softc*,int) ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 struct amr_softc* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC22(device_t dev)
{
    struct amr_softc	*sc;
    struct amr_ident	*id;
    int			rid, rtype, error;

    FUNC15(1);

    /*
     * Initialise softc.
     */
    sc = FUNC16(dev);
    FUNC13(sc, sizeof(*sc));
    sc->amr_dev = dev;

    /* assume failure is 'not configured' */
    error = ENXIO;

    /*
     * Determine board type.
     */
    if ((id = FUNC5(dev)) == NULL)
	return (ENXIO);

    if (id->flags & AMR_ID_QUARTZ) {
	sc->amr_type |= AMR_TYPE_QUARTZ;
    }

    if ((amr_force_sg32 == 0) && (id->flags & AMR_ID_DO_SG64) &&
	(sizeof(vm_paddr_t) > 4)) {
	FUNC17(dev, "Using 64-bit DMA\n");
	sc->amr_type |= AMR_TYPE_SG64;
    }

    /* force the busmaster enable bit on */
    FUNC19(dev);

    /*
     * Allocate the PCI register window.
     */
    rid = FUNC2(0);
    rtype = FUNC0(sc) ? SYS_RES_MEMORY : SYS_RES_IOPORT;
    sc->amr_reg = FUNC9(dev, rtype, &rid, RF_ACTIVE);
    if (sc->amr_reg == NULL) {
	FUNC17(sc->amr_dev, "can't allocate register window\n");
	goto out;
    }
    sc->amr_btag = FUNC21(sc->amr_reg);
    sc->amr_bhandle = FUNC20(sc->amr_reg);

    /*
     * Allocate and connect our interrupt.
     */
    rid = 0;
    sc->amr_irq = FUNC9(sc->amr_dev, SYS_RES_IRQ, &rid,
        RF_SHAREABLE | RF_ACTIVE);
    if (sc->amr_irq == NULL) {
        FUNC17(sc->amr_dev, "can't allocate interrupt\n");
	goto out;
    }
    if (FUNC12(sc->amr_dev, sc->amr_irq,
	INTR_TYPE_BIO | INTR_ENTROPY | INTR_MPSAFE, NULL, amr_pci_intr,
	sc, &sc->amr_intr)) {
        FUNC17(sc->amr_dev, "can't set up interrupt\n");
	goto out;
    }

    FUNC14(2, "interrupt attached");

    /* assume failure is 'out of memory' */
    error = ENOMEM;

    /*
     * Allocate the parent bus DMA tag appropriate for PCI.
     */
    if (FUNC10(FUNC11(dev),	/* PCI parent */
			   1, 0, 			/* alignment,boundary */
			   FUNC1(sc) ?
			   BUS_SPACE_MAXADDR :
			   BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
			   BUS_SPACE_MAXADDR, 		/* highaddr */
			   NULL, NULL, 			/* filter, filterarg */
			   BUS_SPACE_MAXSIZE,		/* maxsize */
			   BUS_SPACE_UNRESTRICTED,	/* nsegments */
			   BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
			   0,				/* flags */
			   NULL, NULL,			/* lockfunc, lockarg */
			   &sc->amr_parent_dmat)) {
	FUNC17(dev, "can't allocate parent DMA tag\n");
	goto out;
    }

    /*
     * Create DMA tag for mapping buffers into controller-addressable space.
     */
    if (FUNC10(sc->amr_parent_dmat,		/* parent */
			   1, 0,			/* alignment,boundary */
			   BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
			   BUS_SPACE_MAXADDR,		/* highaddr */
			   NULL, NULL,			/* filter, filterarg */
			   DFLTPHYS,			/* maxsize */
			   AMR_NSEG,			/* nsegments */
			   BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
			   0,		/* flags */
			   busdma_lock_mutex,		/* lockfunc */
			   &sc->amr_list_lock,		/* lockarg */
			   &sc->amr_buffer_dmat)) {
        FUNC17(sc->amr_dev, "can't allocate buffer DMA tag\n");
	goto out;
    }

    if (FUNC10(sc->amr_parent_dmat,		/* parent */
			   1, 0,			/* alignment,boundary */
			   BUS_SPACE_MAXADDR,		/* lowaddr */
			   BUS_SPACE_MAXADDR,		/* highaddr */
			   NULL, NULL,			/* filter, filterarg */
			   DFLTPHYS,			/* maxsize */
			   AMR_NSEG,			/* nsegments */
			   BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
			   0,		/* flags */
			   busdma_lock_mutex,		/* lockfunc */
			   &sc->amr_list_lock,		/* lockarg */
			   &sc->amr_buffer64_dmat)) {
        FUNC17(sc->amr_dev, "can't allocate buffer DMA tag\n");
	goto out;
    }

    FUNC14(2, "dma tag done");

    /*
     * Allocate and set up mailbox in a bus-visible fashion.
     */
    FUNC18(&sc->amr_list_lock, "AMR List Lock", NULL, MTX_DEF);
    FUNC18(&sc->amr_hw_lock, "AMR HW Lock", NULL, MTX_DEF);
    if ((error = FUNC7(sc)) != 0)
	goto out;

    FUNC14(2, "mailbox setup");

    /*
     * Build the scatter/gather buffers.
     */
    if ((error = FUNC8(sc)) != 0)
	goto out;
    FUNC14(2, "s/g list mapped");

    if ((error = FUNC4(sc)) != 0)
	goto out;
    FUNC14(2, "ccb mapped");


    /*
     * Do bus-independant initialisation, bring controller online.
     */
    error = FUNC3(sc);

out:
    if (error)
	FUNC6(sc);
    return(error);
}