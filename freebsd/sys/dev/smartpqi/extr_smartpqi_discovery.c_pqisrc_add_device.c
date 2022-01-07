
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pqisrc_softstate_t ;
struct TYPE_4__ {int invalid; scalar_t__ expose_device; int volume_status; int volume_offline; int is_physical_device; int lun; int target; int bus; int model; int vendor; } ;
typedef TYPE_1__ pqi_scsi_dev_t ;


 int DBG_FUNC (char*) ;
 int DBG_WARN (char*,int ,int ,int ,int ,int ,int ,scalar_t__,int ,int ) ;
 int PQI_STATUS_SUCCESS ;
 int os_add_device (int *,TYPE_1__*) ;

__attribute__((used)) static int pqisrc_add_device(pqisrc_softstate_t *softs,
 pqi_scsi_dev_t *device)
{
 DBG_FUNC("IN\n");
 DBG_WARN("vendor: %s model: %s bus:%d target:%d lun:%d is_physical_device:0x%x expose_device:0x%x volume_offline 0x%x volume_status 0x%x \n",
  device->vendor, device->model, device->bus, device->target, device->lun, device->is_physical_device, device->expose_device, device->volume_offline, device->volume_status);

 device->invalid = 0;

 if(device->expose_device) {

  os_add_device(softs,device);
 }
 DBG_FUNC("OUT\n");
 return PQI_STATUS_SUCCESS;

}
