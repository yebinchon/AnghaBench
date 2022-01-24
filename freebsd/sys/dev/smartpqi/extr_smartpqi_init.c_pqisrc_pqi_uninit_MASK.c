#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int lockcreated; int /*<<< orphan*/  lock; } ;
struct TYPE_17__ {int devlist_lockcreated; int num_op_raid_ibq; int /*<<< orphan*/  admin_queue_dma_mem; TYPE_3__ admin_ib_queue; int /*<<< orphan*/  taglist; scalar_t__ max_outstanding_io; int /*<<< orphan*/  event_q_dma_mem; int /*<<< orphan*/  op_obq_dma_mem; int /*<<< orphan*/  op_ibq_dma_mem; TYPE_2__* op_aio_ib_q; TYPE_1__* op_raid_ib_q; int /*<<< orphan*/  devlist_lock; } ;
typedef  TYPE_4__ pqisrc_softstate_t ;
struct TYPE_15__ {int lockcreated; int /*<<< orphan*/  lock; } ;
struct TYPE_14__ {int lockcreated; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int PQI_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,scalar_t__) ; 
 int FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 

void FUNC12(pqisrc_softstate_t *softs)
{
	int i, ret;

	FUNC1("IN\n");
	
	/* Wait for any rescan to finish */
	FUNC11(softs);

	/* Wait for commands to complete */
	ret = FUNC10(softs);
	
	/* Complete all pending commands. */
	if(ret != PQI_STATUS_SUCCESS) {
		FUNC6(softs);
		FUNC3(softs);
	}

    if(softs->devlist_lockcreated==true){    
        FUNC5(&softs->devlist_lock);
        softs->devlist_lockcreated = false;
    }
    
	for (i = 0; i <  softs->num_op_raid_ibq; i++) {
        /* OP RAID IB Q */
        if(softs->op_raid_ib_q[i].lockcreated==true){
		FUNC2(&softs->op_raid_ib_q[i].lock);
		softs->op_raid_ib_q[i].lockcreated = false;
        }
        
        /* OP AIO IB Q */
        if(softs->op_aio_ib_q[i].lockcreated==true){
		FUNC2(&softs->op_aio_ib_q[i].lock);
		softs->op_aio_ib_q[i].lockcreated = false;
        }
	}

	/* Free Op queues */
	FUNC4(softs, &softs->op_ibq_dma_mem);
	FUNC4(softs, &softs->op_obq_dma_mem);
	FUNC4(softs, &softs->event_q_dma_mem);
	
	/* Free  rcb */
	FUNC9(softs, softs->max_outstanding_io + 1);

	/* Free request id lists */
	FUNC7(softs,&softs->taglist);

	if(softs->admin_ib_queue.lockcreated==true){
		FUNC2(&softs->admin_ib_queue.lock);	
        	softs->admin_ib_queue.lockcreated = false;
	}

	/* Free Admin Queue */
	FUNC4(softs, &softs->admin_queue_dma_mem);

	/* Switch back to SIS mode */
	if (FUNC8(softs)) {
		FUNC0("Failed to switch back the adapter to SIS mode!\n");
	}

	FUNC1("OUT\n");
}