#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  devlist_lock; int /*<<< orphan*/ *** device_list; } ;
typedef  TYPE_1__ pqisrc_softstate_t ;
struct TYPE_9__ {size_t target; size_t lun; } ;
typedef  TYPE_2__ pqi_scsi_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(pqisrc_softstate_t *softs,
	pqi_scsi_dev_t *device)
{
	FUNC1("IN\n");

	if (!device) {
		FUNC0("softs = %p: device is NULL !!!\n", softs);
		return;
	}

	FUNC2(&softs->devlist_lock);
	softs->device_list[device->target][device->lun] = NULL;
	FUNC3(&softs->devlist_lock);
	FUNC4(softs, device);

	FUNC1("OUT\n");
}