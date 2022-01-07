
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int n_wq; int n_io; } ;
struct TYPE_6__ {int* num_qentries; TYPE_1__ config; int sli; } ;
typedef TYPE_2__ ocs_hw_t ;


 int OCS_HW_MAX_NUM_WQ ;
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_PF ;
 size_t SLI_QTYPE_CQ ;
 size_t SLI_QTYPE_WQ ;
 int ocs_hw_get_num_chutes (TYPE_2__*) ;
 scalar_t__ sli_get_if_type (int *) ;
 int sli_get_max_queue (int *,size_t) ;

__attribute__((used)) static void
ocs_hw_adjust_wqs(ocs_hw_t *hw)
{
 uint32_t max_wq_num = sli_get_max_queue(&hw->sli, SLI_QTYPE_WQ);
 uint32_t max_wq_entries = hw->num_qentries[SLI_QTYPE_WQ];
 uint32_t max_cq_entries = hw->num_qentries[SLI_QTYPE_CQ];






 if (max_cq_entries < max_wq_entries * 2) {
  max_wq_entries = hw->num_qentries[SLI_QTYPE_WQ] = max_cq_entries / 2;
 }
 hw->config.n_wq = ((hw->config.n_io * 2) + (max_wq_entries - 1)) / max_wq_entries;





 if (hw->config.n_wq < 4 &&
     SLI4_IF_TYPE_BE3_SKH_PF == sli_get_if_type(&hw->sli)) {
  hw->config.n_wq = 4;
 }




 if (hw->config.n_wq < 2 &&
     ocs_hw_get_num_chutes(hw) > 1) {
  hw->config.n_wq = 2;
 }


 if (hw->config.n_wq > OCS_HW_MAX_NUM_WQ) {
  hw->config.n_wq = OCS_HW_MAX_NUM_WQ;
 }


 if (hw->config.n_wq > max_wq_num) {
  hw->config.n_wq = max_wq_num;
 }




 hw->config.n_wq /= ocs_hw_get_num_chutes(hw);
}
