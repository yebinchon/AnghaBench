
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int pqisrc_softstate_t ;
struct TYPE_4__ {int offload_config; int offload_enabled_pending; int scsi3addr; } ;
typedef TYPE_1__ pqi_scsi_dev_t ;


 int DBG_DISC (char*,int,int) ;
 int DBG_ERR (char*,int) ;
 int DBG_FUNC (char*) ;
 size_t IOACCEL_STATUS_BYTE ;
 int OFFLOAD_CONFIGURED_BIT ;
 int OFFLOAD_ENABLED_BIT ;
 int PQI_STATUS_SUCCESS ;
 int SA_VPD_LV_IOACCEL_STATUS ;
 int VPD_PAGE ;
 int* os_mem_alloc (int *,int) ;
 int os_mem_free (int *,char*,int) ;
 scalar_t__ pqisrc_get_device_raidmap (int *,TYPE_1__*) ;
 int pqisrc_send_scsi_inquiry (int *,int ,int,int*,int) ;

__attribute__((used)) static void pqisrc_get_dev_ioaccel_status(pqisrc_softstate_t *softs,
 pqi_scsi_dev_t *device)
{
 int ret = PQI_STATUS_SUCCESS;
 uint8_t *buff;
 uint8_t ioaccel_status;

 DBG_FUNC("IN\n");

 buff = os_mem_alloc(softs, 64);
 if (!buff)
  return;

 ret = pqisrc_send_scsi_inquiry(softs, device->scsi3addr,
     VPD_PAGE | SA_VPD_LV_IOACCEL_STATUS, buff, 64);
 if (ret) {
  DBG_ERR("error in send scsi inquiry ret=%d\n", ret);
  goto err_out;
 }

 ioaccel_status = buff[IOACCEL_STATUS_BYTE];
 device->offload_config =
  !!(ioaccel_status & OFFLOAD_CONFIGURED_BIT);

 if (device->offload_config) {
  device->offload_enabled_pending =
   !!(ioaccel_status & OFFLOAD_ENABLED_BIT);
  if (pqisrc_get_device_raidmap(softs, device))
   device->offload_enabled_pending = 0;
 }

 DBG_DISC("offload_config: 0x%x offload_enabled_pending: 0x%x \n",
   device->offload_config, device->offload_enabled_pending);

err_out:
 os_mem_free(softs, (char*)buff, 64);
 DBG_FUNC("OUT\n");
}
