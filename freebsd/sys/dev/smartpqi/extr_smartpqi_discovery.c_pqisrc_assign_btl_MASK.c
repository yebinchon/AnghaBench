#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_6__ {int target_lun_valid; int /*<<< orphan*/ * scsi3addr; } ;
typedef  TYPE_1__ pqi_scsi_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int PQI_CTLR_INDEX ; 
 int PQI_EXTERNAL_RAID_VOLUME_BUS ; 
 int PQI_HBA_BUS ; 
 int PQI_RAID_VOLUME_BUS ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int,int) ; 

__attribute__((used)) static void FUNC7(pqi_scsi_dev_t *device)
{
	uint8_t *scsi3addr;
	uint32_t lunid;
	uint32_t bus;
	uint32_t target;
	uint32_t lun;
	FUNC1("IN\n");

	scsi3addr = device->scsi3addr;
	lunid = FUNC2(scsi3addr);

	if (FUNC4(scsi3addr)) {
		/* The specified device is the controller. */
		FUNC6(device, PQI_HBA_BUS, PQI_CTLR_INDEX, lunid & 0x3fff);
		device->target_lun_valid = true;
		return;
	}

	if (FUNC5(device)) {
		if (FUNC3(device)) {
			FUNC0("External Raid Device!!!");
			bus = PQI_EXTERNAL_RAID_VOLUME_BUS;
			target = (lunid >> 16) & 0x3fff;
			lun = lunid & 0xff;
		} else {
			bus = PQI_RAID_VOLUME_BUS;
			lun = 0;
			target = lunid & 0x3fff;
		}
		FUNC6(device, bus, target, lun);
		device->target_lun_valid = true;
		return;
	}

	FUNC1("OUT\n");
}