
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef size_t uint16_t ;
struct TYPE_3__ {size_t* vaddr; int length; } ;
typedef TYPE_1__ ocs_scsi_vaddr_len_t ;



uint16_t
ocs_scsi_dif_calc_checksum(ocs_scsi_vaddr_len_t addrlen[], uint32_t addrlen_count)
{
 uint32_t i, j;
 uint16_t checksum;
 uint32_t intermediate;
 uint32_t count;
 uint16_t *buffer;

 intermediate = 0;
 for (j = 0; j < addrlen_count; j++) {
  buffer = addrlen[j].vaddr;
  count = addrlen[j].length / 2;
  for (i=0; i < count; i++) {
   intermediate += buffer[i];
  }
 }


 intermediate += ((intermediate & 0xffff0000) >> 16);


 intermediate = ~intermediate;

 checksum = intermediate;

 return checksum;
}
