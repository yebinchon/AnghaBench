
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 scalar_t__ ECORE_IS_BB (int ) ;
 int ecore_mcp_config_vf_msix_ah (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_mcp_config_vf_msix_bb (struct ecore_hwfn*,struct ecore_ptt*,int ,int ) ;

enum _ecore_status_t ecore_mcp_config_vf_msix(struct ecore_hwfn *p_hwfn,
           struct ecore_ptt *p_ptt,
           u8 vf_id, u8 num)
{
 if (ECORE_IS_BB(p_hwfn->p_dev))
  return ecore_mcp_config_vf_msix_bb(p_hwfn, p_ptt, vf_id, num);
 else
  return ecore_mcp_config_vf_msix_ah(p_hwfn, p_ptt, num);
}
