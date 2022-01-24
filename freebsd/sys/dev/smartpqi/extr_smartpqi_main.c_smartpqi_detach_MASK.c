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
struct TYPE_2__ {int /*<<< orphan*/  heartbeat_timeout_id; int /*<<< orphan*/  wellness_periodic; int /*<<< orphan*/  eh; } ;
struct pqisrc_softstate {TYPE_1__ os_specific; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pqisrc_softstate*) ; 
 int /*<<< orphan*/  FUNC3 (struct pqisrc_softstate*) ; 
 struct pqisrc_softstate* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  os_start_heartbeat_timer ; 
 int /*<<< orphan*/  os_wellness_periodic ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pqisrc_softstate*) ; 
 int /*<<< orphan*/  shutdown_final ; 
 int /*<<< orphan*/  FUNC7 (struct pqisrc_softstate*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct pqisrc_softstate*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct pqisrc_softstate *softs = NULL;
	softs = FUNC4(dev);
	FUNC0("IN\n");

	FUNC1(shutdown_final, softs->os_specific.eh);

	/* kill the periodic event */
	FUNC8(os_wellness_periodic, softs, 
			softs->os_specific.wellness_periodic);
	/* Kill the heart beat event */
	FUNC8(os_start_heartbeat_timer, softs, 
			softs->os_specific.heartbeat_timeout_id);

	FUNC7(softs);
	FUNC3(softs);
	FUNC6(softs);
	FUNC2(softs);
	FUNC5(dev);
	
	FUNC0("OUT\n");
	return 0;
}