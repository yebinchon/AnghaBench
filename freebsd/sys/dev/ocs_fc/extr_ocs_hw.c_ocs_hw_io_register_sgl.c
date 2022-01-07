
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int os; int sli; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
struct TYPE_6__ {int * ovfl_io; int ovfl_sgl_count; int * ovfl_sgl; } ;
typedef TYPE_2__ ocs_hw_io_t ;
typedef int ocs_dma_t ;


 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 int ocs_log_err (int ,char*) ;
 scalar_t__ sli_get_sgl_preregister (int *) ;

ocs_hw_rtn_e
ocs_hw_io_register_sgl(ocs_hw_t *hw, ocs_hw_io_t *io, ocs_dma_t *sgl, uint32_t sgl_count)
{
 if (sli_get_sgl_preregister(&hw->sli)) {
  ocs_log_err(hw->os, "can't use temporary SGL with pre-registered SGLs\n");
  return OCS_HW_RTN_ERROR;
 }
 io->ovfl_sgl = sgl;
 io->ovfl_sgl_count = sgl_count;
 io->ovfl_io = ((void*)0);

 return OCS_HW_RTN_SUCCESS;
}
