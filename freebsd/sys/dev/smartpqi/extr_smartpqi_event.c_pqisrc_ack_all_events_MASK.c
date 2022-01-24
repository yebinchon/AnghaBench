#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pqi_event {int pending; } ;
struct TYPE_4__ {struct pqi_event* pending_events; } ;
typedef  TYPE_1__ pqisrc_softstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int PQI_NUM_SUPPORTED_EVENTS ; 
 scalar_t__ PQI_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct pqi_event*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

void
FUNC4(void *arg1)
{
	int i;
	struct pqi_event *pending_event;
	pqisrc_softstate_t *softs = (pqisrc_softstate_t*)arg1;
		
	FUNC1(" IN\n");


	pending_event = &softs->pending_events[0];
	for (i=0; i < PQI_NUM_SUPPORTED_EVENTS; i++) {
		if (pending_event->pending == true) {
			pending_event->pending = false;
			FUNC2(softs, pending_event);
		}
		pending_event++;
	}
	
	/* Rescan devices except for heartbeat event */
	if ((FUNC3(softs)) != PQI_STATUS_SUCCESS) {
			FUNC0(" Failed to Re-Scan devices\n ");
	}
	FUNC1(" OUT\n");
	
}