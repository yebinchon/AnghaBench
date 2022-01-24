#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct TYPE_7__ {int pqi_hwif; int /*<<< orphan*/ * pqi_regs_res0; int /*<<< orphan*/  pqi_regs_rid0; int /*<<< orphan*/  pqi_dev; int /*<<< orphan*/  event_task; int /*<<< orphan*/  eh; int /*<<< orphan*/  wellness_periodic; int /*<<< orphan*/  pqi_buffer_dmat; int /*<<< orphan*/  map_lock; int /*<<< orphan*/  pqi_parent_dmat; int /*<<< orphan*/  mtx_init; int /*<<< orphan*/  cam_lock; int /*<<< orphan*/  sim_registered; } ;
struct TYPE_6__ {int max_sg_elem; int max_outstanding_io; } ;
struct TYPE_5__ {int /*<<< orphan*/  pqi_bhandle; int /*<<< orphan*/  pqi_btag; } ;
struct pqisrc_softstate {char* pci_mem_base_vaddr; char* os_name; TYPE_3__ os_specific; TYPE_2__ pqi_cap; TYPE_4__* rcb; TYPE_1__ pci_mem_handle; } ;
struct pqi_ident {int hwif; } ;
struct TYPE_8__ {int /*<<< orphan*/  cm_datamap; } ;
typedef  TYPE_4__ rcb_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int BUS_SPACE_MAXSIZE_32BIT ; 
 int BUS_SPACE_UNRESTRICTED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct pqisrc_softstate*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pqisrc_softstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int PAGE_SIZE ; 
 int PCIM_CMD_MEMEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
#define  PQI_HWIF_SRCV 128 
 int PQI_HWIF_UNKNOWN ; 
 int PQI_STATUS_FAILURE ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_DEFAULT ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pqisrc_softstate*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * busdma_lock_mutex ; 
 int FUNC12 (struct pqisrc_softstate*,int) ; 
 struct pqisrc_softstate* FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC15 (struct pqisrc_softstate*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 int /*<<< orphan*/  os_wellness_periodic ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct pqi_ident* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pqisrc_event_worker ; 
 int FUNC21 (struct pqisrc_softstate*) ; 
 int /*<<< orphan*/  FUNC22 (struct pqisrc_softstate*) ; 
 int FUNC23 (struct pqisrc_softstate*) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int FUNC25 (struct pqisrc_softstate*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shutdown_final ; 
 int /*<<< orphan*/  smartpqi_shutdown ; 
 int /*<<< orphan*/  FUNC29 (struct pqisrc_softstate*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,struct pqisrc_softstate*,int) ; 

__attribute__((used)) static int
FUNC31(device_t dev)
{
	struct pqisrc_softstate *softs = NULL;
	struct pqi_ident *id = NULL;
	int error = 0;
	u_int32_t command = 0, i = 0;
	int card_index = FUNC14(dev);
	rcb_t *rcbp = NULL;

	/*
	 * Initialise softc.
	 */
	softs = FUNC13(dev);

	if (!softs) {
		FUNC24("Could not get softc\n");
		error = EINVAL;
		goto out;
	}
	FUNC15(softs, 0, sizeof(*softs));
	softs->os_specific.pqi_dev = dev;

	FUNC1("IN\n");

	/* assume failure is 'not configured' */
	error = ENXIO;

	/* 
	 * Verify that the adapter is correctly set up in PCI space.
	 */
	FUNC18(softs->os_specific.pqi_dev);
	command = FUNC19(softs->os_specific.pqi_dev, PCIR_COMMAND, 2);
	if ((command & PCIM_CMD_MEMEN) == 0) {
		FUNC0("memory window not available command = %d\n", command);
		error = ENXIO;
		goto out;
	}

	/* 
	 * Detect the hardware interface version, set up the bus interface
	 * indirection.
	 */
	id = FUNC20(dev);
	softs->os_specific.pqi_hwif = id->hwif;

	switch(softs->os_specific.pqi_hwif) {
		case PQI_HWIF_SRCV:
			FUNC2("set hardware up for PMC SRCv for %p", softs);
			break;
		default:
			softs->os_specific.pqi_hwif = PQI_HWIF_UNKNOWN;
			FUNC0("unknown hardware type\n");
			error = ENXIO;
			goto out;
	}

	FUNC22(softs);

	/*
	 * Allocate the PCI register window.
	 */
	softs->os_specific.pqi_regs_rid0 = FUNC4(0);
	if ((softs->os_specific.pqi_regs_res0 =
		FUNC6(softs->os_specific.pqi_dev, SYS_RES_MEMORY,
		&softs->os_specific.pqi_regs_rid0, RF_ACTIVE)) == NULL) {
		FUNC0("couldn't allocate register window 0\n");
		/* assume failure is 'out of memory' */
		error = ENOMEM;
		goto out;
	}

	FUNC10(softs->os_specific.pqi_dev, SYS_RES_MEMORY,
		softs->os_specific.pqi_regs_rid0);

	softs->pci_mem_handle.pqi_btag = FUNC27(softs->os_specific.pqi_regs_res0);
	softs->pci_mem_handle.pqi_bhandle = FUNC26(softs->os_specific.pqi_regs_res0);
	/* softs->pci_mem_base_vaddr = (uintptr_t)rman_get_virtual(softs->os_specific.pqi_regs_res0); */
	softs->pci_mem_base_vaddr = (char *)FUNC28(softs->os_specific.pqi_regs_res0);

	/*
	 * Allocate the parent bus DMA tag appropriate for our PCI interface.
	 * 
	 * Note that some of these controllers are 64-bit capable.
	 */
	if (FUNC7(FUNC9(dev), 	/* parent */
				PAGE_SIZE, 0,		/* algnmnt, boundary */
				BUS_SPACE_MAXADDR_32BIT,/* lowaddr */
				BUS_SPACE_MAXADDR, 	/* highaddr */
				NULL, NULL, 		/* filter, filterarg */
				BUS_SPACE_MAXSIZE_32BIT,	/* maxsize */
				BUS_SPACE_UNRESTRICTED,	/* nsegments */
				BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
				0,			/* flags */
				NULL, NULL,		/* No locking needed */
				&softs->os_specific.pqi_parent_dmat)) {
		FUNC0("can't allocate parent DMA tag\n");
		/* assume failure is 'out of memory' */
		error = ENOMEM;
		goto dma_out;
	}

	softs->os_specific.sim_registered = FALSE;
	softs->os_name = "FreeBSD ";
	
	/* Initialize the PQI library */
	error = FUNC21(softs);
	if (error) {
		FUNC0("Failed to initialize pqi lib error = %d\n", error);
		error = PQI_STATUS_FAILURE;
		goto out;
	}

        FUNC16(&softs->os_specific.cam_lock, "cam_lock", NULL, MTX_DEF);
        softs->os_specific.mtx_init = TRUE;
        FUNC16(&softs->os_specific.map_lock, "map_lock", NULL, MTX_DEF);

        /*
         * Create DMA tag for mapping buffers into controller-addressable space.
         */
        if (FUNC7(softs->os_specific.pqi_parent_dmat,/* parent */
				1, 0,			/* algnmnt, boundary */
				BUS_SPACE_MAXADDR_32BIT,/* lowaddr */
				BUS_SPACE_MAXADDR,	/* highaddr */
				NULL, NULL,		/* filter, filterarg */
				softs->pqi_cap.max_sg_elem*PAGE_SIZE,/*maxsize*/
				softs->pqi_cap.max_sg_elem,	/* nsegments */
				BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
				BUS_DMA_ALLOCNOW,		/* flags */
				busdma_lock_mutex,		/* lockfunc */
				&softs->os_specific.map_lock,	/* lockfuncarg*/
				&softs->os_specific.pqi_buffer_dmat)) {
		FUNC0("can't allocate buffer DMA tag for pqi_buffer_dmat\n");
		return (ENOMEM);
        }

	rcbp = &softs->rcb[1];
	for( i = 1;  i <= softs->pqi_cap.max_outstanding_io; i++, rcbp++ ) {
		if ((error = FUNC8(softs->os_specific.pqi_buffer_dmat, 0, &rcbp->cm_datamap)) != 0) {
			FUNC0("Cant create datamap for buf @"
			"rcbp = %p maxio = %d error = %d\n", 
			rcbp, softs->pqi_cap.max_outstanding_io, error);
			goto dma_out;
		}
	}

	FUNC17((void *)softs); /* Start the heart-beat timer */
	softs->os_specific.wellness_periodic = FUNC30( os_wellness_periodic, 
							softs, 120*hz);
	/* Register our shutdown handler. */
	softs->os_specific.eh = FUNC3(shutdown_final, 
				smartpqi_shutdown, softs, SHUTDOWN_PRI_DEFAULT);

	error = FUNC23(softs);
	if (error) {
		FUNC0("Failed to scan lib error = %d\n", error);
		error = PQI_STATUS_FAILURE;
		goto out;
	}

	error = FUNC25(softs, card_index);
	if (error) {
		FUNC0("Failed to register sim index = %d error = %d\n", 
			card_index, error);
		goto out;
	}

	FUNC29(softs);		

	FUNC5(&softs->os_specific.event_task, 0, pqisrc_event_worker,softs);

	error = FUNC12(softs, card_index);
	if (error) {
		FUNC0("Failed to register character device index=%d r=%d\n", 
			card_index, error);
		goto out;
	}
	goto out;

dma_out:
	if (softs->os_specific.pqi_regs_res0 != NULL)
		FUNC11(softs->os_specific.pqi_dev, SYS_RES_MEMORY,
			softs->os_specific.pqi_regs_rid0, 
			softs->os_specific.pqi_regs_res0);
out:
	FUNC1("OUT error = %d\n", error);
	return(error);
}