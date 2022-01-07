
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int pqisrc_softstate_t ;
struct TYPE_8__ {int queue_depth; int device_type; int bay; int phys_connector; int box; int path_map; int active_path_index; } ;
typedef TYPE_1__ pqi_scsi_dev_t ;
struct TYPE_9__ {int phys_bay_in_box; int alternate_paths_phys_connector; int alternate_paths_phys_box_on_port; int redundant_path_present_map; int active_path_number; int device_type; int current_queue_depth_limit; } ;
typedef TYPE_2__ bmic_ident_physdev_t ;


 int DBG_DISC (char*,int ,int ) ;
 int DBG_FUNC (char*) ;
 int LE_16 (int ) ;
 int PQI_PHYSICAL_DISK_DEFAULT_MAX_QUEUE_DEPTH ;
 int PQI_STATUS_SUCCESS ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int pqisrc_identify_physical_disk (int *,TYPE_1__*,TYPE_2__*,int) ;

__attribute__((used)) static void pqisrc_get_physical_device_info(pqisrc_softstate_t *softs,
 pqi_scsi_dev_t *device,
 bmic_ident_physdev_t *id_phys)
{
 int ret = PQI_STATUS_SUCCESS;

 DBG_FUNC("IN\n");
 memset(id_phys, 0, sizeof(*id_phys));

 ret= pqisrc_identify_physical_disk(softs, device,
  id_phys, sizeof(*id_phys));
 if (ret) {
  device->queue_depth = PQI_PHYSICAL_DISK_DEFAULT_MAX_QUEUE_DEPTH;
  return;
 }

 device->queue_depth =
  LE_16(id_phys->current_queue_depth_limit);
 device->device_type = id_phys->device_type;
 device->active_path_index = id_phys->active_path_number;
 device->path_map = id_phys->redundant_path_present_map;
 memcpy(&device->box,
  &id_phys->alternate_paths_phys_box_on_port,
  sizeof(device->box));
 memcpy(&device->phys_connector,
  &id_phys->alternate_paths_phys_connector,
  sizeof(device->phys_connector));
 device->bay = id_phys->phys_bay_in_box;

 DBG_DISC("BMIC DEV_TYPE: %x QUEUE DEPTH: 0x%x \n", device->device_type, device->queue_depth);
 DBG_FUNC("OUT\n");
}
