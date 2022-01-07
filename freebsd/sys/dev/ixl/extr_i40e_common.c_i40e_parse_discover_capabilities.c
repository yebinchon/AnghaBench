
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct i40e_hw_capabilities {int switch_mode; int management_mode; int mng_protocols_over_mctp; int npar_enable; int os2bmc; int valid_functions; int num_vfs; int vf_base_id; int num_vsis; int enabled_tcmap; int maxtc; int rss_table_size; int rss_table_entry_width; int num_rx_qp; int base_queue; int num_tx_qp; int num_msix_vectors; int num_msix_vectors_vf; int flex10_mode; int flex10_status; int mdio_port_num; int mdio_port_mode; int fd_filters_guaranteed; int fd_filters_best_effort; int wr_csr_prot; int apm_wol_support; int proxy_support; int rx_buf_chain_len; void* fcoe; int acpi_prog_method; void* update_disabled; void* sec_rev_disabled; void* fd; void* ieee_1588; void** sdp; void** led; void* iwarp; void* mgmt_cem; void* flex10_capable; void* flex10_enable; void* rss; void* iscsi; void* dcb; void* evb_802_1_qbh; void* evb_802_1_qbg; void* vmdq; void* sr_iov_1_1; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct i40e_hw {int num_wol_proxy_filters; int wol_proxy_vsi_seid; int num_ports; int partition_id; int pf_id; int num_partitions; TYPE_1__ mac; int func_caps; int dev_caps; } ;
struct i40e_aqc_list_capabilities_element_resp {int major_rev; int phys_id; int logical_id; int number; int id; } ;
typedef int ocp_cfg_word0 ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef enum i40e_admin_queue_opc { ____Placeholder_i40e_admin_queue_opc } i40e_admin_queue_opc ;


 void* FALSE ;
 int I40E_ACPI_PROGRAMMING_METHOD_AQC_FPK ;
 int I40E_ACPI_PROGRAMMING_METHOD_HW_FVL ;
 int I40E_ACPI_PROGRAMMING_METHOD_MASK ;
 int I40E_DEBUG_ALL ;
 int I40E_DEBUG_INIT ;
 int I40E_HW_CAP_MAX_GPIO ;
 scalar_t__ I40E_MAC_X722 ;
 int I40E_MAX_CHAINED_RX_BUFFERS ;
 int I40E_NVM_MGMT_SEC_REV_DISABLED ;
 int I40E_NVM_MGMT_UPDATE_DISABLED ;
 int I40E_PROXY_SUPPORT_MASK ;
 int I40E_PRTGEN_CNF ;
 int I40E_PRTGEN_CNF_PORT_DIS_MASK ;
 int I40E_RESOURCE_READ ;
 int I40E_SR_EMP_MODULE_PTR ;
 int I40E_SR_OCP_CFG_WORD0 ;
 int I40E_SR_OCP_ENABLED ;
 scalar_t__ I40E_SUCCESS ;
 int I40E_WOL_SUPPORT_MASK ;
 int LE16_TO_CPU (int ) ;
 int LE32_TO_CPU (int ) ;
 void* TRUE ;
 scalar_t__ i40e_acquire_nvm (struct i40e_hw*,int ) ;
 int i40e_aq_debug_read_register (struct i40e_hw*,int,int*,int *) ;
 int i40e_aq_read_nvm (struct i40e_hw*,int ,int,int,int*,void*,int *) ;
 int i40e_aqc_opc_list_dev_capabilities ;
 int i40e_aqc_opc_list_func_capabilities ;
 int i40e_debug (struct i40e_hw*,int ,char*,...) ;
 int i40e_release_nvm (struct i40e_hw*) ;

__attribute__((used)) static void i40e_parse_discover_capabilities(struct i40e_hw *hw, void *buff,
         u32 cap_count,
         enum i40e_admin_queue_opc list_type_opc)
{
 struct i40e_aqc_list_capabilities_element_resp *cap;
 u32 valid_functions, num_functions;
 u32 number, logical_id, phys_id;
 struct i40e_hw_capabilities *p;
 enum i40e_status_code status;
 u16 id, ocp_cfg_word0;
 u8 major_rev;
 u32 i = 0;

 cap = (struct i40e_aqc_list_capabilities_element_resp *) buff;

 if (list_type_opc == i40e_aqc_opc_list_dev_capabilities)
  p = (struct i40e_hw_capabilities *)&hw->dev_caps;
 else if (list_type_opc == i40e_aqc_opc_list_func_capabilities)
  p = (struct i40e_hw_capabilities *)&hw->func_caps;
 else
  return;

 for (i = 0; i < cap_count; i++, cap++) {
  id = LE16_TO_CPU(cap->id);
  number = LE32_TO_CPU(cap->number);
  logical_id = LE32_TO_CPU(cap->logical_id);
  phys_id = LE32_TO_CPU(cap->phys_id);
  major_rev = cap->major_rev;

  switch (id) {
  case 135:
   p->switch_mode = number;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: Switch mode = %d\n",
       p->switch_mode);
   break;
  case 144:
   p->management_mode = number;
   if (major_rev > 1) {
    p->mng_protocols_over_mctp = logical_id;
    i40e_debug(hw, I40E_DEBUG_INIT,
        "HW Capability: Protocols over MCTP = %d\n",
        p->mng_protocols_over_mctp);
   } else {
    p->mng_protocols_over_mctp = 0;
   }
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: Management Mode = %d\n",
       p->management_mode);
   break;
  case 142:
   p->npar_enable = number;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: NPAR enable = %d\n",
       p->npar_enable);
   break;
  case 140:
   p->os2bmc = number;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: OS2BMC = %d\n", p->os2bmc);
   break;
  case 149:
   p->valid_functions = number;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: Valid Functions = %d\n",
       p->valid_functions);
   break;
  case 136:
   if (number == 1)
    p->sr_iov_1_1 = TRUE;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: SR-IOV = %d\n",
       p->sr_iov_1_1);
   break;
  case 133:
   p->num_vfs = number;
   p->vf_base_id = logical_id;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: VF count = %d\n",
       p->num_vfs);
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: VF base_id = %d\n",
       p->vf_base_id);
   break;
  case 131:
   if (number == 1)
    p->vmdq = TRUE;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: VMDQ = %d\n", p->vmdq);
   break;
  case 156:
   if (number == 1)
    p->evb_802_1_qbg = TRUE;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: 802.1Qbg = %d\n", number);
   break;
  case 155:
   if (number == 1)
    p->evb_802_1_qbh = TRUE;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: 802.1Qbh = %d\n", number);
   break;
  case 130:
   p->num_vsis = number;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: VSI count = %d\n",
       p->num_vsis);
   break;
  case 153:
   if (number == 1) {
    p->dcb = TRUE;
    p->enabled_tcmap = logical_id;
    p->maxtc = phys_id;
   }
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: DCB = %d\n", p->dcb);
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: TC Mapping = %d\n",
       logical_id);
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: TC Max = %d\n", p->maxtc);
   break;
  case 152:
   if (number == 1)
    p->fcoe = TRUE;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: FCOE = %d\n", p->fcoe);
   break;
  case 148:
   if (number == 1)
    p->iscsi = TRUE;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: iSCSI = %d\n", p->iscsi);
   break;
  case 139:
   p->rss = TRUE;
   p->rss_table_size = number;
   p->rss_table_entry_width = logical_id;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: RSS = %d\n", p->rss);
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: RSS table size = %d\n",
       p->rss_table_size);
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: RSS table width = %d\n",
       p->rss_table_entry_width);
   break;
  case 138:
   p->num_rx_qp = number;
   p->base_queue = phys_id;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: Rx QP = %d\n", number);
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: base_queue = %d\n",
       p->base_queue);
   break;
  case 134:
   p->num_tx_qp = number;
   p->base_queue = phys_id;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: Tx QP = %d\n", number);
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: base_queue = %d\n",
       p->base_queue);
   break;
  case 143:
   p->num_msix_vectors = number;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: MSIX vector count = %d\n",
       p->num_msix_vectors);
   break;
  case 132:
   p->num_msix_vectors_vf = number;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: MSIX VF vector count = %d\n",
       p->num_msix_vectors_vf);
   break;
  case 151:
   if (major_rev == 1) {
    if (number == 1) {
     p->flex10_enable = TRUE;
     p->flex10_capable = TRUE;
    }
   } else {

    if (number & 1)
     p->flex10_enable = TRUE;
    if (number & 2)
     p->flex10_capable = TRUE;
   }
   p->flex10_mode = logical_id;
   p->flex10_status = phys_id;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: Flex10 mode = %d\n",
       p->flex10_mode);
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: Flex10 status = %d\n",
       p->flex10_status);
   break;
  case 154:
   if (number == 1)
    p->mgmt_cem = TRUE;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: CEM = %d\n", p->mgmt_cem);
   break;
  case 147:
   if (number == 1)
    p->iwarp = TRUE;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: iWARP = %d\n", p->iwarp);
   break;
  case 146:
   if (phys_id < I40E_HW_CAP_MAX_GPIO)
    p->led[phys_id] = TRUE;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: LED - PIN %d\n", phys_id);
   break;
  case 137:
   if (phys_id < I40E_HW_CAP_MAX_GPIO)
    p->sdp[phys_id] = TRUE;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: SDP - PIN %d\n", phys_id);
   break;
  case 145:
   if (number == 1) {
    p->mdio_port_num = phys_id;
    p->mdio_port_mode = logical_id;
   }
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: MDIO port number = %d\n",
       p->mdio_port_num);
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: MDIO port mode = %d\n",
       p->mdio_port_mode);
   break;
  case 157:
   if (number == 1)
    p->ieee_1588 = TRUE;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: IEEE 1588 = %d\n",
       p->ieee_1588);
   break;
  case 150:
   p->fd = TRUE;
   p->fd_filters_guaranteed = number;
   p->fd_filters_best_effort = logical_id;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: Flow Director = 1\n");
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: Guaranteed FD filters = %d\n",
       p->fd_filters_guaranteed);
   break;
  case 128:
   p->wr_csr_prot = (u64)number;
   p->wr_csr_prot |= (u64)logical_id << 32;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: wr_csr_prot = 0x%llX\n\n",
       (p->wr_csr_prot & 0xffff));
   break;
  case 141:
   if (number & I40E_NVM_MGMT_SEC_REV_DISABLED)
    p->sec_rev_disabled = TRUE;
   if (number & I40E_NVM_MGMT_UPDATE_DISABLED)
    p->update_disabled = TRUE;
   break;
  case 129:
   hw->num_wol_proxy_filters = (u16)number;
   hw->wol_proxy_vsi_seid = (u16)logical_id;
   p->apm_wol_support = phys_id & I40E_WOL_SUPPORT_MASK;
   if (phys_id & I40E_ACPI_PROGRAMMING_METHOD_MASK)
    p->acpi_prog_method = I40E_ACPI_PROGRAMMING_METHOD_AQC_FPK;
   else
    p->acpi_prog_method = I40E_ACPI_PROGRAMMING_METHOD_HW_FVL;
   p->proxy_support = (phys_id & I40E_PROXY_SUPPORT_MASK) ? 1 : 0;
   i40e_debug(hw, I40E_DEBUG_INIT,
       "HW Capability: WOL proxy filters = %d\n",
       hw->num_wol_proxy_filters);
   break;
  default:
   break;
  }
 }

 if (p->fcoe)
  i40e_debug(hw, I40E_DEBUG_ALL, "device is FCoE capable\n");


 p->fcoe = FALSE;


 hw->num_ports = 0;
 for (i = 0; i < 4; i++) {
  u32 port_cfg_reg = I40E_PRTGEN_CNF + (4 * i);
  u64 port_cfg = 0;




  i40e_aq_debug_read_register(hw, port_cfg_reg, &port_cfg, ((void*)0));
  if (!(port_cfg & I40E_PRTGEN_CNF_PORT_DIS_MASK))
   hw->num_ports++;
 }
 if (hw->mac.type == I40E_MAC_X722) {
  if (i40e_acquire_nvm(hw, I40E_RESOURCE_READ) == I40E_SUCCESS) {
   status = i40e_aq_read_nvm(hw, I40E_SR_EMP_MODULE_PTR,
        2 * I40E_SR_OCP_CFG_WORD0,
        sizeof(ocp_cfg_word0),
        &ocp_cfg_word0, TRUE, ((void*)0));
   if (status == I40E_SUCCESS &&
       (ocp_cfg_word0 & I40E_SR_OCP_ENABLED))
    hw->num_ports = 4;
   i40e_release_nvm(hw);
  }
 }

 valid_functions = p->valid_functions;
 num_functions = 0;
 while (valid_functions) {
  if (valid_functions & 1)
   num_functions++;
  valid_functions >>= 1;
 }




 if (hw->num_ports != 0) {
  hw->partition_id = (hw->pf_id / hw->num_ports) + 1;
  hw->num_partitions = num_functions / hw->num_ports;
 }




 p->rx_buf_chain_len = I40E_MAX_CHAINED_RX_BUFFERS;
}
