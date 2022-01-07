
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int boolean_t ;


 scalar_t__ memcmp (int *,int *,int) ;

boolean_t pqisrc_scsi3addr_equal(uint8_t *scsi3addr1, uint8_t *scsi3addr2)
{
 return memcmp(scsi3addr1, scsi3addr2, 8) == 0;
}
