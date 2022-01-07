
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int io_lock; int os; int sli; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
struct TYPE_9__ {int indicator; int def_sgl; } ;
typedef TYPE_2__ ocs_hw_io_t ;
typedef int ocs_dma_t ;


 int OCS_CMD_NOWAIT ;
 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_NO_MEMORY ;
 int OCS_HW_RTN_SUCCESS ;
 int OCS_M_NOWAIT ;
 int SLI4_BMBX_SIZE ;
 int ocs_free (int ,int *,int ) ;
 scalar_t__ ocs_hw_command (TYPE_1__*,int *,int ,int ,int *) ;
 scalar_t__ ocs_hw_rqpair_auto_xfer_rdy_buffer_post (TYPE_1__*,TYPE_2__*,int ) ;
 int ocs_hw_rqpair_auto_xfer_rdy_move_to_port_cb ;
 int ocs_lock (int *) ;
 int ocs_log_err (int ,char*) ;
 int * ocs_malloc (int ,int ,int ) ;
 int ocs_unlock (int *) ;
 scalar_t__ sli_cmd_fcoe_post_sgl_pages (int *,int *,int ,int ,int,int **,int *,int *) ;
 int sli_get_sgl_preregister (int *) ;

ocs_hw_rtn_e
ocs_hw_rqpair_auto_xfer_rdy_move_to_port(ocs_hw_t *hw, ocs_hw_io_t *io)
{

 if (!sli_get_sgl_preregister(&hw->sli)) {
  uint8_t *post_sgl;
  ocs_dma_t *psgls = &io->def_sgl;
  ocs_dma_t **sgls = &psgls;


  post_sgl = ocs_malloc(hw->os, SLI4_BMBX_SIZE, OCS_M_NOWAIT);
  if (post_sgl == ((void*)0)) {
   ocs_log_err(hw->os, "no buffer for command\n");
   return OCS_HW_RTN_NO_MEMORY;
  }
  if (sli_cmd_fcoe_post_sgl_pages(&hw->sli, post_sgl, SLI4_BMBX_SIZE,
      io->indicator, 1, sgls, ((void*)0), ((void*)0))) {
   if (ocs_hw_command(hw, post_sgl, OCS_CMD_NOWAIT,
         ocs_hw_rqpair_auto_xfer_rdy_move_to_port_cb, ((void*)0))) {
    ocs_free(hw->os, post_sgl, SLI4_BMBX_SIZE);
    ocs_log_err(hw->os, "SGL post failed\n");
    return OCS_HW_RTN_ERROR;
   }
  }
 }

 ocs_lock(&hw->io_lock);
 if (ocs_hw_rqpair_auto_xfer_rdy_buffer_post(hw, io, 0) != 0) {
  ocs_unlock(&hw->io_lock);
  return OCS_HW_RTN_ERROR;
 }
 ocs_unlock(&hw->io_lock);
 return OCS_HW_RTN_SUCCESS;
}
