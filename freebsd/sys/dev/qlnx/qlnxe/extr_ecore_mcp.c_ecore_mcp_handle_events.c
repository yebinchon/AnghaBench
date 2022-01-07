
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_mcp_info {size_t mfw_mb_length; scalar_t__* mfw_mb_cur; scalar_t__* mfw_mb_shadow; scalar_t__ mfw_mb_addr; } ;
struct ecore_hwfn {TYPE_1__* p_dcbx_info; struct ecore_mcp_info* mcp_info; } ;
struct ecore_dcbx_set {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {int set; } ;
typedef int OSAL_BE32 ;


 int DP_INFO (struct ecore_hwfn*,char*,...) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,...) ;
 int ECORE_DCBX_OPERATIONAL_MIB ;
 int ECORE_DCBX_REMOTE_LLDP_MIB ;
 int ECORE_DCBX_REMOTE_MIB ;
 int ECORE_INVAL ;
 int ECORE_MSG_LINK ;
 int ECORE_MSG_SP ;
 int ECORE_SUCCESS ;
 int MFW_DRV_MSG_MAX_DWORDS (size_t) ;




 int OSAL_CPU_TO_BE32 (int ) ;
 int OSAL_MEMCPY (scalar_t__*,scalar_t__*,size_t) ;
 int OSAL_MEMSET (int *,int ,int) ;
 int OSAL_MFW_TLV_REQ (struct ecore_hwfn*) ;
 int ecore_dcbx_mib_update_event (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_lldp_mib_update_event (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_mcp_handle_critical_error (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_mcp_handle_fan_failure (struct ecore_hwfn*) ;
 int ecore_mcp_handle_link_change (struct ecore_hwfn*,struct ecore_ptt*,int) ;
 int ecore_mcp_handle_process_kill (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_mcp_handle_transceiver_change (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_mcp_handle_ufp_event (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_mcp_handle_vf_flr (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_mcp_read_mb (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_mcp_send_protocol_stats (struct ecore_hwfn*,struct ecore_ptt*,size_t) ;
 int ecore_mcp_update_bw (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_mcp_update_stag (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int ) ;

enum _ecore_status_t ecore_mcp_handle_events(struct ecore_hwfn *p_hwfn,
          struct ecore_ptt *p_ptt)
{
 struct ecore_mcp_info *info = p_hwfn->mcp_info;
 enum _ecore_status_t rc = ECORE_SUCCESS;
 bool found = 0;
 u16 i;

 DP_VERBOSE(p_hwfn, ECORE_MSG_SP, "Received message from MFW\n");


 ecore_mcp_read_mb(p_hwfn, p_ptt);


 for (i = 0; i < info->mfw_mb_length; i++) {
  if (info->mfw_mb_cur[i] == info->mfw_mb_shadow[i])
   continue;

  found = 1;

  DP_VERBOSE(p_hwfn, ECORE_MSG_LINK,
      "Msg [%d] - old CMD 0x%02x, new CMD 0x%02x\n",
      i, info->mfw_mb_shadow[i], info->mfw_mb_cur[i]);

  switch (i) {
  case 134:
   ecore_mcp_handle_link_change(p_hwfn, p_ptt, 0);
   break;
  case 128:
   ecore_mcp_handle_vf_flr(p_hwfn, p_ptt);
   break;
  case 133:
   ecore_dcbx_mib_update_event(p_hwfn, p_ptt,
          ECORE_DCBX_REMOTE_LLDP_MIB);
   break;
  case 142:
   ecore_dcbx_mib_update_event(p_hwfn, p_ptt,
          ECORE_DCBX_REMOTE_MIB);
   break;
  case 143:
   ecore_dcbx_mib_update_event(p_hwfn, p_ptt,
          ECORE_DCBX_OPERATIONAL_MIB);

   OSAL_MEMSET(&p_hwfn->p_dcbx_info->set, 0,
        sizeof(struct ecore_dcbx_set));
   break;
  case 132:
   ecore_lldp_mib_update_event(p_hwfn, p_ptt);
   break;
  case 131:
   ecore_mcp_handle_ufp_event(p_hwfn, p_ptt);
   break;
  case 129:
   ecore_mcp_handle_transceiver_change(p_hwfn, p_ptt);
   break;
  case 141:
   ecore_mcp_handle_process_kill(p_hwfn, p_ptt);
   break;
  case 137:
  case 139:
  case 138:
  case 136:
   ecore_mcp_send_protocol_stats(p_hwfn, p_ptt, i);
   break;
  case 145:
   ecore_mcp_update_bw(p_hwfn, p_ptt);
   break;
  case 130:
   ecore_mcp_update_stag(p_hwfn, p_ptt);
   break;
  case 140:
   ecore_mcp_handle_fan_failure(p_hwfn);
   break;
  case 144:
   ecore_mcp_handle_critical_error(p_hwfn, p_ptt);
   break;
  case 135:
   OSAL_MFW_TLV_REQ(p_hwfn);
   break;
  default:
   DP_INFO(p_hwfn, "Unimplemented MFW message %d\n", i);
   rc = ECORE_INVAL;
  }
 }


 for (i = 0; i < MFW_DRV_MSG_MAX_DWORDS(info->mfw_mb_length); i++) {
  OSAL_BE32 val = OSAL_CPU_TO_BE32(((u32 *)info->mfw_mb_cur)[i]);


  ecore_wr(p_hwfn, p_ptt,
    info->mfw_mb_addr + sizeof(u32) +
    MFW_DRV_MSG_MAX_DWORDS(info->mfw_mb_length) *
    sizeof(u32) + i * sizeof(u32), val);
 }

 if (!found) {
  DP_INFO(p_hwfn,
   "Received an MFW message indication but no new message!\n");
  rc = ECORE_INVAL;
 }


 OSAL_MEMCPY(info->mfw_mb_shadow, info->mfw_mb_cur, info->mfw_mb_length);

 return rc;
}
