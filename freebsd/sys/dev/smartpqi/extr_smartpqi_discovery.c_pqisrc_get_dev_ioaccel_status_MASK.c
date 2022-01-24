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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  pqisrc_softstate_t ;
struct TYPE_4__ {int offload_config; int offload_enabled_pending; int /*<<< orphan*/  scsi3addr; } ;
typedef  TYPE_1__ pqi_scsi_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t IOACCEL_STATUS_BYTE ; 
 int OFFLOAD_CONFIGURED_BIT ; 
 int OFFLOAD_ENABLED_BIT ; 
 int PQI_STATUS_SUCCESS ; 
 int SA_VPD_LV_IOACCEL_STATUS ; 
 int VPD_PAGE ; 
 int* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*,int) ; 

__attribute__((used)) static void FUNC7(pqisrc_softstate_t *softs,
	pqi_scsi_dev_t *device)
{
	int ret = PQI_STATUS_SUCCESS;
	uint8_t *buff;
	uint8_t ioaccel_status;

	FUNC2("IN\n");

	buff = FUNC3(softs, 64);
	if (!buff)
		return;

	ret = FUNC6(softs, device->scsi3addr,
					VPD_PAGE | SA_VPD_LV_IOACCEL_STATUS, buff, 64);
	if (ret) {
		FUNC1("error in send scsi inquiry ret=%d\n", ret);
		goto err_out;
	}
	
	ioaccel_status = buff[IOACCEL_STATUS_BYTE];
	device->offload_config =
		!!(ioaccel_status & OFFLOAD_CONFIGURED_BIT);

	if (device->offload_config) {
		device->offload_enabled_pending =
			!!(ioaccel_status & OFFLOAD_ENABLED_BIT);
		if (FUNC5(softs, device))
			device->offload_enabled_pending = false;
	}
	
	FUNC0("offload_config: 0x%x offload_enabled_pending: 0x%x \n", 
			device->offload_config, device->offload_enabled_pending);

err_out:
	FUNC4(softs, (char*)buff, 64);
	FUNC2("OUT\n");
}