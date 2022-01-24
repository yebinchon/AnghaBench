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
typedef  int /*<<< orphan*/  request ;
typedef  int /*<<< orphan*/  pqisrc_softstate_t ;
typedef  int /*<<< orphan*/  pqisrc_raid_req_t ;
typedef  int /*<<< orphan*/  pqisrc_raid_map_t ;
struct TYPE_4__ {int /*<<< orphan*/ * raid_map; int /*<<< orphan*/  scsi3addr; } ;
typedef  TYPE_1__ pqi_scsi_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int PQI_STATUS_FAILURE ; 
 int PQI_STATUS_SUCCESS ; 
 int /*<<< orphan*/  SA_GET_RAID_MAP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(pqisrc_softstate_t *softs,
	pqi_scsi_dev_t *device)
{
	int ret = PQI_STATUS_SUCCESS;
	pqisrc_raid_req_t request;
	pqisrc_raid_map_t *raid_map;

	FUNC1("IN\n");

	raid_map = FUNC3(softs, sizeof(*raid_map));
	if (!raid_map)
		return PQI_STATUS_FAILURE;

	FUNC2(&request, 0, sizeof(request));
	ret =  FUNC5(softs, &request, raid_map, sizeof(*raid_map), 
			 		SA_GET_RAID_MAP, 0, device->scsi3addr, NULL);

	if (ret) {
		FUNC0("error in build send raid req ret=%d\n", ret);
		goto err_out;
	}

	ret = FUNC6(softs, device, raid_map);
	if (ret) {
		FUNC0("error in raid map validation ret=%d\n", ret);
		goto err_out;
	}

	device->raid_map = raid_map;
	FUNC1("OUT\n");
	return 0;

err_out:
	FUNC4(softs, (char*)raid_map, sizeof(*raid_map));
	FUNC1("FAILED \n");
	return ret;
}