
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int pqisrc_softstate_t ;
struct TYPE_3__ {scalar_t__ raid_level; int scsi3addr; } ;
typedef TYPE_1__ pqi_scsi_dev_t ;


 int DBG_DISC (char*,scalar_t__) ;
 int DBG_FUNC (char*) ;
 scalar_t__ SA_RAID_MAX ;
 scalar_t__ SA_RAID_UNKNOWN ;
 int SA_VPD_LV_DEVICE_GEOMETRY ;
 int VPD_PAGE ;
 scalar_t__* os_mem_alloc (int *,int) ;
 int os_mem_free (int *,char*,int) ;
 int pqisrc_send_scsi_inquiry (int *,int ,int,scalar_t__*,int) ;

__attribute__((used)) static void pqisrc_get_dev_raid_level(pqisrc_softstate_t *softs,
 pqi_scsi_dev_t *device)
{
 uint8_t raid_level;
 uint8_t *buff;

 DBG_FUNC("IN\n");

 raid_level = SA_RAID_UNKNOWN;

 buff = os_mem_alloc(softs, 64);
 if (buff) {
  int ret;
  ret = pqisrc_send_scsi_inquiry(softs, device->scsi3addr,
   VPD_PAGE | SA_VPD_LV_DEVICE_GEOMETRY, buff, 64);
  if (ret == 0) {
   raid_level = buff[8];
   if (raid_level > SA_RAID_MAX)
    raid_level = SA_RAID_UNKNOWN;
  }
  os_mem_free(softs, (char*)buff, 64);
 }

 device->raid_level = raid_level;
 DBG_DISC("RAID LEVEL: %x \n", raid_level);
 DBG_FUNC("OUT\n");
}
