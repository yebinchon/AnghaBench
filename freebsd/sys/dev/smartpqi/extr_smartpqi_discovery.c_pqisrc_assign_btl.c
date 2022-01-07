
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int target_lun_valid; int * scsi3addr; } ;
typedef TYPE_1__ pqi_scsi_dev_t ;


 int DBG_DISC (char*) ;
 int DBG_FUNC (char*) ;
 int GET_LE32 (int *) ;
 int PQI_CTLR_INDEX ;
 int PQI_EXTERNAL_RAID_VOLUME_BUS ;
 int PQI_HBA_BUS ;
 int PQI_RAID_VOLUME_BUS ;
 scalar_t__ pqisrc_is_external_raid_device (TYPE_1__*) ;
 scalar_t__ pqisrc_is_hba_lunid (int *) ;
 scalar_t__ pqisrc_is_logical_device (TYPE_1__*) ;
 int pqisrc_set_btl (TYPE_1__*,int,int,int) ;

__attribute__((used)) static void pqisrc_assign_btl(pqi_scsi_dev_t *device)
{
 uint8_t *scsi3addr;
 uint32_t lunid;
 uint32_t bus;
 uint32_t target;
 uint32_t lun;
 DBG_FUNC("IN\n");

 scsi3addr = device->scsi3addr;
 lunid = GET_LE32(scsi3addr);

 if (pqisrc_is_hba_lunid(scsi3addr)) {

  pqisrc_set_btl(device, PQI_HBA_BUS, PQI_CTLR_INDEX, lunid & 0x3fff);
  device->target_lun_valid = 1;
  return;
 }

 if (pqisrc_is_logical_device(device)) {
  if (pqisrc_is_external_raid_device(device)) {
   DBG_DISC("External Raid Device!!!");
   bus = PQI_EXTERNAL_RAID_VOLUME_BUS;
   target = (lunid >> 16) & 0x3fff;
   lun = lunid & 0xff;
  } else {
   bus = PQI_RAID_VOLUME_BUS;
   lun = 0;
   target = lunid & 0x3fff;
  }
  pqisrc_set_btl(device, bus, target, lun);
  device->target_lun_valid = 1;
  return;
 }

 DBG_FUNC("OUT\n");
}
