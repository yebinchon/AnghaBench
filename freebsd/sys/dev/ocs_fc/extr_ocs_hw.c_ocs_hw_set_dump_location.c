
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_13__ {int last; int buffer_length; int buffer_address_low; int buffer_address_high; } ;
typedef TYPE_2__ sli4_sge_t ;
struct TYPE_15__ {int size; int len; int phys; TYPE_2__* virt; } ;
struct TYPE_12__ {scalar_t__ disable_dump_loc; } ;
struct TYPE_14__ {int os; int sli; TYPE_4__ dump_sges; TYPE_1__ workaround; } ;
typedef TYPE_3__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
typedef TYPE_4__ ocs_dma_t ;


 int FALSE ;
 int OCS_CMD_POLL ;
 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_NO_MEMORY ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_MIN_DMA_ALIGNMENT ;
 int SLI4_BMBX_SIZE ;
 int TRUE ;
 int ocs_addr32_hi (int ) ;
 int ocs_addr32_lo (int ) ;
 scalar_t__ ocs_dma_alloc (int ,TYPE_4__*,int,int ) ;
 int ocs_dma_free (int ,TYPE_4__*) ;
 int ocs_get_bus_dev_func (int ,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ ocs_hw_command (TYPE_3__*,scalar_t__*,int ,int *,int *) ;
 int ocs_log_err (int ,char*,...) ;
 int ocs_log_test (int ,char*,...) ;
 int ocs_memset (TYPE_2__*,int ,int) ;
 scalar_t__ sli_cmd_common_set_dump_location (int *,void*,int,int ,int ,TYPE_4__*,scalar_t__) ;

ocs_hw_rtn_e
ocs_hw_set_dump_location(ocs_hw_t *hw, uint32_t num_buffers, ocs_dma_t *dump_buffers, uint8_t fdb)
{
 uint8_t bus, dev, func;
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;
 uint8_t buf[SLI4_BMBX_SIZE];





 if (hw->workaround.disable_dump_loc) {
  ocs_log_test(hw->os, "FW version is too old for this feature\n");
  return OCS_HW_RTN_ERROR;
 }


 ocs_get_bus_dev_func(hw->os, &bus, &dev, &func);
 if (fdb == 0 && func != 0) {
  ocs_log_test(hw->os, "function only valid for pci function 0, %d passed\n",
        func);
  return OCS_HW_RTN_ERROR;
 }





 if (num_buffers > 1) {
  uint32_t sge_size = num_buffers * sizeof(sli4_sge_t);
  sli4_sge_t *sge;
  uint32_t i;

  if (hw->dump_sges.size < sge_size) {
   ocs_dma_free(hw->os, &hw->dump_sges);
   if (ocs_dma_alloc(hw->os, &hw->dump_sges, sge_size, OCS_MIN_DMA_ALIGNMENT)) {
    ocs_log_err(hw->os, "SGE DMA allocation failed\n");
    return OCS_HW_RTN_NO_MEMORY;
   }
  }

  ocs_memset(hw->dump_sges.virt, 0, hw->dump_sges.size);
  hw->dump_sges.len = sge_size;
  sge = hw->dump_sges.virt;
  for (i = 0; i < num_buffers; i++) {
   sge[i].buffer_address_high = ocs_addr32_hi(dump_buffers[i].phys);
   sge[i].buffer_address_low = ocs_addr32_lo(dump_buffers[i].phys);
   sge[i].last = (i == num_buffers - 1 ? 1 : 0);
   sge[i].buffer_length = dump_buffers[i].size;
  }
  rc = sli_cmd_common_set_dump_location(&hw->sli, (void *)buf,
            SLI4_BMBX_SIZE, FALSE, TRUE,
            &hw->dump_sges, fdb);
 } else {
  dump_buffers->len = dump_buffers->size;
  rc = sli_cmd_common_set_dump_location(&hw->sli, (void *)buf,
            SLI4_BMBX_SIZE, FALSE, FALSE,
            dump_buffers, fdb);
 }

 if (rc) {
  rc = ocs_hw_command(hw, buf, OCS_CMD_POLL,
         ((void*)0), ((void*)0));
  if (rc) {
   ocs_log_err(hw->os, "ocs_hw_command returns %d\n",
    rc);
  }
 } else {
  ocs_log_err(hw->os,
   "sli_cmd_common_set_dump_location failed\n");
  rc = OCS_HW_RTN_ERROR;
 }

 return rc;
}
