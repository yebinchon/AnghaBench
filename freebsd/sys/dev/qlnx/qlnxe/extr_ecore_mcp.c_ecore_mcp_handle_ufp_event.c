
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ecore_ptt {int dummy; } ;
struct TYPE_6__ {scalar_t__ mode; int tc; } ;
struct TYPE_5__ {int offload_tc; } ;
struct TYPE_4__ {int ooo_tc; } ;
struct ecore_hwfn {TYPE_3__ ufp_info; TYPE_2__ hw_info; TYPE_1__ qm_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_ERR (struct ecore_hwfn*,char*) ;
 int ECORE_DCBX_OPERATIONAL_MIB ;
 int ECORE_INVAL ;
 int ECORE_SUCCESS ;
 scalar_t__ ECORE_UFP_MODE_ETS ;
 scalar_t__ ECORE_UFP_MODE_VNIC_BW ;
 int ecore_dcbx_mib_update_event (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_mcp_read_ufp_config (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_qm_reconf (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_sp_pf_update_ufp (struct ecore_hwfn*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_mcp_handle_ufp_event(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt)
{
 ecore_mcp_read_ufp_config(p_hwfn, p_ptt);

 if (p_hwfn->ufp_info.mode == ECORE_UFP_MODE_VNIC_BW) {
  p_hwfn->qm_info.ooo_tc = p_hwfn->ufp_info.tc;
  p_hwfn->hw_info.offload_tc = p_hwfn->ufp_info.tc;

  ecore_qm_reconf(p_hwfn, p_ptt);
 } else if (p_hwfn->ufp_info.mode == ECORE_UFP_MODE_ETS) {

  ecore_dcbx_mib_update_event(p_hwfn, p_ptt,
         ECORE_DCBX_OPERATIONAL_MIB);
 } else {
  DP_ERR(p_hwfn, "Invalid sched type, discard the UFP config\n");
  return ECORE_INVAL;
 }


 ecore_sp_pf_update_ufp(p_hwfn);

 return ECORE_SUCCESS;
}
