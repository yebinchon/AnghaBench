
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int pqisrc_softstate_t ;
struct TYPE_7__ {int devtype; scalar_t__ volume_status; int volume_offline; int is_obdr_device; int scsi3addr; int raid_level; int model; int vendor; } ;
typedef TYPE_1__ pqi_scsi_dev_t ;


 int DBG_DISC (char*,int,int ,int ) ;
 int DBG_FUNC (char*) ;
 int DISK_DEVICE ;
 int OBDR_SIG_LEN ;
 size_t OBDR_SIG_OFFSET ;
 int OBDR_TAPE_INQ_SIZE ;
 int OBDR_TAPE_SIG ;
 int PQI_STATUS_FAILURE ;
 int PQI_STATUS_SUCCESS ;
 int ROM_DEVICE ;
 scalar_t__ SA_LV_OK ;
 int SA_RAID_UNKNOWN ;
 scalar_t__ memcmp (int*,int ,int ) ;
 int memcpy (int ,int*,int) ;
 int* os_mem_alloc (int *,int ) ;
 int os_mem_free (int *,char*,int ) ;
 int pqisrc_get_dev_ioaccel_status (int *,TYPE_1__*) ;
 int pqisrc_get_dev_raid_level (int *,TYPE_1__*) ;
 scalar_t__ pqisrc_get_dev_vol_status (int *,int ) ;
 scalar_t__ pqisrc_is_external_raid_device (TYPE_1__*) ;
 scalar_t__ pqisrc_is_logical_device (TYPE_1__*) ;
 int pqisrc_sanitize_inquiry_string (int*,int) ;
 int pqisrc_send_scsi_inquiry (int *,int ,int ,int*,int ) ;

__attribute__((used)) static int pqisrc_get_dev_data(pqisrc_softstate_t *softs,
 pqi_scsi_dev_t *device)
{
 int ret = PQI_STATUS_SUCCESS;
 uint8_t *inq_buff;

 DBG_FUNC("IN\n");

 inq_buff = os_mem_alloc(softs, OBDR_TAPE_INQ_SIZE);
 if (!inq_buff)
  return PQI_STATUS_FAILURE;


 ret = pqisrc_send_scsi_inquiry(softs, device->scsi3addr, 0, inq_buff,
  OBDR_TAPE_INQ_SIZE);
 if (ret)
  goto err_out;
 pqisrc_sanitize_inquiry_string(&inq_buff[8], 8);
 pqisrc_sanitize_inquiry_string(&inq_buff[16], 16);

 device->devtype = inq_buff[0] & 0x1f;
 memcpy(device->vendor, &inq_buff[8],
  sizeof(device->vendor));
 memcpy(device->model, &inq_buff[16],
  sizeof(device->model));
 DBG_DISC("DEV_TYPE: %x VENDOR: %s MODEL: %s\n", device->devtype, device->vendor, device->model);

 if (pqisrc_is_logical_device(device) && device->devtype == DISK_DEVICE) {
  if (pqisrc_is_external_raid_device(device)) {
   device->raid_level = SA_RAID_UNKNOWN;
   device->volume_status = SA_LV_OK;
   device->volume_offline = 0;
  }
  else {
   pqisrc_get_dev_raid_level(softs, device);
   pqisrc_get_dev_ioaccel_status(softs, device);
   device->volume_status = pqisrc_get_dev_vol_status(softs,
      device->scsi3addr);
   device->volume_offline = device->volume_status != SA_LV_OK;
  }
 }





 device->is_obdr_device = (device->devtype == ROM_DEVICE &&
  memcmp(&inq_buff[OBDR_SIG_OFFSET], OBDR_TAPE_SIG,
   OBDR_SIG_LEN) == 0);
err_out:
 os_mem_free(softs, (char*)inq_buff, OBDR_TAPE_INQ_SIZE);

 DBG_FUNC("OUT\n");
 return ret;
}
