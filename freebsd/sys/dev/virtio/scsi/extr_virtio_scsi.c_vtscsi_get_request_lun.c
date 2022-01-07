
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int target_id_t ;
typedef int lun_id_t ;



__attribute__((used)) static void
vtscsi_get_request_lun(uint8_t lun[], target_id_t *target_id, lun_id_t *lun_id)
{

 *target_id = lun[1];
 *lun_id = (lun[2] << 8) | lun[3];
}
