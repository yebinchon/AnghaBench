
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_7__ {int released_xri_count; TYPE_1__* xri_tbl; } ;
typedef TYPE_2__ sli4_cmd_release_xri_t ;
struct TYPE_8__ {int os; } ;
typedef TYPE_3__ ocs_hw_t ;
typedef scalar_t__ int32_t ;
struct TYPE_6__ {int xri_tag1; int xri_tag0; } ;


 int SLI4_BMBX_SIZE ;
 int ocs_free (int ,int*,int ) ;
 int ocs_hw_reclaim_xri (TYPE_3__*,int ,int) ;
 int ocs_log_err (int ,char*,scalar_t__) ;

__attribute__((used)) static int32_t
ocs_hw_cb_release_xri(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 sli4_cmd_release_xri_t *release_xri = (sli4_cmd_release_xri_t*)mqe;
 uint8_t i;


 if (status != 0) {
  ocs_log_err(hw->os, "Status 0x%x\n", status);
 } else {
  for (i = 0; i < release_xri->released_xri_count; i++) {
   uint16_t xri = ((i & 1) == 0 ? release_xri->xri_tbl[i/2].xri_tag0 :
     release_xri->xri_tbl[i/2].xri_tag1);
   ocs_hw_reclaim_xri(hw, xri, 1);
  }
 }

 ocs_free(hw->os, mqe, SLI4_BMBX_SIZE);
 return 0;
}
