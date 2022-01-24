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
struct TYPE_4__ {struct twe_softc* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct twe_softc {TYPE_2__ twe_ich; TYPE_1__* twe_dev_t; int /*<<< orphan*/  twe_dev; int /*<<< orphan*/  twe_immediate_map; int /*<<< orphan*/  twe_immediate; int /*<<< orphan*/  twe_immediate_dmat; int /*<<< orphan*/  twe_parent_dmat; int /*<<< orphan*/  twe_buffer_dmat; int /*<<< orphan*/  twe_io_lock; int /*<<< orphan*/  twe_cmd; int /*<<< orphan*/  twe_cmdmap; int /*<<< orphan*/  twe_cmd_dmat; int /*<<< orphan*/  twe_intr; int /*<<< orphan*/ * twe_irq; int /*<<< orphan*/ * twe_io; int /*<<< orphan*/  twe_config_lock; } ;
struct sysctl_oid {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {struct twe_softc* si_drv1; } ;
typedef  int /*<<< orphan*/  TWE_Command ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int BUS_SPACE_MAXSIZE_32BIT ; 
 int BUS_SPACE_UNRESTRICTED ; 
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int DFLTPHYS ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int INTR_ENTROPY ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int PAGE_SIZE ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 struct sysctl_oid* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  TWE_DRIVER_VERSION_STRING ; 
 int TWE_IO_CONFIG_REG ; 
 int TWE_MAX_SGL_LENGTH ; 
 int TWE_Q_LENGTH ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  _hw ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct twe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct twe_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct twe_softc* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  twe_cdevsw ; 
 int /*<<< orphan*/  FUNC21 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC22 (struct twe_softc*) ; 
 int /*<<< orphan*/  twe_intrhook ; 
 int /*<<< orphan*/  twe_pci_intr ; 
 int /*<<< orphan*/  FUNC23 (struct twe_softc*,char*) ; 
 int FUNC24 (struct twe_softc*) ; 
 int /*<<< orphan*/  twe_setup_request_dmamap ; 

__attribute__((used)) static int
FUNC25(device_t dev)
{
    struct twe_softc	*sc;
    struct sysctl_oid	*sysctl_tree;
    int			rid, error;

    FUNC12(4);

    /*
     * Initialise the softc structure.
     */
    sc = FUNC14(dev);
    sc->twe_dev = dev;
    FUNC18(&sc->twe_io_lock, "twe I/O", NULL, MTX_DEF);
    FUNC20(&sc->twe_config_lock, "twe config");

    /*
     * XXX: This sysctl tree must stay at hw.tweX rather than using
     * the device_get_sysctl_tree() created by new-bus because
     * existing 3rd party binary tools such as tw_cli and 3dm2 use the
     * existence of this sysctl node to discover controllers.
     */
    sysctl_tree = FUNC0(FUNC15(dev),
	FUNC3(_hw), OID_AUTO,
	FUNC13(dev), CTLFLAG_RD, 0, "");
    if (sysctl_tree == NULL) {
	FUNC23(sc, "cannot add sysctl tree node\n");
	return (ENXIO);
    }
    FUNC1(FUNC15(dev), FUNC2(sysctl_tree),
	OID_AUTO, "driver_version", CTLFLAG_RD, TWE_DRIVER_VERSION_STRING, 0,
	"TWE driver version");

    /*
     * Force the busmaster enable bit on, in case the BIOS forgot.
     */
    FUNC19(dev);

    /*
     * Allocate the PCI register window.
     */
    rid = TWE_IO_CONFIG_REG;
    if ((sc->twe_io = FUNC4(dev, SYS_RES_IOPORT, &rid, 
        RF_ACTIVE)) == NULL) {
	FUNC23(sc, "can't allocate register window\n");
	FUNC22(sc);
	return(ENXIO);
    }

    /*
     * Allocate the parent bus DMA tag appropriate for PCI.
     */
    if (FUNC5(FUNC8(dev),		/* PCI parent */
			   1, 0, 				/* alignment, boundary */
			   BUS_SPACE_MAXADDR_32BIT, 		/* lowaddr */
			   BUS_SPACE_MAXADDR, 			/* highaddr */
			   NULL, NULL, 				/* filter, filterarg */
			   BUS_SPACE_MAXSIZE_32BIT,		/* maxsize */
			   BUS_SPACE_UNRESTRICTED,		/* nsegments */
			   BUS_SPACE_MAXSIZE_32BIT,		/* maxsegsize */
			   0,					/* flags */
			   NULL,				/* lockfunc */
			   NULL,				/* lockarg */
			   &sc->twe_parent_dmat)) {
	FUNC23(sc, "can't allocate parent DMA tag\n");
	FUNC22(sc);
	return(ENOMEM);
    }

    /* 
     * Allocate and connect our interrupt.
     */
    rid = 0;
    if ((sc->twe_irq = FUNC4(sc->twe_dev, SYS_RES_IRQ,
        &rid, RF_SHAREABLE | RF_ACTIVE)) == NULL) {
	FUNC23(sc, "can't allocate interrupt\n");
	FUNC22(sc);
	return(ENXIO);
    }
    if (FUNC9(sc->twe_dev, sc->twe_irq, INTR_TYPE_BIO | INTR_ENTROPY | INTR_MPSAFE,  
		       NULL, twe_pci_intr, sc, &sc->twe_intr)) {
	FUNC23(sc, "can't set up interrupt\n");
	FUNC22(sc);
	return(ENXIO);
    }

    /*
     * Create DMA tag for mapping command's into controller-addressable space.
     */
    if (FUNC5(sc->twe_parent_dmat, 	/* parent */
			   1, 0, 			/* alignment, boundary */
			   BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
			   BUS_SPACE_MAXADDR, 		/* highaddr */
			   NULL, NULL, 			/* filter, filterarg */
			   sizeof(TWE_Command) *
			   TWE_Q_LENGTH, 1,		/* maxsize, nsegments */
			   BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
			   0,				/* flags */
			   NULL,			/* lockfunc */
			   NULL,			/* lockarg */
			   &sc->twe_cmd_dmat)) {
	FUNC23(sc, "can't allocate data buffer DMA tag\n");
	FUNC22(sc);
	return(ENOMEM);
    }
    /*
     * Allocate memory and make it available for DMA.
     */
    if (FUNC7(sc->twe_cmd_dmat, (void **)&sc->twe_cmd,
			 BUS_DMA_NOWAIT, &sc->twe_cmdmap)) {
	FUNC23(sc, "can't allocate command memory\n");
	return(ENOMEM);
    }
    FUNC6(sc->twe_cmd_dmat, sc->twe_cmdmap, sc->twe_cmd,
		    sizeof(TWE_Command) * TWE_Q_LENGTH,
		    twe_setup_request_dmamap, sc, 0);
    FUNC10(sc->twe_cmd, sizeof(TWE_Command) * TWE_Q_LENGTH);

    /*
     * Create DMA tag for mapping objects into controller-addressable space.
     */
    if (FUNC5(sc->twe_parent_dmat, 	/* parent */
			   1, 0, 			/* alignment, boundary */
			   BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
			   BUS_SPACE_MAXADDR, 		/* highaddr */
			   NULL, NULL, 			/* filter, filterarg */
			   (TWE_MAX_SGL_LENGTH - 1) * PAGE_SIZE,/* maxsize */
			   TWE_MAX_SGL_LENGTH,		/* nsegments */
			   BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
			   BUS_DMA_ALLOCNOW,		/* flags */
			   busdma_lock_mutex,		/* lockfunc */
			   &sc->twe_io_lock,		/* lockarg */
			   &sc->twe_buffer_dmat)) {
	FUNC23(sc, "can't allocate data buffer DMA tag\n");
	FUNC22(sc);
	return(ENOMEM);
    }

    /*
     * Create DMA tag for mapping objects into controller-addressable space.
     */
    if (FUNC5(sc->twe_parent_dmat, 	/* parent */
			   1, 0, 			/* alignment, boundary */
			   BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
			   BUS_SPACE_MAXADDR, 		/* highaddr */
			   NULL, NULL, 			/* filter, filterarg */
			   DFLTPHYS, 1,			/* maxsize, nsegments */
			   BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
			   0,				/* flags */
			   NULL,			/* lockfunc */
			   NULL,			/* lockarg */
			   &sc->twe_immediate_dmat)) {
	FUNC23(sc, "can't allocate data buffer DMA tag\n");
	FUNC22(sc);
	return(ENOMEM);
    }
    /*
     * Allocate memory for requests which cannot sleep or support continuation.
     */
     if (FUNC7(sc->twe_immediate_dmat, (void **)&sc->twe_immediate,
			  BUS_DMA_NOWAIT, &sc->twe_immediate_map)) {
	FUNC23(sc, "can't allocate memory for immediate requests\n");
	return(ENOMEM);
     }

    /*
     * Initialise the controller and driver core.
     */
    if ((error = FUNC24(sc))) {
	FUNC22(sc);
	return(error);
    }

    /*
     * Print some information about the controller and configuration.
     */
    FUNC21(sc);

    /*
     * Create the control device.
     */
    sc->twe_dev_t = FUNC17(&twe_cdevsw, FUNC16(sc->twe_dev), UID_ROOT, GID_OPERATOR,
			     S_IRUSR | S_IWUSR, "twe%d", FUNC16(sc->twe_dev));
    sc->twe_dev_t->si_drv1 = sc;
    /*
     * Schedule ourselves to bring the controller up once interrupts are available.
     * This isn't strictly necessary, since we disable interrupts while probing the
     * controller, but it is more in keeping with common practice for other disk 
     * devices.
     */
    sc->twe_ich.ich_func = twe_intrhook;
    sc->twe_ich.ich_arg = sc;
    if (FUNC11(&sc->twe_ich) != 0) {
	FUNC23(sc, "can't establish configuration hook\n");
	FUNC22(sc);
	return(ENXIO);
    }

    return(0);
}