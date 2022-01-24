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
typedef  void* uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  pqi_dev; } ;
struct pqisrc_softstate {void* func_id; void* device_id; void* bus_id; TYPE_1__ os_specific; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct pqisrc_softstate *softs)
{
	device_t dev = softs->os_specific.pqi_dev;

	softs->bus_id = (uint32_t)FUNC0(dev);
	softs->device_id = (uint32_t)FUNC1(dev);
	softs->func_id = (uint32_t)FUNC2(dev);	
}