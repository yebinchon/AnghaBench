
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int boolean_t ;


 scalar_t__ RAID_CTLR_LUNID ;
 int pqisrc_scsi3addr_equal (int *,int *) ;

boolean_t pqisrc_is_hba_lunid(uint8_t *scsi3addr)
{
 return pqisrc_scsi3addr_equal(scsi3addr, (uint8_t*)RAID_CTLR_LUNID);
}
