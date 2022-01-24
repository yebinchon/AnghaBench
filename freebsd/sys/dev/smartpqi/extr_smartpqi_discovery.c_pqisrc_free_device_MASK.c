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
struct TYPE_9__ {int /*<<< orphan*/  devlist_lock; } ;
typedef  TYPE_1__ pqisrc_softstate_t ;
struct TYPE_10__ {int /*<<< orphan*/  target; } ;
typedef  TYPE_2__ pqi_scsi_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(pqisrc_softstate_t * softs,pqi_scsi_dev_t *device)
{

		FUNC0(&softs->devlist_lock);
		if (!FUNC4(device)) {
			FUNC3(softs,device->target);
		}
		FUNC2(softs, device);
		FUNC1(&softs->devlist_lock);

}