
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ auto_xfer_rdy_size; scalar_t__ auto_xfer_rdy_xri_cnt; } ;
struct TYPE_7__ {int os; TYPE_1__ config; int * auto_xfer_rdy_buf_pool; int sli; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;


 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 scalar_t__ ocs_hw_rqpair_auto_xfer_rdy_buffer_alloc (TYPE_2__*,scalar_t__) ;
 scalar_t__ ocs_hw_xri_move_to_port_owned (TYPE_2__*,scalar_t__) ;
 int ocs_log_debug (int ,char*) ;
 int ocs_log_err (int ,char*,scalar_t__) ;
 int ocs_pool_reset (int *) ;
 scalar_t__ sli_get_auto_xfer_rdy_capable (int *) ;

ocs_hw_rtn_e
ocs_hw_rqpair_init(ocs_hw_t *hw)
{
 ocs_hw_rtn_e rc;
 uint32_t xris_posted;

 ocs_log_debug(hw->os, "RQ Pair mode\n");






 if (sli_get_auto_xfer_rdy_capable(&hw->sli) &&
     hw->config.auto_xfer_rdy_size > 0) {
  if (hw->auto_xfer_rdy_buf_pool == ((void*)0)) {





   rc = ocs_hw_rqpair_auto_xfer_rdy_buffer_alloc(hw, hw->config.auto_xfer_rdy_xri_cnt + 1);
   if (rc != OCS_HW_RTN_SUCCESS) {
    return rc;
   }
  } else {
   ocs_pool_reset(hw->auto_xfer_rdy_buf_pool);
  }


  xris_posted = ocs_hw_xri_move_to_port_owned(hw, hw->config.auto_xfer_rdy_xri_cnt);
  if (xris_posted != hw->config.auto_xfer_rdy_xri_cnt) {
   ocs_log_err(hw->os, "post_xri failed, only posted %d XRIs\n", xris_posted);
   return OCS_HW_RTN_ERROR;
  }
 }

 return 0;
}
