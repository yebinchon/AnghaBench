#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_10__ {scalar_t__ prev_heartbeat_count; scalar_t__ prev_num_intrs; scalar_t__ num_heartbeats_requested; TYPE_1__* pending_events; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;
struct TYPE_9__ {int pending; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*,scalar_t__) ; 
 size_t PQI_EVENT_HEARTBEAT ; 
 scalar_t__ PQI_MAX_HEARTBEAT_REQUESTS ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

void FUNC9(pqisrc_softstate_t *softs)
{
	uint64_t num_intrs;
	uint8_t take_offline = false;

	FUNC2("IN\n");

	num_intrs = FUNC4(softs, num_intrs);

	if (FUNC5(softs)) {
		if (FUNC0(softs) == softs->prev_heartbeat_count) {
			take_offline = true;
			goto take_ctrl_offline;
		}
		softs->prev_heartbeat_count = FUNC0(softs);
		FUNC3("CTRLR_HEARTBEAT_CNT(softs)  = %lx \
		softs->prev_heartbeat_count = %lx\n",
		FUNC0(softs), softs->prev_heartbeat_count);
	} else {
		if (num_intrs == softs->prev_num_intrs) {
			softs->num_heartbeats_requested++;
			if (softs->num_heartbeats_requested > PQI_MAX_HEARTBEAT_REQUESTS) {
				take_offline = true;
				goto take_ctrl_offline;
			}
			softs->pending_events[PQI_EVENT_HEARTBEAT].pending = true;

			FUNC7((void*)softs);

		} else {
			softs->num_heartbeats_requested = 0;
		}
		softs->prev_num_intrs = num_intrs;
	}

take_ctrl_offline:
	if (take_offline){
		FUNC1("controller is offline\n");
		FUNC8(softs);
		FUNC6(softs);
	}
	FUNC2("OUT\n");
}