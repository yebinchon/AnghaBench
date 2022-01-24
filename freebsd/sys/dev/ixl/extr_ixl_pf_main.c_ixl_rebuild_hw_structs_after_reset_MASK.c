#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ixl_vsi {TYPE_3__* shared; int /*<<< orphan*/  num_tx_queues; } ;
struct TYPE_5__ {int /*<<< orphan*/  asq_last_status; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_rx_qp; int /*<<< orphan*/  num_tx_qp; } ;
struct i40e_hw {TYPE_2__ aq; TYPE_1__ func_caps; } ;
struct ixl_pf {int /*<<< orphan*/  qtag; int /*<<< orphan*/  qmgr; int /*<<< orphan*/  dev; struct ixl_vsi vsi; struct i40e_hw hw; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {scalar_t__ isc_intr; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int I40E_ERR_FIRMWARE_API_VERSION ; 
 int /*<<< orphan*/  I40E_HMC_MODEL_DIRECT_ONLY ; 
 scalar_t__ IFLIB_INTR_MSIX ; 
 int /*<<< orphan*/  IXL_DEFAULT_PHY_INT_MASK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*) ; 
 int FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i40e_hw*) ; 
 int FUNC6 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct i40e_hw*) ; 
 int FUNC8 (struct i40e_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct i40e_hw*,int) ; 
 scalar_t__ FUNC10 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC11 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC12 (struct ixl_vsi*) ; 
 int /*<<< orphan*/  FUNC13 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct ixl_pf*) ; 
 int FUNC15 (struct ixl_pf*) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct ixl_pf*) ; 

int
FUNC18(struct ixl_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	struct ixl_vsi *vsi = &pf->vsi;
	device_t dev = pf->dev;
	int error = 0;

	FUNC0(dev, "Rebuilding driver state...\n");

	error = FUNC7(hw);
	if (error) {
		FUNC0(dev, "PF reset failure %s\n",
		    FUNC9(hw, error));
		goto ixl_rebuild_hw_structs_after_reset_err;
	}

	/* Setup */
	error = FUNC5(hw);
	if (error != 0 && error != I40E_ERR_FIRMWARE_API_VERSION) {
		FUNC0(dev, "Unable to initialize Admin Queue, error %d\n",
		    error);
		goto ixl_rebuild_hw_structs_after_reset_err;
	}

	FUNC3(hw);

	error = FUNC15(pf);
	if (error) {
		FUNC0(dev, "ixl_get_hw_capabilities failed: %d\n", error);
		goto ixl_rebuild_hw_structs_after_reset_err;
	}

	error = FUNC6(hw, hw->func_caps.num_tx_qp,
	    hw->func_caps.num_rx_qp, 0, 0);
	if (error) {
		FUNC0(dev, "init_lan_hmc failed: %d\n", error);
		goto ixl_rebuild_hw_structs_after_reset_err;
	}

	error = FUNC4(hw, I40E_HMC_MODEL_DIRECT_ONLY);
	if (error) {
		FUNC0(dev, "configure_lan_hmc failed: %d\n", error);
		goto ixl_rebuild_hw_structs_after_reset_err;
	}

	/* reserve a contiguous allocation for the PF's VSI */
	error = FUNC16(&pf->qmgr, vsi->num_tx_queues, &pf->qtag);
	if (error) {
		FUNC0(dev, "Failed to reserve queues for PF LAN VSI, error %d\n",
		    error);
		/* TODO: error handling */
	}

	error = FUNC17(pf);
	if (error) {
		FUNC0(dev, "ixl_rebuild_hw_structs_after_reset: ixl_switch_config() failed: %d\n",
		     error);
		error = EIO;
		goto ixl_rebuild_hw_structs_after_reset_err;
	}

	error = FUNC2(hw, IXL_DEFAULT_PHY_INT_MASK,
	    NULL);
        if (error) {
		FUNC0(dev, "init: i40e_aq_set_phy_mask() failed: err %d,"
		    " aq_err %d\n", error, hw->aq.asq_last_status);
		error = EIO;
		goto ixl_rebuild_hw_structs_after_reset_err;
	}

	u8 set_fc_err_mask;
	error = FUNC8(hw, &set_fc_err_mask, true);
	if (error) {
		FUNC0(dev, "init: setting link flow control failed; retcode %d,"
		    " fc_err_mask 0x%02x\n", error, set_fc_err_mask);
		error = EIO;
		goto ixl_rebuild_hw_structs_after_reset_err;
	}

	/* Remove default filters reinstalled by FW on reset */
	FUNC12(vsi);

	/* Determine link state */
	if (FUNC10(pf)) {
		error = EINVAL;
		/* TODO: error handling */
	}

	FUNC1(hw, TRUE, NULL);
	FUNC14(pf);

	/* Keep admin queue interrupts active while driver is loaded */
	if (vsi->shared->isc_intr == IFLIB_INTR_MSIX) {
 		FUNC11(pf);
 		FUNC13(hw);
	}

	FUNC0(dev, "Rebuilding driver state done.\n");
	return (0);

ixl_rebuild_hw_structs_after_reset_err:
	FUNC0(dev, "Reload the driver to recover\n");
	return (error);
}