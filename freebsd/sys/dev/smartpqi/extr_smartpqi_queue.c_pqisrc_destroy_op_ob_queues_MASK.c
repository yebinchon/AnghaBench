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
struct TYPE_6__ {int num_op_obq; int /*<<< orphan*/  op_obq_dma_mem; TYPE_2__* op_ob_q; } ;
typedef  TYPE_1__ pqisrc_softstate_t ;
struct TYPE_7__ {int created; int /*<<< orphan*/  q_id; } ;
typedef  TYPE_2__ ob_queue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int PQI_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC4(pqisrc_softstate_t *softs)
{
	int ret = PQI_STATUS_SUCCESS;
	int i;

	FUNC1("IN\n");

	for (i = 0; i <  softs->num_op_obq; i++) {
		ob_queue_t *op_ob_q = NULL;
		op_ob_q = &softs->op_ob_q[i];
		if (op_ob_q->created == true) {
			ret = FUNC3(softs, op_ob_q->q_id, false);
			if (ret) {
				FUNC0("Failed to Delete OB Q %d\n",op_ob_q->q_id);
			}
			op_ob_q->created = false;
		}
	}

	/* Free the memory */
	FUNC2(softs, &softs->op_obq_dma_mem);
	FUNC1("OUT\n");
}