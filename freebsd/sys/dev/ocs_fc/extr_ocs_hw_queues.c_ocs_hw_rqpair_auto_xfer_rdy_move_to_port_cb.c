
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int os; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef scalar_t__ int32_t ;


 int SLI4_BMBX_SIZE ;
 int ocs_free (int ,int *,int ) ;
 int ocs_log_debug (int ,char*,scalar_t__) ;

__attribute__((used)) static int32_t
ocs_hw_rqpair_auto_xfer_rdy_move_to_port_cb(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 if (status != 0) {
  ocs_log_debug(hw->os, "Status 0x%x\n", status);
 }

 ocs_free(hw->os, mqe, SLI4_BMBX_SIZE);
 return 0;
}
