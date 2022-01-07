
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pqisrc_softstate_t ;
typedef int pqisrc_raid_map_t ;
struct TYPE_3__ {scalar_t__ raid_map; } ;
typedef TYPE_1__ pqi_scsi_dev_t ;


 int DBG_FUNC (char*) ;
 int os_mem_free (int *,char*,int) ;

void pqisrc_device_mem_free(pqisrc_softstate_t *softs, pqi_scsi_dev_t *device)
{
 DBG_FUNC("IN\n");
 if (!device)
  return;
 if (device->raid_map) {
   os_mem_free(softs, (char *)device->raid_map, sizeof(pqisrc_raid_map_t));
 }
 os_mem_free(softs, (char *)device,sizeof(*device));
 DBG_FUNC("OUT\n");

}
