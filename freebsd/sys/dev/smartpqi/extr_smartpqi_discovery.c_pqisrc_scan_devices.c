
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_21__ {int* lunid; scalar_t__ device_type; scalar_t__ ioaccel_handle; int device_flags; int wwid; } ;
typedef TYPE_2__ reportlun_ext_entry_t ;
struct TYPE_20__ {int list_length; } ;
struct TYPE_22__ {TYPE_2__* lun_entries; TYPE_1__ header; } ;
typedef TYPE_3__ reportlun_data_ext_t ;
struct TYPE_23__ {void** target_sas_addr; } ;
typedef TYPE_4__ pqisrc_softstate_t ;
typedef int pqisrc_raid_map_t ;
struct TYPE_24__ {int is_physical_device; int expose_device; int aio_enabled; int devtype; scalar_t__ ioaccel_handle; scalar_t__ raid_map; void* sas_address; int is_obdr_device; int * scsi3addr; int is_external_raid_device; int wwid; } ;
typedef TYPE_5__ pqi_scsi_dev_t ;
typedef int boolean_t ;
typedef int bmic_ident_physdev_t ;


 int BE_32 (int ) ;
 void* BE_64 (int ) ;

 int DBG_DISC (char*,...) ;
 int DBG_ERR (char*,int) ;
 int DBG_FUNC (char*) ;
 int DBG_WARN (char*,unsigned long long) ;


 scalar_t__ MASKED_DEVICE (int*) ;

 int PQI_STATUS_FAILURE ;

 int REPORT_LUN_DEV_FLAG_AIO_ENABLED ;




 int memcpy (int *,int*,int) ;
 int memset (TYPE_5__*,int ,int) ;
 void* os_mem_alloc (TYPE_4__*,int) ;
 int os_mem_free (TYPE_4__*,char*,int) ;
 int pqisrc_assign_btl (TYPE_5__*) ;
 int pqisrc_get_dev_data (TYPE_4__*,TYPE_5__*) ;
 int pqisrc_get_phys_log_device_list (TYPE_4__*,TYPE_3__**,TYPE_3__**,size_t*,size_t*) ;
 int pqisrc_get_physical_device_info (TYPE_4__*,TYPE_5__*,int *) ;
 int pqisrc_is_external_raid_addr (int*) ;
 int pqisrc_is_hba_lunid (int*) ;
 int pqisrc_update_device_list (TYPE_4__*,TYPE_5__**,int) ;

int pqisrc_scan_devices(pqisrc_softstate_t *softs)
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
 reportlun_data_ext_t *physical_dev_list = ((void*)0);
 reportlun_data_ext_t *logical_dev_list = ((void*)0);
 reportlun_ext_entry_t *lun_ext_entry = ((void*)0);
 bmic_ident_physdev_t *bmic_phy_info = ((void*)0);
 pqi_scsi_dev_t **new_device_list = ((void*)0);
 pqi_scsi_dev_t *device = ((void*)0);


 DBG_FUNC("IN\n");

 ret = pqisrc_get_phys_log_device_list(softs, &physical_dev_list, &logical_dev_list,
          &phys_data_length, &log_data_length);

 if (ret)
  goto err_out;

 physical_cnt = BE_32(physical_dev_list->header.list_length)
  / sizeof(physical_dev_list->lun_entries[0]);

 logical_cnt = BE_32(logical_dev_list->header.list_length)
  / sizeof(logical_dev_list->lun_entries[0]);

 DBG_DISC("physical_cnt %d logical_cnt %d\n", physical_cnt, logical_cnt);

 if (physical_cnt) {
  bmic_phy_info = os_mem_alloc(softs, sizeof(*bmic_phy_info));
  if (bmic_phy_info == ((void*)0)) {
   ret = PQI_STATUS_FAILURE;
   DBG_ERR("failed to allocate memory for BMIC ID PHYS Device : %d\n", ret);
   goto err_out;
  }
 }
 phy_log_dev_cnt = physical_cnt + logical_cnt;
 new_device_list = os_mem_alloc(softs,
    sizeof(*new_device_list) * phy_log_dev_cnt);

 if (new_device_list == ((void*)0)) {
  ret = PQI_STATUS_FAILURE;
  DBG_ERR("failed to allocate memory for device list : %d\n", ret);
  goto err_out;
 }

 for (i = 0; i < phy_log_dev_cnt; i++) {
  new_device_list[i] = os_mem_alloc(softs,
      sizeof(*new_device_list[i]));
  if (new_device_list[i] == ((void*)0)) {
   ret = PQI_STATUS_FAILURE;
   DBG_ERR("failed to allocate memory for device list : %d\n", ret);
   ndev_allocated = i;
   goto err_out;
  }
 }

 ndev_allocated = phy_log_dev_cnt;
 new_dev_cnt = 0;
 for (i = 0; i < phy_log_dev_cnt; i++) {

  if (i < physical_cnt) {
   is_physical_device = 1;
   lun_ext_entry = &physical_dev_list->lun_entries[i];
  } else {
   is_physical_device = 0;
   lun_ext_entry =
    &logical_dev_list->lun_entries[i - physical_cnt];
  }

  scsi3addr = lun_ext_entry->lunid;

  if(lun_ext_entry->device_type == 136) {
   int target = lun_ext_entry->lunid[3] & 0x3f;
   softs->target_sas_addr[target] = BE_64(lun_ext_entry->wwid);
  }


  if (MASKED_DEVICE(scsi3addr) && is_physical_device
    && (lun_ext_entry->ioaccel_handle == 0))
   continue;

  device = new_device_list[new_dev_cnt];
  memset(device, 0, sizeof(*device));
  memcpy(device->scsi3addr, scsi3addr, sizeof(device->scsi3addr));
  device->wwid = lun_ext_entry->wwid;
  device->is_physical_device = is_physical_device;
  if (!is_physical_device)
   device->is_external_raid_device =
    pqisrc_is_external_raid_addr(scsi3addr);



  ret = pqisrc_get_dev_data(softs, device);
  if (ret) {
   DBG_WARN("Inquiry failed, skipping device %016llx\n",
     (unsigned long long)BE_64(device->scsi3addr[0]));
   DBG_DISC("INQUIRY FAILED \n");
   continue;
  }
  pqisrc_assign_btl(device);





  if (device->is_physical_device &&
   MASKED_DEVICE(scsi3addr))
   device->expose_device = 0;
  else
   device->expose_device = 1;

  if (device->is_physical_device &&
      (lun_ext_entry->device_flags &
       REPORT_LUN_DEV_FLAG_AIO_ENABLED) &&
       lun_ext_entry->ioaccel_handle) {
   device->aio_enabled = 1;
  }
  switch (device->devtype) {
  case 131:






   if (device->is_obdr_device)
    new_dev_cnt++;
   break;
  case 135:
  case 128:
   if (device->is_physical_device) {
    device->ioaccel_handle =
     lun_ext_entry->ioaccel_handle;
    device->sas_address = BE_64(lun_ext_entry->wwid);
    pqisrc_get_physical_device_info(softs, device,
     bmic_phy_info);
   }
   new_dev_cnt++;
   break;
  case 134:
   if (device->is_physical_device) {
    device->sas_address = BE_64(lun_ext_entry->wwid);
   }
   new_dev_cnt++;
   break;
  case 129:
  case 133:
   new_dev_cnt++;
   break;
  case 132:






   if (pqisrc_is_hba_lunid(scsi3addr))
    new_dev_cnt++;
   break;
  case 130:
  case 136:
   break;
  }
 }
 DBG_DISC("new_dev_cnt %d\n", new_dev_cnt);

 pqisrc_update_device_list(softs, new_device_list, new_dev_cnt);

err_out:
 if (new_device_list) {
  for (i = 0; i < ndev_allocated; i++) {
   if (new_device_list[i]) {
    if(new_device_list[i]->raid_map)
     os_mem_free(softs, (char *)new_device_list[i]->raid_map,
              sizeof(pqisrc_raid_map_t));
    os_mem_free(softs, (char*)new_device_list[i],
            sizeof(*new_device_list[i]));
   }
  }
  os_mem_free(softs, (char *)new_device_list,
         sizeof(*new_device_list) * ndev_allocated);
 }
 if(physical_dev_list)
  os_mem_free(softs, (char *)physical_dev_list, phys_data_length);
     if(logical_dev_list)
  os_mem_free(softs, (char *)logical_dev_list, log_data_length);
 if (bmic_phy_info)
  os_mem_free(softs, (char *)bmic_phy_info, sizeof(*bmic_phy_info));

 DBG_FUNC("OUT \n");

 return ret;
}
