
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_5__ {int personality; int offload_tc; } ;
struct ecore_hwfn {TYPE_3__* p_dev; TYPE_2__ hw_info; } ;
struct ecore_dcbx_results {TYPE_1__* arr; } ;
typedef enum ecore_pci_personality { ____Placeholder_ecore_pci_personality } ecore_pci_personality ;
typedef enum dcbx_protocol_type { ____Placeholder_dcbx_protocol_type } dcbx_protocol_type ;
struct TYPE_6__ {int mf_bits; } ;
struct TYPE_4__ {int enable; int priority; int tc; scalar_t__ dscp_val; int dscp_enable; int dont_add_vlan0; int update; } ;


 int DCBX_PROTOCOL_ROCE ;
 int DORQ_REG_PF_PCP_BB_K2 ;
 int DORQ_REG_TAG1_OVRD_MODE ;
 scalar_t__ ECORE_DCBX_DSCP_DISABLED ;
 int ECORE_MF_UFP_SPECIFIC ;
 scalar_t__ OSAL_TEST_BIT (int ,int *) ;
 int UPDATE_DCB_DSCP ;
 scalar_t__ ecore_dcbx_get_dscp_value (struct ecore_hwfn*,int) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

__attribute__((used)) static void
ecore_dcbx_set_params(struct ecore_dcbx_results *p_data,
        struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
        bool enable, u8 prio, u8 tc,
        enum dcbx_protocol_type type,
        enum ecore_pci_personality personality)
{

 p_data->arr[type].enable = enable;
 p_data->arr[type].priority = prio;
 p_data->arr[type].tc = tc;
 p_data->arr[type].dscp_val = ecore_dcbx_get_dscp_value(p_hwfn, prio);
 if (p_data->arr[type].dscp_val == ECORE_DCBX_DSCP_DISABLED) {
  p_data->arr[type].dscp_enable = 0;
  p_data->arr[type].dscp_val = 0;
 } else
  p_data->arr[type].dscp_enable = enable;

 p_data->arr[type].update = UPDATE_DCB_DSCP;


 if (OSAL_TEST_BIT(ECORE_MF_UFP_SPECIFIC, &p_hwfn->p_dev->mf_bits))
  p_data->arr[type].dont_add_vlan0 = 1;


 if (p_hwfn->hw_info.personality == personality)
  p_hwfn->hw_info.offload_tc = tc;


 if (OSAL_TEST_BIT(ECORE_MF_UFP_SPECIFIC, &p_hwfn->p_dev->mf_bits) &&
     (type == DCBX_PROTOCOL_ROCE)) {
  ecore_wr(p_hwfn, p_ptt, DORQ_REG_TAG1_OVRD_MODE, 1);
  ecore_wr(p_hwfn, p_ptt, DORQ_REG_PF_PCP_BB_K2, prio << 1);
 }
}
