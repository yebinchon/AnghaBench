#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_11__ {int q_id; int num_elem; int elem_size; int pi_dma_addr; int* pi_virt_addr; int created; scalar_t__ intr_msg_num; } ;
struct TYPE_12__ {char* tag; int size; char* virt_addr; int dma_addr; int /*<<< orphan*/  align; } ;
struct TYPE_10__ {TYPE_2__ event_q; TYPE_8__ event_q_dma_mem; int /*<<< orphan*/  num_elem_per_op_obq; } ;
typedef  TYPE_1__ pqisrc_softstate_t ;
typedef  TYPE_2__ ob_queue_t ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int PQISRC_EVENT_Q_ELEM_SIZE ; 
 int PQISRC_NUM_EVENT_Q_ELEM ; 
 int PQI_ADDR_ALIGN_MASK_4 ; 
 int PQI_ADDR_ALIGN_MASK_64 ; 
 int /*<<< orphan*/  PQI_OPQ_ELEM_ARRAY_ALIGN ; 
 int PQI_OP_EVENT_QUEUE_ID ; 
 int PQI_STATUS_FAILURE ; 
 int PQI_STATUS_SUCCESS ; 
 int FUNC5 (TYPE_1__*,TYPE_8__*) ; 
 int FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

int FUNC8(pqisrc_softstate_t *softs)
{
	int ret = PQI_STATUS_SUCCESS;
	uint32_t alloc_size = 0;
	uint32_t num_elem;
	char *virt_addr = NULL;
	dma_addr_t dma_addr = 0;
	uint32_t event_q_pi_dma_start_offset = 0;
	uint32_t event_q_pi_virt_start_offset = 0;
	char *event_q_pi_virt_start_addr = NULL;
	ob_queue_t *event_q = NULL;
	

	FUNC2("IN\n");

	/* 
	 * Calculate memory requirements. 
	 * If event queue is shared for IO response, number of 
	 * elements in event queue depends on num elements in OP OB Q 
	 * also. Since event queue element size (32) is more than IO 
	 * response size , event queue element size need not be checked
	 * for queue size calculation.
	 */
#ifdef SHARE_EVENT_QUEUE_FOR_IO 
	num_elem = MIN(softs->num_elem_per_op_obq, PQISRC_NUM_EVENT_Q_ELEM);
#else
	num_elem = PQISRC_NUM_EVENT_Q_ELEM;
#endif

	alloc_size = num_elem *  PQISRC_EVENT_Q_ELEM_SIZE;
	event_q_pi_dma_start_offset = alloc_size;
	event_q_pi_virt_start_offset = alloc_size;
	alloc_size += sizeof(uint32_t); /*For IBQ CI*/

	/* Allocate memory for event queues */
	softs->event_q_dma_mem.tag = "event_queue";
	softs->event_q_dma_mem.size = alloc_size;
	softs->event_q_dma_mem.align = PQI_OPQ_ELEM_ARRAY_ALIGN;
	ret = FUNC5(softs, &softs->event_q_dma_mem);
	if (ret) {
		FUNC1("Failed to Allocate Event Q ret : %d\n"
				, ret);
		goto err_out;
	}

	/* Set up the address */
	virt_addr = softs->event_q_dma_mem.virt_addr;
	dma_addr = softs->event_q_dma_mem.dma_addr;
	event_q_pi_dma_start_offset += dma_addr;
	event_q_pi_virt_start_addr = virt_addr + event_q_pi_virt_start_offset;
	
	event_q = &softs->event_q;
	FUNC0(!(dma_addr & PQI_ADDR_ALIGN_MASK_64));
	FUNC3(event_q,virt_addr,dma_addr);
	event_q->q_id = PQI_OP_EVENT_QUEUE_ID;
	event_q->num_elem = num_elem;
	event_q->elem_size = PQISRC_EVENT_Q_ELEM_SIZE;
	event_q->pi_dma_addr = event_q_pi_dma_start_offset;
	event_q->pi_virt_addr = (uint32_t *)event_q_pi_virt_start_addr;
	event_q->intr_msg_num = 0; /* vector zero for event */
	FUNC0(!(event_q->pi_dma_addr & PQI_ADDR_ALIGN_MASK_4));

	ret = FUNC6(softs,event_q);
	if (ret) {
		FUNC1("Failed to Create EventQ %d\n",event_q->q_id);
		goto err_out_create;
	}
	event_q->created  = true;

	FUNC2("OUT\n");
	return ret;
 
err_out_create:
	FUNC7(softs);
err_out:
	FUNC2("OUT failed %d\n", ret);
	return PQI_STATUS_FAILURE;
}