
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int ocs_scsi_sgl_t ;
struct TYPE_3__ {scalar_t__ dif_oper; scalar_t__ dif_separate; } ;
typedef TYPE_1__ ocs_hw_dif_info_t ;


 scalar_t__ OCS_HW_DIF_OPER_DISABLED ;

__attribute__((used)) static uint32_t
ocs_scsi_count_sgls(ocs_hw_dif_info_t *hw_dif, ocs_scsi_sgl_t *sgl, uint32_t sgl_count)
{
 uint32_t count = 0;
 uint32_t i;


 if (hw_dif->dif_oper != OCS_HW_DIF_OPER_DISABLED) {


  if (!hw_dif->dif_separate) {
   count++;
  }

  for (i = 0; i < sgl_count; i++) {

   if (hw_dif->dif_separate) {
    count += 2;
   }

   count++;
  }
 } else {
  count = sgl_count;
 }
 return count;
}
