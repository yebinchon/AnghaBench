
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int xri_count; int xri_base; } ;
typedef TYPE_1__ sli4_cmd_post_xri_t ;
struct TYPE_6__ {int os; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef scalar_t__ int32_t ;


 int SLI4_BMBX_SIZE ;
 int ocs_free (int ,int *,int ) ;
 int ocs_hw_reclaim_xri (TYPE_2__*,int ,int ) ;
 int ocs_log_debug (int ,char*,scalar_t__,int ,int ) ;

__attribute__((used)) static int32_t
ocs_hw_cb_post_xri(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 sli4_cmd_post_xri_t *post_xri = (sli4_cmd_post_xri_t*)mqe;


 if (status != 0) {
  ocs_log_debug(hw->os, "Status 0x%x for XRI base 0x%x, cnt =x%x\n",
         status, post_xri->xri_base, post_xri->xri_count);
  ocs_hw_reclaim_xri(hw, post_xri->xri_base, post_xri->xri_count);
 }

 ocs_free(hw->os, mqe, SLI4_BMBX_SIZE);
 return 0;
}
