#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_21__ {int* lunid; scalar_t__ device_type; scalar_t__ ioaccel_handle; int device_flags; int /*<<< orphan*/  wwid; } ;
typedef  TYPE_2__ reportlun_ext_entry_t ;
struct TYPE_20__ {int /*<<< orphan*/  list_length; } ;
struct TYPE_22__ {TYPE_2__* lun_entries; TYPE_1__ header; } ;
typedef  TYPE_3__ reportlun_data_ext_t ;
struct TYPE_23__ {void** target_sas_addr; } ;
typedef  TYPE_4__ pqisrc_softstate_t ;
typedef  int /*<<< orphan*/  pqisrc_raid_map_t ;
struct TYPE_24__ {int is_physical_device; int expose_device; int aio_enabled; int devtype; scalar_t__ ioaccel_handle; scalar_t__ raid_map; void* sas_address; int /*<<< orphan*/  is_obdr_device; int /*<<< orphan*/ * scsi3addr; int /*<<< orphan*/  is_external_raid_device; int /*<<< orphan*/  wwid; } ;
typedef  TYPE_5__ pqi_scsi_dev_t ;
typedef  int boolean_t ;
typedef  int /*<<< orphan*/  bmic_ident_physdev_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
#define  CONTROLLER_DEVICE 136 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long long) ; 
#define  DISK_DEVICE 135 
#define  ENCLOSURE_DEVICE 134 
 scalar_t__ FUNC6 (int*) ; 
#define  MEDIUM_CHANGER_DEVICE 133 
 int PQI_STATUS_FAILURE ; 
#define  RAID_DEVICE 132 
 int REPORT_LUN_DEV_FLAG_AIO_ENABLED ; 
#define  ROM_DEVICE 131 
#define  SES_DEVICE 130 
#define  TAPE_DEVICE 129 
#define  ZBC_DEVICE 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC9 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int FUNC12 (TYPE_4__*,TYPE_5__*) ; 
 int FUNC13 (TYPE_4__*,TYPE_3__**,TYPE_3__**,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int*) ; 
 int /*<<< orphan*/  FUNC16 (int*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,TYPE_5__**,int) ; 

int FUNC18(pqisrc_softstate_t *softs)
{
	boolean_t is_physical_device;
	int ret = PQI_STATUS_FAILURE;
	int i;
	int new_dev_cnt;
	int phy_log_dev_cnt;
	uint8_t *scsi3addr;
	uint32_t physical_cnt;
	uint32_t logical_cnt;
	uint32_t ndev_allocated = 0;
	size_t phys_data_length, log_data_length;
	reportlun_data_ext_t *physical_dev_list = NULL;
	reportlun_data_ext_t *logical_dev_list = NULL;
	reportlun_ext_entry_t *lun_ext_entry = NULL;
	bmic_ident_physdev_t *bmic_phy_info = NULL;
	pqi_scsi_dev_t **new_device_list = NULL;
	pqi_scsi_dev_t *device = NULL;
	

	FUNC4("IN\n");

	ret = FUNC13(softs, &physical_dev_list, &logical_dev_list,
				      &phys_data_length, &log_data_length);

	if (ret)
		goto err_out;

	physical_cnt = FUNC0(physical_dev_list->header.list_length) 
		/ sizeof(physical_dev_list->lun_entries[0]);
	
	logical_cnt = FUNC0(logical_dev_list->header.list_length)
		/ sizeof(logical_dev_list->lun_entries[0]);

	FUNC2("physical_cnt %d logical_cnt %d\n", physical_cnt, logical_cnt);

	if (physical_cnt) {
		bmic_phy_info = FUNC9(softs, sizeof(*bmic_phy_info));
		if (bmic_phy_info == NULL) {
			ret = PQI_STATUS_FAILURE;
			FUNC3("failed to allocate memory for BMIC ID PHYS Device : %d\n", ret);
			goto err_out;
		}
	}
	phy_log_dev_cnt = physical_cnt + logical_cnt;
	new_device_list = FUNC9(softs,
				sizeof(*new_device_list) * phy_log_dev_cnt);

	if (new_device_list == NULL) {
		ret = PQI_STATUS_FAILURE;
		FUNC3("failed to allocate memory for device list : %d\n", ret);
		goto err_out;
	}

	for (i = 0; i < phy_log_dev_cnt; i++) {
		new_device_list[i] = FUNC9(softs,
						sizeof(*new_device_list[i]));
		if (new_device_list[i] == NULL) {
			ret = PQI_STATUS_FAILURE;
			FUNC3("failed to allocate memory for device list : %d\n", ret);
			ndev_allocated = i;
			goto err_out;
		}
	}

	ndev_allocated = phy_log_dev_cnt;
	new_dev_cnt = 0;
	for (i = 0; i < phy_log_dev_cnt; i++) {

		if (i < physical_cnt) {
			is_physical_device = true;
			lun_ext_entry = &physical_dev_list->lun_entries[i];
		} else {
			is_physical_device = false;
			lun_ext_entry =
				&logical_dev_list->lun_entries[i - physical_cnt];
		}

		scsi3addr = lun_ext_entry->lunid;
		/* Save the target sas adderess for external raid device */
		if(lun_ext_entry->device_type == CONTROLLER_DEVICE) {
			int target = lun_ext_entry->lunid[3] & 0x3f;
			softs->target_sas_addr[target] = FUNC1(lun_ext_entry->wwid);
		}

		/* Skip masked physical non-disk devices. */
		if (FUNC6(scsi3addr) && is_physical_device
				&& (lun_ext_entry->ioaccel_handle == 0))
			continue;

		device = new_device_list[new_dev_cnt];
		FUNC8(device, 0, sizeof(*device));
		FUNC7(device->scsi3addr, scsi3addr, sizeof(device->scsi3addr));
		device->wwid = lun_ext_entry->wwid;
		device->is_physical_device = is_physical_device;
		if (!is_physical_device)
			device->is_external_raid_device =
				FUNC15(scsi3addr);
		

		/* Get device type, vendor, model, device ID. */
		ret = FUNC12(softs, device);
		if (ret) {
			FUNC5("Inquiry failed, skipping device %016llx\n",
				 (unsigned long long)FUNC1(device->scsi3addr[0]));
			FUNC2("INQUIRY FAILED \n");
			continue;
		}
		FUNC11(device);

		/*
		 * Expose all devices except for physical devices that
		 * are masked.
		 */
		if (device->is_physical_device &&
			FUNC6(scsi3addr))
			device->expose_device = false;
		else
			device->expose_device = true;

		if (device->is_physical_device &&
		    (lun_ext_entry->device_flags &
		     REPORT_LUN_DEV_FLAG_AIO_ENABLED) &&
		     lun_ext_entry->ioaccel_handle) {
			device->aio_enabled = true;
		}
		switch (device->devtype) {
		case ROM_DEVICE:
			/*
			 * We don't *really* support actual CD-ROM devices,
			 * but we do support the HP "One Button Disaster
			 * Recovery" tape drive which temporarily pretends to
			 * be a CD-ROM drive.
			 */
			if (device->is_obdr_device)
				new_dev_cnt++;
			break;
		case DISK_DEVICE:
		case ZBC_DEVICE:
			if (device->is_physical_device) {
				device->ioaccel_handle =
					lun_ext_entry->ioaccel_handle;
				device->sas_address = FUNC1(lun_ext_entry->wwid);
				FUNC14(softs, device,
					bmic_phy_info);
			}
			new_dev_cnt++;
			break;
		case ENCLOSURE_DEVICE:
			if (device->is_physical_device) {
				device->sas_address = FUNC1(lun_ext_entry->wwid);
			}
			new_dev_cnt++;
			break;	
		case TAPE_DEVICE:
		case MEDIUM_CHANGER_DEVICE:
			new_dev_cnt++;
			break;
		case RAID_DEVICE:
			/*
			 * Only present the HBA controller itself as a RAID
			 * controller.  If it's a RAID controller other than
			 * the HBA itself (an external RAID controller, MSA500
			 * or similar), don't present it.
			 */
			if (FUNC16(scsi3addr))
				new_dev_cnt++;
			break;
		case SES_DEVICE:
		case CONTROLLER_DEVICE:
			break;
		}
	}
	FUNC2("new_dev_cnt %d\n", new_dev_cnt);

	FUNC17(softs, new_device_list, new_dev_cnt);
	
err_out:
	if (new_device_list) {
		for (i = 0; i < ndev_allocated; i++) {
			if (new_device_list[i]) {
				if(new_device_list[i]->raid_map)
					FUNC10(softs, (char *)new_device_list[i]->raid_map,
					    					sizeof(pqisrc_raid_map_t));
				FUNC10(softs, (char*)new_device_list[i],
					    			sizeof(*new_device_list[i]));
			}
		}
		FUNC10(softs, (char *)new_device_list,
			    		sizeof(*new_device_list) * ndev_allocated); 
	}
	if(physical_dev_list)
		FUNC10(softs, (char *)physical_dev_list, phys_data_length);
    	if(logical_dev_list)
		FUNC10(softs, (char *)logical_dev_list, log_data_length);
	if (bmic_phy_info)
		FUNC10(softs, (char *)bmic_phy_info, sizeof(*bmic_phy_info));
	
	FUNC4("OUT \n");

	return ret;
}