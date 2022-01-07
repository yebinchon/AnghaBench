
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pqisrc_softstate_t ;
struct TYPE_4__ {int offload_enabled; int * raid_map; scalar_t__ offload_to_mirror; int offload_enabled_pending; int offload_config; int phys_connector; int box; int bay; int path_map; int active_path_index; int volume_status; int ioaccel_handle; int queue_depth; int raid_level; int sas_address; int is_external_raid_device; int is_physical_device; int model; int vendor; int expose_device; } ;
typedef TYPE_1__ pqi_scsi_dev_t ;


 int DBG_FUNC (char*) ;
 int memcpy (int ,int ,int) ;
 int os_mem_free (int *,char*,int) ;

__attribute__((used)) static void pqisrc_exist_device_update(pqisrc_softstate_t *softs,
 pqi_scsi_dev_t *device_exist,
 pqi_scsi_dev_t *new_device)
{
 DBG_FUNC("IN\n");
 device_exist->expose_device = new_device->expose_device;
 memcpy(device_exist->vendor, new_device->vendor,
  sizeof(device_exist->vendor));
 memcpy(device_exist->model, new_device->model,
  sizeof(device_exist->model));
 device_exist->is_physical_device = new_device->is_physical_device;
 device_exist->is_external_raid_device =
  new_device->is_external_raid_device;
 device_exist->sas_address = new_device->sas_address;
 device_exist->raid_level = new_device->raid_level;
 device_exist->queue_depth = new_device->queue_depth;
 device_exist->ioaccel_handle = new_device->ioaccel_handle;
 device_exist->volume_status = new_device->volume_status;
 device_exist->active_path_index = new_device->active_path_index;
 device_exist->path_map = new_device->path_map;
 device_exist->bay = new_device->bay;
 memcpy(device_exist->box, new_device->box,
  sizeof(device_exist->box));
 memcpy(device_exist->phys_connector, new_device->phys_connector,
  sizeof(device_exist->phys_connector));
 device_exist->offload_config = new_device->offload_config;
 device_exist->offload_enabled = 0;
 device_exist->offload_enabled_pending =
  new_device->offload_enabled_pending;
 device_exist->offload_to_mirror = 0;
 if (device_exist->raid_map)
  os_mem_free(softs,
       (char *)device_exist->raid_map,
       sizeof(*device_exist->raid_map));
 device_exist->raid_map = new_device->raid_map;

 new_device->raid_map = ((void*)0);
 DBG_FUNC("OUT\n");
}
