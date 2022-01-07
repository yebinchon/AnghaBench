
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int request ;
typedef int pqisrc_softstate_t ;
typedef int pqisrc_raid_req_t ;
typedef int pqisrc_raid_map_t ;
struct TYPE_4__ {int * raid_map; int scsi3addr; } ;
typedef TYPE_1__ pqi_scsi_dev_t ;


 int DBG_ERR (char*,int) ;
 int DBG_FUNC (char*) ;
 int PQI_STATUS_FAILURE ;
 int PQI_STATUS_SUCCESS ;
 int SA_GET_RAID_MAP ;
 int memset (int *,int ,int) ;
 int * os_mem_alloc (int *,int) ;
 int os_mem_free (int *,char*,int) ;
 int pqisrc_build_send_raid_request (int *,int *,int *,int,int ,int ,int ,int *) ;
 int pqisrc_raid_map_validation (int *,TYPE_1__*,int *) ;

__attribute__((used)) static int pqisrc_get_device_raidmap(pqisrc_softstate_t *softs,
 pqi_scsi_dev_t *device)
{
 int ret = PQI_STATUS_SUCCESS;
 pqisrc_raid_req_t request;
 pqisrc_raid_map_t *raid_map;

 DBG_FUNC("IN\n");

 raid_map = os_mem_alloc(softs, sizeof(*raid_map));
 if (!raid_map)
  return PQI_STATUS_FAILURE;

 memset(&request, 0, sizeof(request));
 ret = pqisrc_build_send_raid_request(softs, &request, raid_map, sizeof(*raid_map),
      SA_GET_RAID_MAP, 0, device->scsi3addr, ((void*)0));

 if (ret) {
  DBG_ERR("error in build send raid req ret=%d\n", ret);
  goto err_out;
 }

 ret = pqisrc_raid_map_validation(softs, device, raid_map);
 if (ret) {
  DBG_ERR("error in raid map validation ret=%d\n", ret);
  goto err_out;
 }

 device->raid_map = raid_map;
 DBG_FUNC("OUT\n");
 return 0;

err_out:
 os_mem_free(softs, (char*)raid_map, sizeof(*raid_map));
 DBG_FUNC("FAILED \n");
 return ret;
}
