#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct cam_devq {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int /*<<< orphan*/ * psim; int /*<<< orphan*/ * irq; scalar_t__ ih; scalar_t__ buffer_dmat; scalar_t__ sense_dmat; int /*<<< orphan*/  sense_dmamap; scalar_t__ sense_buffers; scalar_t__ srb_dmat; int /*<<< orphan*/  srb_dmamap; scalar_t__ pFreeSRB; scalar_t__ sg_dmat; int /*<<< orphan*/ * iores; int /*<<< orphan*/  ppath; } ;
typedef  TYPE_1__* PACB ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int ENXIO ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  INTR_TYPE_CAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  TRM_MAX_START_JOB ; 
 int /*<<< orphan*/  TRM_MAX_TAGS_CMD_QUEUE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct cam_devq* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cam_devq*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int /*<<< orphan*/  trm_Interrupt ; 
 int /*<<< orphan*/  trm_action ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 TYPE_1__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trm_poll ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(device_t dev)
{
	struct	cam_devq *device_Q;
	u_long	device_id;
	PACB	pACB = 0;
	int	rid = 0;
	int unit = FUNC13(dev);
	
	device_id = FUNC14(dev);
	/*
	 * These cards do not allow memory mapped accesses
	 */
	if ((pACB = FUNC17((u_int16_t) unit,
    	    dev)) == NULL) {
		FUNC15("trm%d: trm_init error!\n",unit);
		return (ENXIO);
	}
	/* After setting up the adapter, map our interrupt */
	/*  
	 * Now let the CAM generic SCSI layer find the SCSI devices on the bus
	 * start queue to reset to the idle loop.
	 * Create device queue of SIM(s)
	 * (MAX_START_JOB - 1) : max_sim_transactions
	 */
	pACB->irq = FUNC1(dev, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);
    	if (pACB->irq == NULL ||
	    FUNC6(dev, pACB->irq, 
	    INTR_TYPE_CAM, NULL, trm_Interrupt, pACB, &pACB->ih)) {
		FUNC15("trm%d: register Interrupt handler error!\n", unit);
		goto bad;
	}
	device_Q = FUNC11(TRM_MAX_START_JOB);
	if (device_Q == NULL){ 
		FUNC15("trm%d: device_Q == NULL !\n",unit);
		goto bad;
	}
	/*
	 * Now tell the generic SCSI layer
	 * about our bus.
	 * If this is the xpt layer creating a sim, then it's OK
	 * to wait for an allocation.
	 * XXX Should we pass in a flag to indicate that wait is OK?
	 *
	 *                    SIM allocation
	 *
	 *                 SCSI Interface Modules
	 * The sim driver creates a sim for each controller.  The sim device
	 * queue is separately created in order to allow resource sharing betwee
	 * sims.  For instance, a driver may create one sim for each channel of
	 * a multi-channel controller and use the same queue for each channel.
	 * In this way, the queue resources are shared across all the channels
	 * of the multi-channel controller.
	 * trm_action     : sim_action_func
	 * trm_poll       : sim_poll_func
	 * "trm"        : sim_name ,if sim_name =  "xpt" ..M_DEVBUF,M_WAITOK
	 * pACB         : *softc    if sim_name <> "xpt" ..M_DEVBUF,M_NOWAIT
	 * pACB->unit   : unit
	 * 1            : max_dev_transactions
	 * MAX_TAGS     : max_tagged_dev_transactions
	 *
	 *  *******Construct our first channel SIM entry
	 */
	pACB->psim = FUNC8(trm_action,
	    trm_poll,
	    "trm",
	    pACB,
	    unit,
	    &Giant,
	    1,
	    TRM_MAX_TAGS_CMD_QUEUE,
	    device_Q);
	if (pACB->psim == NULL) {
		FUNC15("trm%d: SIM allocate fault !\n",unit);
		FUNC12(device_Q);  /* SIM allocate fault*/
		goto bad;
	}
	if (FUNC19(pACB->psim, dev, 0) != CAM_SUCCESS)  {
		FUNC15("trm%d: xpt_bus_register fault !\n",unit);
		goto bad;
	}
	if (FUNC20(&pACB->ppath,
	      NULL,
	      FUNC10(pACB->psim),
	      CAM_TARGET_WILDCARD,
	      CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC15("trm%d: xpt_create_path fault !\n",unit);
		FUNC18(FUNC10(pACB->psim));
		goto bad;
	}
	return (0);
bad:
	if (pACB->iores)
		FUNC5(dev, SYS_RES_IOPORT, FUNC0(0),
		    pACB->iores);
	if (pACB->sg_dmat) {		
		FUNC16(pACB);
		FUNC2(pACB->sg_dmat);
	}
	
	if (pACB->pFreeSRB) {
		FUNC3(pACB->srb_dmat, pACB->srb_dmamap);
		FUNC4(pACB->srb_dmat, pACB->pFreeSRB, 
		    pACB->srb_dmamap);
	}
	if (pACB->srb_dmat)
		FUNC2(pACB->srb_dmat);
	if (pACB->sense_buffers) {
	  	  FUNC3(pACB->sense_dmat, pACB->sense_dmamap);
		  FUNC4(pACB->sense_dmat, pACB->sense_buffers,
		      pACB->sense_dmamap);
	}
	if (pACB->sense_dmat)
		FUNC2(pACB->sense_dmat);		
	if (pACB->buffer_dmat)
		FUNC2(pACB->buffer_dmat);
	if (pACB->ih)
		FUNC7(dev, pACB->irq, pACB->ih);
	if (pACB->irq)
		FUNC5(dev, SYS_RES_IRQ, 0, pACB->irq);
	if (pACB->psim)
		FUNC9(pACB->psim, TRUE);
	
	return (ENXIO);
	
}