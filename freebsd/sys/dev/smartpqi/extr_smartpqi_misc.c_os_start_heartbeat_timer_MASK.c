#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  heartbeat_timeout_id; } ;
struct pqisrc_softstate {TYPE_1__ os_specific; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int OS_FW_HEARTBEAT_TIMER_INTERVAL ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (struct pqisrc_softstate*) ; 
 int /*<<< orphan*/  FUNC2 (struct pqisrc_softstate*) ; 
 int /*<<< orphan*/  FUNC3 (void (*) (void*),struct pqisrc_softstate*,int) ; 

void FUNC4(void *data)
{
	struct pqisrc_softstate *softs = (struct pqisrc_softstate *)data;
	FUNC0("IN\n");

	FUNC2(softs);
	if (!FUNC1(softs)) {
		softs->os_specific.heartbeat_timeout_id =
		FUNC3(os_start_heartbeat_timer, softs,
		OS_FW_HEARTBEAT_TIMER_INTERVAL * hz);
	}

       FUNC0("OUT\n");
}