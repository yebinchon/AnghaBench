
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ if_type; } ;
struct TYPE_6__ {TYPE_1__ sli; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
typedef int ocs_hw_fw_cb_t ;
typedef int ocs_dma_t ;


 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ;
 int ocs_hw_firmware_write_lancer (TYPE_2__*,int *,int ,int ,int,int ,void*) ;

ocs_hw_rtn_e
ocs_hw_firmware_write(ocs_hw_t *hw, ocs_dma_t *dma, uint32_t size, uint32_t offset, int last, ocs_hw_fw_cb_t cb, void *arg)
{
 if (hw->sli.if_type == SLI4_IF_TYPE_LANCER_FC_ETH) {
  return ocs_hw_firmware_write_lancer(hw, dma, size, offset, last, cb, arg);
 } else {

  return -1;
 }
}
