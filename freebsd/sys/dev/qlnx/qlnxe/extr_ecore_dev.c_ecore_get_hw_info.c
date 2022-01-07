
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_4__ {scalar_t__ ovlan; int personality; int num_active_tc; int mtu; int num_hw_tc; int * hw_mac_addr; } ;
struct ecore_hwfn {TYPE_3__* mcp_info; TYPE_1__ hw_info; int rel_pf_id; int p_dev; int abs_pf_id; } ;
struct ecore_hw_prepare_params {int drv_resc_alloc; int p_relaxed_res; scalar_t__ b_relaxed_probe; } ;
typedef enum ecore_pci_personality { ____Placeholder_ecore_pci_personality } ecore_pci_personality ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_5__ {int* mac; scalar_t__ ovlan; int protocol; int mtu; } ;
struct TYPE_6__ {TYPE_2__ func_info; } ;


 scalar_t__ CHIP_REV_IS_ASIC (int ) ;
 scalar_t__ CHIP_REV_IS_EMUL (int ) ;
 int ECORE_HW_PREPARE_BAD_IGU ;
 int ECORE_HW_PREPARE_BAD_IOV ;
 int ECORE_HW_PREPARE_BAD_MCP ;
 scalar_t__ ECORE_IS_AH (int ) ;
 scalar_t__ ECORE_MCP_VLAN_UNSET ;
 int ECORE_PCI_DEFAULT ;
 int ECORE_PCI_ETH ;
 int ECORE_PCI_ETH_ROCE ;
 int ECORE_SUCCESS ;
 int ETH_ALEN ;
 scalar_t__ IS_LEAD_HWFN (struct ecore_hwfn*) ;
 int NUM_PHYS_TCS_4PORT_K2 ;
 int OSAL_MEMCPY (int *,int*,int ) ;
 int ecore_get_num_funcs (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_hw_get_nvm_info (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_hw_prepare_params*) ;
 int ecore_hw_get_resc (struct ecore_hwfn*,struct ecore_ptt*,int) ;
 int ecore_hw_info_port_num (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_int_igu_read_cam (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_iov_hw_info (struct ecore_hwfn*) ;
 int ecore_mcp_cmd_port_init (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_mcp_get_capabilities (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_mcp_get_eee_caps (struct ecore_hwfn*,struct ecore_ptt*) ;
 scalar_t__ ecore_mcp_is_init (struct ecore_hwfn*) ;
 int ecore_mcp_read_ufp_config (struct ecore_hwfn*,struct ecore_ptt*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_get_hw_info(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
    enum ecore_pci_personality personality,
    struct ecore_hw_prepare_params *p_params)
{
 bool drv_resc_alloc = p_params->drv_resc_alloc;
 enum _ecore_status_t rc;


 if (IS_LEAD_HWFN(p_hwfn)) {
  rc = ecore_iov_hw_info(p_hwfn);
  if (rc != ECORE_SUCCESS) {
   if (p_params->b_relaxed_probe)
    p_params->p_relaxed_res =
      ECORE_HW_PREPARE_BAD_IOV;
   else
    return rc;
  }
 }

 if (IS_LEAD_HWFN(p_hwfn))
  ecore_hw_info_port_num(p_hwfn, p_ptt);

 ecore_mcp_get_capabilities(p_hwfn, p_ptt);


 if (CHIP_REV_IS_ASIC(p_hwfn->p_dev)) {

 rc = ecore_hw_get_nvm_info(p_hwfn, p_ptt, p_params);
 if (rc != ECORE_SUCCESS)
  return rc;

 }


 rc = ecore_int_igu_read_cam(p_hwfn, p_ptt);
 if (rc != ECORE_SUCCESS) {
  if (p_params->b_relaxed_probe)
   p_params->p_relaxed_res = ECORE_HW_PREPARE_BAD_IGU;
  else
   return rc;
 }


 if (CHIP_REV_IS_ASIC(p_hwfn->p_dev) && ecore_mcp_is_init(p_hwfn)) {

 OSAL_MEMCPY(p_hwfn->hw_info.hw_mac_addr,
      p_hwfn->mcp_info->func_info.mac, ETH_ALEN);

 } else {
  static u8 mcp_hw_mac[6] = {0, 2, 3, 4, 5, 6};

  OSAL_MEMCPY(p_hwfn->hw_info.hw_mac_addr, mcp_hw_mac, ETH_ALEN);
  p_hwfn->hw_info.hw_mac_addr[5] = p_hwfn->abs_pf_id;
 }


 if (ecore_mcp_is_init(p_hwfn)) {
  if (p_hwfn->mcp_info->func_info.ovlan != ECORE_MCP_VLAN_UNSET)
   p_hwfn->hw_info.ovlan =
    p_hwfn->mcp_info->func_info.ovlan;

  ecore_mcp_cmd_port_init(p_hwfn, p_ptt);

  ecore_mcp_get_eee_caps(p_hwfn, p_ptt);

  ecore_mcp_read_ufp_config(p_hwfn, p_ptt);
 }

 if (personality != ECORE_PCI_DEFAULT) {
  p_hwfn->hw_info.personality = personality;
 } else if (ecore_mcp_is_init(p_hwfn)) {
  enum ecore_pci_personality protocol;

  protocol = p_hwfn->mcp_info->func_info.protocol;
  p_hwfn->hw_info.personality = protocol;
 }





 if (CHIP_REV_IS_EMUL(p_hwfn->p_dev) && ECORE_IS_AH(p_hwfn->p_dev)) {
  if (!p_hwfn->rel_pf_id)
   p_hwfn->hw_info.personality = ECORE_PCI_ETH_ROCE;
  else
   p_hwfn->hw_info.personality = ECORE_PCI_ETH;
 }






 p_hwfn->hw_info.num_hw_tc = NUM_PHYS_TCS_4PORT_K2;




 p_hwfn->hw_info.num_active_tc = 1;

 ecore_get_num_funcs(p_hwfn, p_ptt);

 if (ecore_mcp_is_init(p_hwfn))
  p_hwfn->hw_info.mtu = p_hwfn->mcp_info->func_info.mtu;







 rc = ecore_hw_get_resc(p_hwfn, p_ptt, drv_resc_alloc);
 if (rc != ECORE_SUCCESS && p_params->b_relaxed_probe) {
  rc = ECORE_SUCCESS;
  p_params->p_relaxed_res = ECORE_HW_PREPARE_BAD_MCP;
 }

 return rc;
}
