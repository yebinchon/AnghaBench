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
typedef  union mly_command_packet {int dummy; } mly_command_packet ;
struct mly_softc {int mly_doorbell_true; int /*<<< orphan*/  mly_interrupt_mask; int /*<<< orphan*/  mly_interrupt_status; int /*<<< orphan*/  mly_error_status; int /*<<< orphan*/  mly_odbr; int /*<<< orphan*/  mly_idbr; int /*<<< orphan*/  mly_status_mailbox; int /*<<< orphan*/  mly_command_mailbox; int /*<<< orphan*/  mly_hwif; int /*<<< orphan*/  mly_dev; int /*<<< orphan*/  mly_packet_dmat; int /*<<< orphan*/  mly_parent_dmat; int /*<<< orphan*/  mly_buffer_dmat; int /*<<< orphan*/  mly_lock; int /*<<< orphan*/  mly_intr; int /*<<< orphan*/ * mly_irq; scalar_t__ mly_irq_rid; scalar_t__ mly_regs_rid; int /*<<< orphan*/ * mly_regs_resource; } ;
struct TYPE_2__ {scalar_t__ vendor; scalar_t__ device; int /*<<< orphan*/  hwif; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int BUS_SPACE_MAXSIZE_32BIT ; 
 int BUS_SPACE_UNRESTRICTED ; 
 int DFLTPHYS ; 
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_ENTROPY ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_CAM ; 
#define  MLY_HWIF_I960RX 129 
#define  MLY_HWIF_STRONGARM 128 
 int /*<<< orphan*/  MLY_I960RX_COMMAND_MAILBOX ; 
 int /*<<< orphan*/  MLY_I960RX_ERROR_STATUS ; 
 int /*<<< orphan*/  MLY_I960RX_IDBR ; 
 int /*<<< orphan*/  MLY_I960RX_INTERRUPT_MASK ; 
 int /*<<< orphan*/  MLY_I960RX_INTERRUPT_STATUS ; 
 int /*<<< orphan*/  MLY_I960RX_ODBR ; 
 int /*<<< orphan*/  MLY_I960RX_STATUS_MAILBOX ; 
 int MLY_MAX_COMMANDS ; 
 int MLY_MAX_SGENTRIES ; 
 int /*<<< orphan*/  MLY_STRONGARM_COMMAND_MAILBOX ; 
 int /*<<< orphan*/  MLY_STRONGARM_ERROR_STATUS ; 
 int /*<<< orphan*/  MLY_STRONGARM_IDBR ; 
 int /*<<< orphan*/  MLY_STRONGARM_INTERRUPT_MASK ; 
 int /*<<< orphan*/  MLY_STRONGARM_INTERRUPT_STATUS ; 
 int /*<<< orphan*/  MLY_STRONGARM_ODBR ; 
 int /*<<< orphan*/  MLY_STRONGARM_STATUS_MAILBOX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mly_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_1__* mly_identifiers ; 
 int /*<<< orphan*/  mly_intr ; 
 int FUNC7 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct mly_softc*,char*) ; 
 int FUNC9 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct mly_softc *sc)
{
    int			i, error;

    FUNC6(1);

    /* assume failure is 'not configured' */
    error = ENXIO;

    /* 
     * Verify that the adapter is correctly set up in PCI space.
     */
    FUNC10(sc->mly_dev);

    /*
     * Allocate the PCI register window.
     */
    sc->mly_regs_rid = FUNC0(0);	/* first base address register */
    if ((sc->mly_regs_resource = FUNC1(sc->mly_dev, 
	    SYS_RES_MEMORY, &sc->mly_regs_rid, RF_ACTIVE)) == NULL) {
	FUNC8(sc, "can't allocate register window\n");
	goto fail;
    }

    /* 
     * Allocate and connect our interrupt.
     */
    sc->mly_irq_rid = 0;
    if ((sc->mly_irq = FUNC1(sc->mly_dev, SYS_RES_IRQ, 
		    &sc->mly_irq_rid, RF_SHAREABLE | RF_ACTIVE)) == NULL) {
	FUNC8(sc, "can't allocate interrupt\n");
	goto fail;
    }
    if (FUNC4(sc->mly_dev, sc->mly_irq, INTR_TYPE_CAM | INTR_ENTROPY | INTR_MPSAFE, NULL, mly_intr, sc, &sc->mly_intr)) {
	FUNC8(sc, "can't set up interrupt\n");
	goto fail;
    }

    /* assume failure is 'out of memory' */
    error = ENOMEM;

    /*
     * Allocate the parent bus DMA tag appropriate for our PCI interface.
     * 
     * Note that all of these controllers are 64-bit capable.
     */
    if (FUNC2(FUNC3(sc->mly_dev),/* PCI parent */
			   1, 0, 			/* alignment, boundary */
			   BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
			   BUS_SPACE_MAXADDR, 		/* highaddr */
			   NULL, NULL, 			/* filter, filterarg */
			   BUS_SPACE_MAXSIZE_32BIT,	/* maxsize */
			   BUS_SPACE_UNRESTRICTED,	/* nsegments */
			   BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
			   BUS_DMA_ALLOCNOW,		/* flags */
			   NULL,			/* lockfunc */
			   NULL,			/* lockarg */
			   &sc->mly_parent_dmat)) {
	FUNC8(sc, "can't allocate parent DMA tag\n");
	goto fail;
    }

    /*
     * Create DMA tag for mapping buffers into controller-addressable space.
     */
    if (FUNC2(sc->mly_parent_dmat, 	/* parent */
			   1, 0, 			/* alignment, boundary */
			   BUS_SPACE_MAXADDR,		/* lowaddr */
			   BUS_SPACE_MAXADDR, 		/* highaddr */
			   NULL, NULL, 			/* filter, filterarg */
			   DFLTPHYS,			/* maxsize */
			   MLY_MAX_SGENTRIES,		/* nsegments */
			   BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
			   0,				/* flags */
			   busdma_lock_mutex,		/* lockfunc */
			   &sc->mly_lock,		/* lockarg */
			   &sc->mly_buffer_dmat)) {
	FUNC8(sc, "can't allocate buffer DMA tag\n");
	goto fail;
    }

    /*
     * Initialise the DMA tag for command packets.
     */
    if (FUNC2(sc->mly_parent_dmat,		/* parent */
			   1, 0, 			/* alignment, boundary */
			   BUS_SPACE_MAXADDR,		/* lowaddr */
			   BUS_SPACE_MAXADDR, 		/* highaddr */
			   NULL, NULL, 			/* filter, filterarg */
			   sizeof(union mly_command_packet) * MLY_MAX_COMMANDS, 1,	/* maxsize, nsegments */
			   BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
			   BUS_DMA_ALLOCNOW,		/* flags */
			   NULL, NULL,			/* lockfunc, lockarg */
			   &sc->mly_packet_dmat)) {
	FUNC8(sc, "can't allocate command packet DMA tag\n");
	goto fail;
    }

    /* 
     * Detect the hardware interface version 
     */
    for (i = 0; mly_identifiers[i].vendor != 0; i++) {
	if ((mly_identifiers[i].vendor == FUNC12(sc->mly_dev)) &&
	    (mly_identifiers[i].device == FUNC11(sc->mly_dev))) {
	    sc->mly_hwif = mly_identifiers[i].hwif;
	    switch(sc->mly_hwif) {
	    case MLY_HWIF_I960RX:
		FUNC5(1, "set hardware up for i960RX");
		sc->mly_doorbell_true = 0x00;
		sc->mly_command_mailbox =  MLY_I960RX_COMMAND_MAILBOX;
		sc->mly_status_mailbox =   MLY_I960RX_STATUS_MAILBOX;
		sc->mly_idbr =             MLY_I960RX_IDBR;
		sc->mly_odbr =             MLY_I960RX_ODBR;
		sc->mly_error_status =     MLY_I960RX_ERROR_STATUS;
		sc->mly_interrupt_status = MLY_I960RX_INTERRUPT_STATUS;
		sc->mly_interrupt_mask =   MLY_I960RX_INTERRUPT_MASK;
		break;
	    case MLY_HWIF_STRONGARM:
		FUNC5(1, "set hardware up for StrongARM");
		sc->mly_doorbell_true = 0xff;		/* doorbell 'true' is 0 */
		sc->mly_command_mailbox =  MLY_STRONGARM_COMMAND_MAILBOX;
		sc->mly_status_mailbox =   MLY_STRONGARM_STATUS_MAILBOX;
		sc->mly_idbr =             MLY_STRONGARM_IDBR;
		sc->mly_odbr =             MLY_STRONGARM_ODBR;
		sc->mly_error_status =     MLY_STRONGARM_ERROR_STATUS;
		sc->mly_interrupt_status = MLY_STRONGARM_INTERRUPT_STATUS;
		sc->mly_interrupt_mask =   MLY_STRONGARM_INTERRUPT_MASK;
		break;
	    }
	    break;
	}
    }

    /*
     * Create the scatter/gather mappings.
     */
    if ((error = FUNC9(sc)))
	goto fail;

    /*
     * Allocate and map the memory mailbox
     */
    if ((error = FUNC7(sc)))
	goto fail;

    error = 0;
	    
fail:
    return(error);
}