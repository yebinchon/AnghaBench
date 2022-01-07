
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int asq_last_status; int fw_maj_ver; int fw_min_ver; } ;
struct TYPE_3__ {int num_rx_qp; int num_tx_qp; } ;
struct i40e_hw {TYPE_2__ aq; TYPE_1__ func_caps; } ;
struct ixl_pf {int msix; int state; int dev; struct i40e_hw hw; } ;
typedef int device_t ;


 int EIO ;
 int I40E_HMC_MODEL_DIRECT_ONLY ;
 int I40E_PFINT_ICR0_ENA ;
 int IXL_DEFAULT_PHY_INT_MASK ;
 int IXL_ICR0_CRIT_ERR_MASK ;
 int IXL_PF_STATE_PF_CRIT_ERR ;
 int IXL_PF_STATE_PF_RESET_REQ ;
 int TRUE ;
 int atomic_clear_32 (int *,int ) ;
 int device_printf (int ,char*,...) ;
 int i40e_aq_set_link_restart_an (struct i40e_hw*,int ,int *) ;
 int i40e_aq_set_phy_int_mask (struct i40e_hw*,int ,int *) ;
 int i40e_clear_hw (struct i40e_hw*) ;
 int i40e_clear_pxe_mode (struct i40e_hw*) ;
 int i40e_configure_lan_hmc (struct i40e_hw*,int ) ;
 int i40e_init_adminq (struct i40e_hw*) ;
 int i40e_init_lan_hmc (struct i40e_hw*,int ,int ,int ,int ) ;
 int i40e_msec_delay (int) ;
 int i40e_pf_reset (struct i40e_hw*) ;
 int i40e_set_fc (struct i40e_hw*,int *,int) ;
 int ixl_configure_intr0_msix (struct ixl_pf*) ;
 int ixl_enable_intr0 (struct i40e_hw*) ;
 int ixl_get_hw_capabilities (struct ixl_pf*) ;
 int ixl_rebuild_hw_structs_after_reset (struct ixl_pf*) ;
 int ixl_switch_config (struct ixl_pf*) ;
 int rd32 (struct i40e_hw*,int ) ;
 int set_fc_err_mask ;
 int wr32 (struct i40e_hw*,int ,int ) ;

int
ixl_reset(struct ixl_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 device_t dev = pf->dev;
 u32 reg;
 int error = 0;


 i40e_clear_hw(hw);
 error = i40e_pf_reset(hw);
 if (error) {
  device_printf(dev, "init: PF reset failure\n");
  error = EIO;
  goto err_out;
 }

 error = i40e_init_adminq(hw);
 if (error) {
  device_printf(dev, "init: Admin queue init failure;"
      " status code %d\n", error);
  error = EIO;
  goto err_out;
 }

 i40e_clear_pxe_mode(hw);
 ixl_rebuild_hw_structs_after_reset(pf);


 atomic_clear_32(&pf->state, IXL_PF_STATE_PF_CRIT_ERR);
 atomic_clear_32(&pf->state, IXL_PF_STATE_PF_RESET_REQ);

 reg = rd32(hw, I40E_PFINT_ICR0_ENA);
 reg |= IXL_ICR0_CRIT_ERR_MASK;
 wr32(hw, I40E_PFINT_ICR0_ENA, reg);

 err_out:
  return (error);
}
