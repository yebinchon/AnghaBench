
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int os; int sli; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
typedef int ocs_hw_port_control_cb_t ;


 int OCS_HW_RTN_ERROR ;
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_PF ;
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_VF ;
 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ;
 int ocs_hw_get_linkcfg_lancer (TYPE_1__*,int ,int ,void*) ;
 int ocs_hw_get_linkcfg_skyhawk (TYPE_1__*,int ,int ,void*) ;
 int ocs_log_debug (int ,char*) ;
 int ocs_log_test (int ,char*) ;
 scalar_t__ sli_get_if_type (int *) ;
 int sli_link_is_configurable (int *) ;

__attribute__((used)) static ocs_hw_rtn_e
ocs_hw_get_linkcfg(ocs_hw_t *hw, uint32_t opts, ocs_hw_port_control_cb_t cb, void *arg)
{
 if (!sli_link_is_configurable(&hw->sli)) {
  ocs_log_debug(hw->os, "Function not supported\n");
  return OCS_HW_RTN_ERROR;
 }

 if (SLI4_IF_TYPE_LANCER_FC_ETH == sli_get_if_type(&hw->sli)) {
  return ocs_hw_get_linkcfg_lancer(hw, opts, cb, arg);
 } else if ((SLI4_IF_TYPE_BE3_SKH_PF == sli_get_if_type(&hw->sli)) ||
     (SLI4_IF_TYPE_BE3_SKH_VF == sli_get_if_type(&hw->sli))) {
  return ocs_hw_get_linkcfg_skyhawk(hw, opts, cb, arg);
 } else {
  ocs_log_test(hw->os, "Function not supported for this IF_TYPE\n");
  return OCS_HW_RTN_ERROR;
 }
}
