
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int boolean_t ;



__attribute__((used)) static inline boolean_t pqisrc_is_external_raid_addr(uint8_t *scsi3addr)
{
 return scsi3addr[2] != 0;
}
