
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ixl_vsi {TYPE_3__* shared; int num_tx_queues; } ;
struct TYPE_5__ {int asq_last_status; } ;
struct TYPE_4__ {int num_rx_qp; int num_tx_qp; } ;
struct i40e_hw {TYPE_2__ aq; TYPE_1__ func_caps; } ;
struct ixl_pf {int qtag; int qmgr; int dev; struct ixl_vsi vsi; struct i40e_hw hw; } ;
typedef int device_t ;
struct TYPE_6__ {scalar_t__ isc_intr; } ;


 int EINVAL ;
 int EIO ;
 int I40E_ERR_FIRMWARE_API_VERSION ;
 int I40E_HMC_MODEL_DIRECT_ONLY ;
 scalar_t__ IFLIB_INTR_MSIX ;
 int IXL_DEFAULT_PHY_INT_MASK ;
 int TRUE ;
 int device_printf (int ,char*,...) ;
 int i40e_aq_set_dcb_parameters (struct i40e_hw*,int ,int *) ;
 int i40e_aq_set_phy_int_mask (struct i40e_hw*,int ,int *) ;
 int i40e_clear_pxe_mode (struct i40e_hw*) ;
 int i40e_configure_lan_hmc (struct i40e_hw*,int ) ;
 int i40e_init_adminq (struct i40e_hw*) ;
 int i40e_init_lan_hmc (struct i40e_hw*,int ,int ,int ,int ) ;
 int i40e_pf_reset (struct i40e_hw*) ;
 int i40e_set_fc (struct i40e_hw*,int *,int) ;
 int i40e_stat_str (struct i40e_hw*,int) ;
 scalar_t__ ixl_attach_get_link_status (struct ixl_pf*) ;
 int ixl_configure_intr0_msix (struct ixl_pf*) ;
 int ixl_del_default_hw_filters (struct ixl_vsi*) ;
 int ixl_enable_intr0 (struct i40e_hw*) ;
 int ixl_get_fw_lldp_status (struct ixl_pf*) ;
 int ixl_get_hw_capabilities (struct ixl_pf*) ;
 int ixl_pf_qmgr_alloc_contiguous (int *,int ,int *) ;
 int ixl_switch_config (struct ixl_pf*) ;

int
ixl_rebuild_hw_structs_after_reset(struct ixl_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 struct ixl_vsi *vsi = &pf->vsi;
 device_t dev = pf->dev;
 int error = 0;

 device_printf(dev, "Rebuilding driver state...\n");

 error = i40e_pf_reset(hw);
 if (error) {
  device_printf(dev, "PF reset failure %s\n",
      i40e_stat_str(hw, error));
  goto ixl_rebuild_hw_structs_after_reset_err;
 }


 error = i40e_init_adminq(hw);
 if (error != 0 && error != I40E_ERR_FIRMWARE_API_VERSION) {
  device_printf(dev, "Unable to initialize Admin Queue, error %d\n",
      error);
  goto ixl_rebuild_hw_structs_after_reset_err;
 }

 i40e_clear_pxe_mode(hw);

 error = ixl_get_hw_capabilities(pf);
 if (error) {
  device_printf(dev, "ixl_get_hw_capabilities failed: %d\n", error);
  goto ixl_rebuild_hw_structs_after_reset_err;
 }

 error = i40e_init_lan_hmc(hw, hw->func_caps.num_tx_qp,
     hw->func_caps.num_rx_qp, 0, 0);
 if (error) {
  device_printf(dev, "init_lan_hmc failed: %d\n", error);
  goto ixl_rebuild_hw_structs_after_reset_err;
 }

 error = i40e_configure_lan_hmc(hw, I40E_HMC_MODEL_DIRECT_ONLY);
 if (error) {
  device_printf(dev, "configure_lan_hmc failed: %d\n", error);
  goto ixl_rebuild_hw_structs_after_reset_err;
 }


 error = ixl_pf_qmgr_alloc_contiguous(&pf->qmgr, vsi->num_tx_queues, &pf->qtag);
 if (error) {
  device_printf(dev, "Failed to reserve queues for PF LAN VSI, error %d\n",
      error);

 }

 error = ixl_switch_config(pf);
 if (error) {
  device_printf(dev, "ixl_rebuild_hw_structs_after_reset: ixl_switch_config() failed: %d\n",
       error);
  error = EIO;
  goto ixl_rebuild_hw_structs_after_reset_err;
 }

 error = i40e_aq_set_phy_int_mask(hw, IXL_DEFAULT_PHY_INT_MASK,
     ((void*)0));
        if (error) {
  device_printf(dev, "init: i40e_aq_set_phy_mask() failed: err %d,"
      " aq_err %d\n", error, hw->aq.asq_last_status);
  error = EIO;
  goto ixl_rebuild_hw_structs_after_reset_err;
 }

 u8 set_fc_err_mask;
 error = i40e_set_fc(hw, &set_fc_err_mask, 1);
 if (error) {
  device_printf(dev, "init: setting link flow control failed; retcode %d,"
      " fc_err_mask 0x%02x\n", error, set_fc_err_mask);
  error = EIO;
  goto ixl_rebuild_hw_structs_after_reset_err;
 }


 ixl_del_default_hw_filters(vsi);


 if (ixl_attach_get_link_status(pf)) {
  error = EINVAL;

 }

 i40e_aq_set_dcb_parameters(hw, TRUE, ((void*)0));
 ixl_get_fw_lldp_status(pf);


 if (vsi->shared->isc_intr == IFLIB_INTR_MSIX) {
   ixl_configure_intr0_msix(pf);
   ixl_enable_intr0(hw);
 }

 device_printf(dev, "Rebuilding driver state done.\n");
 return (0);

ixl_rebuild_hw_structs_after_reset_err:
 device_printf(dev, "Reload the driver to recover\n");
 return (error);
}
