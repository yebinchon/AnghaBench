#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_21__ {int req_pending; int /*<<< orphan*/ * cdbp; int /*<<< orphan*/  ioaccel_handle; TYPE_3__* dvp; } ;
typedef  TYPE_1__ rcb_t ;
struct TYPE_22__ {int num_op_aio_ibq; int num_op_raid_ibq; TYPE_4__* op_raid_ib_q; TYPE_4__* op_aio_ib_q; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;
typedef  int /*<<< orphan*/  pqisrc_raid_req_t ;
struct TYPE_23__ {scalar_t__ offload_enabled; int /*<<< orphan*/  ioaccel_handle; } ;
typedef  TYPE_3__ pqi_scsi_dev_t ;
typedef  int /*<<< orphan*/  pqi_aio_req_t ;
struct TYPE_24__ {int pi_local; int* ci_virt_addr; int num_elem; char* array_virt_addr; int elem_size; int /*<<< orphan*/  lock; int /*<<< orphan*/  pi_register_offset; int /*<<< orphan*/  pi_register_abs; } ;
typedef  TYPE_4__ ib_queue_t ;
typedef  scalar_t__ IO_PATH_T ;

/* Variables and functions */
 scalar_t__ AIO_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int PQI_STATUS_FAILURE ; 
 int PQI_STATUS_QFULL ; 
 int PQI_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ RAID_PATH ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int,int,int) ; 
 int FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_2__*,TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC16(pqisrc_softstate_t *softs,rcb_t *rcb)
{
	ib_queue_t *ib_q_array = softs->op_aio_ib_q;
	ib_queue_t *ib_q = NULL;
	char *ib_iu = NULL;	
	IO_PATH_T io_path = AIO_PATH;
	uint32_t TraverseCount = 0; 
	int first_qindex = FUNC6(softs, rcb); 
	int qindex = first_qindex;
	uint32_t num_op_ib_q = softs->num_op_aio_ibq;
	uint32_t num_elem_needed;
	uint32_t num_elem_alloted = 0;
	pqi_scsi_dev_t *devp = rcb->dvp;
	uint8_t raidbypass_cdb[16];
	
	FUNC0(" IN ");


	rcb->cdbp = FUNC5(rcb);
	
	if(FUNC4(devp)) {
		/**  IO for Physical Drive  **/
		/** Send in AIO PATH**/
		rcb->ioaccel_handle = devp->ioaccel_handle;
	} else {
		int ret = PQI_STATUS_FAILURE;
		/** IO for RAID Volume **/
		if (devp->offload_enabled) {
			/** ByPass IO ,Send in AIO PATH **/
			ret = FUNC15(softs, 
				devp, rcb, raidbypass_cdb);
		}
		
		if (PQI_STATUS_FAILURE == ret) {
			/** Send in RAID PATH **/
			io_path = RAID_PATH;
			num_op_ib_q = softs->num_op_raid_ibq;
			ib_q_array = softs->op_raid_ib_q;
		} else {
			rcb->cdbp = raidbypass_cdb;
		}
	}
	
	num_elem_needed = FUNC14(softs, FUNC7(rcb));
	FUNC2("num_elem_needed :%d",num_elem_needed);
	
	do {
		uint32_t num_elem_available;
		ib_q = (ib_q_array + qindex);
		FUNC9(&ib_q->lock);	
		num_elem_available = FUNC13(ib_q->pi_local,
					*(ib_q->ci_virt_addr), ib_q->num_elem);
		
		FUNC2("num_elem_avialable :%d\n",num_elem_available);
		if(num_elem_available >= num_elem_needed) {
			num_elem_alloted = num_elem_needed;
			break;
		}
		FUNC2("Current queue is busy! Hop to next queue\n");

		FUNC10(&ib_q->lock);	
		qindex = (qindex + 1) % num_op_ib_q;
		if(qindex == first_qindex) {
			if (num_elem_needed == 1)
				break;
			TraverseCount += 1;
			num_elem_needed = 1;
		}
	}while(TraverseCount < 2);
	
	FUNC2("num_elem_alloted :%d",num_elem_alloted);
	if (num_elem_alloted == 0) {
		FUNC3("OUT: IB Queues were full\n");
		return PQI_STATUS_QFULL;
	}	
	
	/* Get IB Queue Slot address to build IU */
	ib_iu = ib_q->array_virt_addr + (ib_q->pi_local * ib_q->elem_size);
	
	if(io_path == AIO_PATH) {
		/** Build AIO structure **/
 		FUNC11(softs, rcb, (pqi_aio_req_t*)ib_iu,
 			num_elem_alloted);
	} else {
		/** Build RAID structure **/
		FUNC12(softs, rcb, (pqisrc_raid_req_t*)ib_iu,
			num_elem_alloted);
	}
	
	rcb->req_pending = true;
	
	/* Update the local PI */
	ib_q->pi_local = (ib_q->pi_local + num_elem_alloted) % ib_q->num_elem;

	FUNC1("ib_q->pi_local : %x\n", ib_q->pi_local);
	FUNC1("*ib_q->ci_virt_addr: %x\n",*(ib_q->ci_virt_addr));

	/* Inform the fw about the new IU */
	FUNC8(softs, ib_q->pi_register_abs, ib_q->pi_register_offset, ib_q->pi_local);
	
	FUNC10(&ib_q->lock);	
	FUNC0(" OUT ");
	return PQI_STATUS_SUCCESS;
}