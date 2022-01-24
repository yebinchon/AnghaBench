#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int asq_last_status; int fw_maj_ver; int fw_min_ver; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_rx_qp; int /*<<< orphan*/  num_tx_qp; } ;
struct i40e_hw {TYPE_2__ aq; TYPE_1__ func_caps; } ;
struct ixl_pf {int msix; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; struct i40e_hw hw; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  I40E_HMC_MODEL_DIRECT_ONLY ; 
 int /*<<< orphan*/  I40E_PFINT_ICR0_ENA ; 
 int /*<<< orphan*/  IXL_DEFAULT_PHY_INT_MASK ; 
 int /*<<< orphan*/  IXL_ICR0_CRIT_ERR_MASK ; 
 int /*<<< orphan*/  IXL_PF_STATE_PF_CRIT_ERR ; 
 int /*<<< orphan*/  IXL_PF_STATE_PF_RESET_REQ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*) ; 
 int FUNC6 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct i40e_hw*) ; 
 int FUNC8 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (struct i40e_hw*) ; 
 int FUNC11 (struct i40e_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC13 (struct i40e_hw*) ; 
 int FUNC14 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC15 (struct ixl_pf*) ; 
 int FUNC16 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC17 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_fc_err_mask ; 
 int /*<<< orphan*/  FUNC18 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC19(struct ixl_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	device_t dev = pf->dev;
	u32 reg;
	int error = 0;

	// XXX: clear_hw() actually writes to hw registers -- maybe this isn't necessary
	FUNC4(hw);
	error = FUNC10(hw);
	if (error) {
		FUNC1(dev, "init: PF reset failure\n");
		error = EIO;
		goto err_out;
	}

	error = FUNC7(hw);
	if (error) {
		FUNC1(dev, "init: Admin queue init failure;"
		    " status code %d\n", error);
		error = EIO;
		goto err_out;
	}

	FUNC5(hw);

#if 0
	error = ixl_get_hw_capabilities(pf);
	if (error) {
		device_printf(dev, "init: Error retrieving HW capabilities;"
		    " status code %d\n", error);
		goto err_out;
	}

	error = i40e_init_lan_hmc(hw, hw->func_caps.num_tx_qp,
	    hw->func_caps.num_rx_qp, 0, 0);
	if (error) {
		device_printf(dev, "init: LAN HMC init failed; status code %d\n",
		    error);
		error = EIO;
		goto err_out;
	}

	error = i40e_configure_lan_hmc(hw, I40E_HMC_MODEL_DIRECT_ONLY);
	if (error) {
		device_printf(dev, "init: LAN HMC config failed; status code %d\n",
		    error);
		error = EIO;
		goto err_out;
	}

	// XXX: possible fix for panic, but our failure recovery is still broken
	error = ixl_switch_config(pf);
	if (error) {
		device_printf(dev, "init: ixl_switch_config() failed: %d\n",
		     error);
		goto err_out;
	}

	error = i40e_aq_set_phy_int_mask(hw, IXL_DEFAULT_PHY_INT_MASK,
	    NULL);
        if (error) {
		device_printf(dev, "init: i40e_aq_set_phy_mask() failed: err %d,"
		    " aq_err %d\n", error, hw->aq.asq_last_status);
		error = EIO;
		goto err_out;
	}

	error = i40e_set_fc(hw, &set_fc_err_mask, true);
	if (error) {
		device_printf(dev, "init: setting link flow control failed; retcode %d,"
		    " fc_err_mask 0x%02x\n", error, set_fc_err_mask);
		goto err_out;
	}

	// XXX: (Rebuild VSIs?)

	/* Firmware delay workaround */
	if (((hw->aq.fw_maj_ver == 4) && (hw->aq.fw_min_ver < 33)) ||
	    (hw->aq.fw_maj_ver < 4)) {
		i40e_msec_delay(75);
		error = i40e_aq_set_link_restart_an(hw, TRUE, NULL);
		if (error) {
			device_printf(dev, "init: link restart failed, aq_err %d\n",
			    hw->aq.asq_last_status);
			goto err_out;
		}
	}


	/* Re-enable admin queue interrupt */
	if (pf->msix > 1) {
		ixl_configure_intr0_msix(pf);
		ixl_enable_intr0(hw);
	}

err_out:
	return (error);
#endif
	FUNC15(pf);

	/* The PF reset should have cleared any critical errors */
	FUNC0(&pf->state, IXL_PF_STATE_PF_CRIT_ERR);
	FUNC0(&pf->state, IXL_PF_STATE_PF_RESET_REQ);
 
	reg = FUNC17(hw, I40E_PFINT_ICR0_ENA);
	reg |= IXL_ICR0_CRIT_ERR_MASK;
	FUNC18(hw, I40E_PFINT_ICR0_ENA, reg);

 err_out:
 	return (error);
}