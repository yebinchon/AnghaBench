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
struct TYPE_2__ {int /*<<< orphan*/  pqi_state; } ;
struct pqisrc_softstate {TYPE_1__ os_specific; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct pqisrc_softstate*) ; 
 int /*<<< orphan*/  SMART_STATE_SUSPEND ; 
 struct pqisrc_softstate* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct pqisrc_softstate *softs;
	softs = FUNC2(dev);
	FUNC0("IN\n");

	FUNC1("Suspending the device %p\n", softs);
	softs->os_specific.pqi_state |= SMART_STATE_SUSPEND;

	FUNC0("OUT\n");
	return(0);
}