
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_8__ {int length; int vaddr; } ;
typedef TYPE_1__ ocs_scsi_vaddr_len_t ;
struct TYPE_9__ {scalar_t__ dif_seed; int check_guard; } ;
typedef TYPE_2__ ocs_hw_dif_info_t ;
struct TYPE_10__ {scalar_t__ crc; } ;
typedef TYPE_3__ ocs_dif_t ;


 size_t TRUE ;
 scalar_t__ ocs_be16toh (scalar_t__) ;
 scalar_t__ ocs_scsi_dif_calc_checksum (TYPE_1__*,size_t) ;
 scalar_t__ ocs_scsi_dif_calc_crc (int ,int ,scalar_t__) ;

__attribute__((used)) static uint32_t
ocs_scsi_dif_check_guard(ocs_hw_dif_info_t *dif_info, ocs_scsi_vaddr_len_t addrlen[], uint32_t addrlen_count,
 ocs_dif_t *dif, int is_crc)
{
 uint16_t crc = dif_info->dif_seed;
 uint32_t i;
 uint16_t checksum;

 if ((dif == ((void*)0)) || !dif_info->check_guard) {
  return TRUE;
 }

 if (is_crc) {
  for (i = 0; i < addrlen_count; i++) {
   crc = ocs_scsi_dif_calc_crc(addrlen[i].vaddr, addrlen[i].length, crc);
  }
  return (crc == ocs_be16toh(dif->crc));
 } else {
  checksum = ocs_scsi_dif_calc_checksum(addrlen, addrlen_count);

  return (checksum == dif->crc);
 }
}
