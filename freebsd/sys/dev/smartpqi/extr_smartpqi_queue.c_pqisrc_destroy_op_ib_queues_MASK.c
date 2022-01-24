#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int num_op_raid_ibq; int /*<<< orphan*/  op_ibq_dma_mem; TYPE_2__* op_aio_ib_q; TYPE_2__* op_raid_ib_q; } ;
typedef  TYPE_1__ pqisrc_softstate_t ;
struct TYPE_7__ {int created; int lockcreated; int /*<<< orphan*/  lock; int /*<<< orphan*/  q_id; } ;
typedef  TYPE_2__ ib_queue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int PQI_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC5(pqisrc_softstate_t *softs)
{
	int ret = PQI_STATUS_SUCCESS;
	ib_queue_t *op_ib_q = NULL;
	int i;

	FUNC1("IN\n");

	for (i = 0; i <  softs->num_op_raid_ibq; i++) {
		/* OP RAID IB Q */
		op_ib_q = &softs->op_raid_ib_q[i];
		if (op_ib_q->created == true) {
			ret = FUNC4(softs, op_ib_q->q_id, true);
			if (ret) {
				FUNC0("Failed to Delete Raid IB Q %d\n",op_ib_q->q_id);
			}  
			op_ib_q->created = false;
		}
        
        if(op_ib_q->lockcreated==true){
		FUNC2(&op_ib_q->lock);
            	op_ib_q->lockcreated = false;
        }
		
		/* OP AIO IB Q */
		op_ib_q = &softs->op_aio_ib_q[i];
		if (op_ib_q->created == true) {
			ret = FUNC4(softs, op_ib_q->q_id, true);
			if (ret) {
				FUNC0("Failed to Delete AIO IB Q %d\n",op_ib_q->q_id);
			}
			op_ib_q->created = false;
		}
        
        if(op_ib_q->lockcreated==true){
		FUNC2(&op_ib_q->lock);
		op_ib_q->lockcreated = false;
        }
	}

	/* Free the memory */
	FUNC3(softs, &softs->op_ibq_dma_mem);
	FUNC1("OUT\n");
}