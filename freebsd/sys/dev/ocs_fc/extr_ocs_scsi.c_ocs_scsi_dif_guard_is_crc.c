
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int dif_oper; } ;
typedef TYPE_1__ ocs_hw_dif_info_t ;


 int FALSE ;





 int TRUE ;

__attribute__((used)) static int
ocs_scsi_dif_guard_is_crc(uint8_t direction, ocs_hw_dif_info_t *dif_info)
{
 int is_crc;

 if (direction) {

  switch(dif_info->dif_oper) {
   case 128:
   case 130:
   case 132:
    is_crc = TRUE;
    break;
   default:
    is_crc = FALSE;
    break;
  }
 } else {

  switch(dif_info->dif_oper) {
   case 129:
   case 130:
   case 131:
    is_crc = TRUE;
    break;
   default:
    is_crc = FALSE;
    break;
  }
 }

 return is_crc;
}
