#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  ioaccel_handle; } ;
typedef  TYPE_1__ raidmap_data_t ;
struct TYPE_12__ {TYPE_4__*** device_list; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;
struct TYPE_13__ {int /*<<< orphan*/  row_cnt; int /*<<< orphan*/  metadata_disks_per_row; int /*<<< orphan*/  data_disks_per_row; int /*<<< orphan*/  layout_map_count; TYPE_1__* dev_data; } ;
typedef  TYPE_3__ pqisrc_raid_map_t ;
struct TYPE_14__ {scalar_t__ devtype; unsigned int queue_depth; int offload_enabled; int offload_enabled_pending; TYPE_3__* raid_map; int /*<<< orphan*/ * scsi3addr; } ;
typedef  TYPE_4__ pqi_scsi_dev_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long) ; 
 scalar_t__ DISK_DEVICE ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int PQI_LOGICAL_DISK_DEFAULT_MAX_QUEUE_DEPTH ; 
 unsigned int PQI_MAX_DEVICES ; 
 unsigned int PQI_MAX_MULTILUN ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 
 TYPE_4__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC8(pqisrc_softstate_t *softs)
{
	unsigned i;
	unsigned phys_dev_num;
	unsigned num_raidmap_entries;
	unsigned queue_depth;
	pqisrc_raid_map_t *raid_map;
	pqi_scsi_dev_t *device;
	raidmap_data_t *dev_data;
	pqi_scsi_dev_t *phys_disk;
	unsigned j;
	unsigned k;

	FUNC1("IN\n");

	for(i = 0; i < PQI_MAX_DEVICES; i++) {
		for(j = 0; j < PQI_MAX_MULTILUN; j++) {
			if(softs->device_list[i][j] == NULL)
				continue;
			device = softs->device_list[i][j];
			if (device->devtype != DISK_DEVICE)
				continue;
			if (!FUNC7(device))
				continue;
			if (FUNC6(device))
				continue;
			device->queue_depth = PQI_LOGICAL_DISK_DEFAULT_MAX_QUEUE_DEPTH;
			raid_map = device->raid_map;
			if (!raid_map)
				return;
			dev_data = raid_map->dev_data;
			phys_dev_num = FUNC3(raid_map->layout_map_count) *
					(FUNC3(raid_map->data_disks_per_row) +
					FUNC3(raid_map->metadata_disks_per_row));
			num_raidmap_entries = phys_dev_num *
						FUNC3(raid_map->row_cnt);

			queue_depth = 0;
			for (k = 0; k < num_raidmap_entries; k++) {
				phys_disk = FUNC5(softs,
						dev_data[k].ioaccel_handle);

				if (!phys_disk) {
					FUNC2(
					"Failed to find physical disk handle for logical drive %016llx\n",
						(unsigned long long)FUNC0(device->scsi3addr[0]));
					device->offload_enabled = false;
					device->offload_enabled_pending = false;
					if (raid_map)
						FUNC4(softs, (char *)raid_map, sizeof(*raid_map));
					device->raid_map = NULL;
					return;
				}

				queue_depth += phys_disk->queue_depth;
			}

			device->queue_depth = queue_depth;
		} /* end inner loop */
	}/* end outer loop */
	FUNC1("OUT\n");
}