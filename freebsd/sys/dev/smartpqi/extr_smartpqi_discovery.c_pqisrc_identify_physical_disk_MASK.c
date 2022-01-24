#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  request ;
typedef  int /*<<< orphan*/  pqisrc_softstate_t ;
struct TYPE_6__ {void** cdb; } ;
typedef  TYPE_1__ pqisrc_raid_req_t ;
struct TYPE_7__ {int /*<<< orphan*/  scsi3addr; } ;
typedef  TYPE_2__ pqi_scsi_dev_t ;
typedef  int /*<<< orphan*/  bmic_ident_physdev_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BMIC_IDENTIFY_PHYSICAL_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int PQI_STATUS_SUCCESS ; 
 scalar_t__ RAID_CTLR_LUNID ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(pqisrc_softstate_t *softs,
	pqi_scsi_dev_t *device,
	bmic_ident_physdev_t *buff,
	int buf_len)
{
	int ret = PQI_STATUS_SUCCESS;
	uint16_t bmic_device_index;
	pqisrc_raid_req_t request;


	FUNC1("IN\n");

	FUNC2(&request, 0, sizeof(request));	
	bmic_device_index = FUNC0(device->scsi3addr);
	request.cdb[2] = (uint8_t)bmic_device_index;
	request.cdb[9] = (uint8_t)(bmic_device_index >> 8);

	ret =  FUNC3(softs, &request, buff, buf_len, 
				BMIC_IDENTIFY_PHYSICAL_DEVICE, 0, (uint8_t *)RAID_CTLR_LUNID, NULL);
	FUNC1("OUT\n");
	return ret;
}