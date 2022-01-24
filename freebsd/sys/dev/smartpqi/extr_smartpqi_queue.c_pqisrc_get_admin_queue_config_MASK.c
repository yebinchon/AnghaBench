#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_9__ {int num_elem; int elem_size; } ;
struct TYPE_8__ {int num_elem; int elem_size; } ;
struct TYPE_10__ {TYPE_3__ admin_ib_queue; TYPE_2__ admin_ob_queue; TYPE_1__* pqi_reg; } ;
typedef  TYPE_4__ pqisrc_softstate_t ;
struct TYPE_7__ {int /*<<< orphan*/  pqi_dev_adminq_cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PQI_ADMINQ_CAP ; 

void FUNC3(pqisrc_softstate_t *softs)
{
	uint64_t val = 0;


	val = FUNC1(FUNC2(softs, &softs->pqi_reg->pqi_dev_adminq_cap, PQI_ADMINQ_CAP));

	/* pqi_cap = (struct pqi_dev_adminq_cap *)&val;*/
	softs->admin_ib_queue.num_elem  =  val & 0xFF;
	softs->admin_ob_queue.num_elem  = (val & 0xFF00) >> 8;
	/* Note : size in unit of 16 byte s*/
	softs->admin_ib_queue.elem_size = ((val & 0xFF0000) >> 16) * 16;
	softs->admin_ob_queue.elem_size = ((val & 0xFF000000) >> 24) * 16;
	
	FUNC0(" softs->admin_ib_queue.num_elem : %d\n",
			softs->admin_ib_queue.num_elem);
	FUNC0(" softs->admin_ib_queue.elem_size : %d\n",
			softs->admin_ib_queue.elem_size);
}