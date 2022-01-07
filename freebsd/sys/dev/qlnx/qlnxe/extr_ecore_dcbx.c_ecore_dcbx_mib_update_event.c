
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_2__* p_dcbx_info; } ;
struct ecore_dcbx_results {TYPE_3__* arr; } ;
typedef enum ecore_mib_read_type { ____Placeholder_ecore_mib_read_type } ecore_mib_read_type ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_6__ {int enabled; } ;
struct TYPE_9__ {TYPE_1__ dscp; } ;
struct TYPE_8__ {int tc; } ;
struct TYPE_7__ {int dscp_nig_update; struct ecore_dcbx_results results; TYPE_4__ get; } ;


 size_t DCBX_PROTOCOL_ROCE ;
 size_t DCBX_PROTOCOL_ROCE_V2 ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_DCBX_OPERATIONAL_MIB ;
 scalar_t__ ECORE_IS_ROCE_PERSONALITY (struct ecore_hwfn*) ;
 int ECORE_SUCCESS ;
 int NIG_REG_DSCP_TO_TC_MAP_ENABLE ;
 int NIG_REG_TX_EDPM_CTRL ;
 int NIG_REG_TX_EDPM_CTRL_TX_EDPM_EN ;
 int NIG_REG_TX_EDPM_CTRL_TX_EDPM_TC_EN_SHIFT ;
 int OSAL_DCBX_AEN (struct ecore_hwfn*,int) ;
 int ecore_all_ppfids_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;
 int ecore_dcbx_get_dscp_params (struct ecore_hwfn*,TYPE_4__*) ;
 int ecore_dcbx_get_params (struct ecore_hwfn*,TYPE_4__*,int) ;
 int ecore_dcbx_process_mib_info (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_dcbx_read_mib (struct ecore_hwfn*,struct ecore_ptt*,int) ;
 int ecore_qm_reconf (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_roce_dpm_dcbx (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_sp_pf_update_dcbx (struct ecore_hwfn*) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

enum _ecore_status_t
ecore_dcbx_mib_update_event(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
       enum ecore_mib_read_type type)
{
 enum _ecore_status_t rc = ECORE_SUCCESS;

 rc = ecore_dcbx_read_mib(p_hwfn, p_ptt, type);
 if (rc)
  return rc;

 if (type == ECORE_DCBX_OPERATIONAL_MIB) {
  ecore_dcbx_get_dscp_params(p_hwfn, &p_hwfn->p_dcbx_info->get);

  rc = ecore_dcbx_process_mib_info(p_hwfn, p_ptt);
  if (!rc) {



   ecore_qm_reconf(p_hwfn, p_ptt);


   ecore_sp_pf_update_dcbx(p_hwfn);
  }
 }

 ecore_dcbx_get_params(p_hwfn, &p_hwfn->p_dcbx_info->get, type);

 if (type == ECORE_DCBX_OPERATIONAL_MIB) {
  struct ecore_dcbx_results *p_data;
  u16 val;


  if (p_hwfn->p_dcbx_info->dscp_nig_update) {
   u8 val = !!p_hwfn->p_dcbx_info->get.dscp.enabled;
   u32 addr = NIG_REG_DSCP_TO_TC_MAP_ENABLE;

   rc = ecore_all_ppfids_wr(p_hwfn, p_ptt, addr, val);
   if (rc != ECORE_SUCCESS) {
    DP_NOTICE(p_hwfn, 0,
       "Failed to update the DSCP to TC mapping enable bit\n");
    return rc;
   }

   p_hwfn->p_dcbx_info->dscp_nig_update = 0;
  }




  p_data = &p_hwfn->p_dcbx_info->results;
  val = (0x1 << p_data->arr[DCBX_PROTOCOL_ROCE].tc) |
   (0x1 << p_data->arr[DCBX_PROTOCOL_ROCE_V2].tc);
  val <<= NIG_REG_TX_EDPM_CTRL_TX_EDPM_TC_EN_SHIFT;
  val |= NIG_REG_TX_EDPM_CTRL_TX_EDPM_EN;
  ecore_wr(p_hwfn, p_ptt, NIG_REG_TX_EDPM_CTRL, val);
 }

 OSAL_DCBX_AEN(p_hwfn, type);

 return rc;
}
