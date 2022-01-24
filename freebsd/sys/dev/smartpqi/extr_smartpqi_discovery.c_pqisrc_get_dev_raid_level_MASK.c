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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  pqisrc_softstate_t ;
struct TYPE_3__ {scalar_t__ raid_level; int /*<<< orphan*/  scsi3addr; } ;
typedef  TYPE_1__ pqi_scsi_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ SA_RAID_MAX ; 
 scalar_t__ SA_RAID_UNKNOWN ; 
 int SA_VPD_LV_DEVICE_GEOMETRY ; 
 int VPD_PAGE ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__*,int) ; 

__attribute__((used)) static void FUNC5(pqisrc_softstate_t *softs,
	pqi_scsi_dev_t *device)
{
	uint8_t raid_level;
	uint8_t *buff;

	FUNC1("IN\n");

	raid_level = SA_RAID_UNKNOWN;

	buff = FUNC2(softs, 64);
	if (buff) {
		int ret;
		ret = FUNC4(softs, device->scsi3addr,
			VPD_PAGE | SA_VPD_LV_DEVICE_GEOMETRY, buff, 64);
		if (ret == 0) {
			raid_level = buff[8];
			if (raid_level > SA_RAID_MAX)
				raid_level = SA_RAID_UNKNOWN;
		}
		FUNC3(softs, (char*)buff, 64);
	}

	device->raid_level = raid_level;
	FUNC0("RAID LEVEL: %x \n",  raid_level);
	FUNC1("OUT\n");
}