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
struct TYPE_6__ {int created; int /*<<< orphan*/  q_id; } ;
struct TYPE_7__ {int /*<<< orphan*/  event_q_dma_mem; TYPE_1__ event_q; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int PQI_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void FUNC4(pqisrc_softstate_t *softs)
{
	FUNC1("IN\n");

	if (softs->event_q.created == true) {
		int ret = PQI_STATUS_SUCCESS;
		ret = FUNC3(softs, softs->event_q.q_id, false);
		if (ret) {
			FUNC0("Failed to Delete Event Q %d\n", softs->event_q.q_id);
		}
		softs->event_q.created = false;
	}
	
	/* Free the memory */
	FUNC2(softs, &softs->event_q_dma_mem);

	FUNC1("OUT\n");
}