#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pqisrc_softstate_t ;
typedef  int /*<<< orphan*/  pqisrc_raid_map_t ;
struct TYPE_3__ {scalar_t__ raid_map; } ;
typedef  TYPE_1__ pqi_scsi_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

void FUNC2(pqisrc_softstate_t *softs, pqi_scsi_dev_t *device)
{
	FUNC0("IN\n");
	if (!device)
		return;
	if (device->raid_map) {
			FUNC1(softs, (char *)device->raid_map, sizeof(pqisrc_raid_map_t));
	}
	FUNC1(softs, (char *)device,sizeof(*device));
	FUNC0("OUT\n");
	
}