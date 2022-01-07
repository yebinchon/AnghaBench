
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pqisrc_softstate_t ;
struct TYPE_4__ {int invalid; int volume_status; int volume_offline; int expose_device; int is_physical_device; int lun; int target; int bus; int model; int vendor; } ;
typedef TYPE_1__ pqi_scsi_dev_t ;


 int DBG_DISC (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int DBG_FUNC (char*) ;
 int os_remove_device (int *,TYPE_1__*) ;

void pqisrc_remove_device(pqisrc_softstate_t *softs,
 pqi_scsi_dev_t *device)
{
 DBG_FUNC("IN\n");
 DBG_DISC("vendor: %s model: %s bus:%d target:%d lun:%d is_physical_device:0x%x expose_device:0x%x volume_offline 0x%x volume_status 0x%x \n",
  device->vendor, device->model, device->bus, device->target, device->lun, device->is_physical_device, device->expose_device, device->volume_offline, device->volume_status);


 device->invalid = 1;
 os_remove_device(softs,device);
 DBG_FUNC("OUT\n");
}
