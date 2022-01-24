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
typedef  int /*<<< orphan*/  u8 ;
struct ixl_vsi {int /*<<< orphan*/  seid; scalar_t__ enable_head_writeback; TYPE_2__* shared; int /*<<< orphan*/  ifp; } ;
struct TYPE_3__ {int /*<<< orphan*/ * addr; } ;
struct i40e_hw {TYPE_1__ mac; } ;
struct ixl_pf {scalar_t__ iw_enabled; struct i40e_hw hw; struct ixl_vsi vsi; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {scalar_t__ isc_intr; } ;

/* Variables and functions */
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  I40E_AQC_WRITE_TYPE_LAA_ONLY ; 
 scalar_t__ I40E_SUCCESS ; 
 scalar_t__ IFLIB_INTR_MSIX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXL_VLAN_ANY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_hw*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC10 (int /*<<< orphan*/ ) ; 
 struct ixl_pf* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ixl_vsi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC15 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC16 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC17 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC18 (struct ixl_vsi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ ixl_enable_iwarp ; 
 int /*<<< orphan*/  FUNC19 (struct ixl_vsi*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct ixl_vsi*) ; 
 int /*<<< orphan*/  FUNC23 (struct ixl_vsi*) ; 
 scalar_t__ FUNC24 (struct ixl_vsi*) ; 
 int FUNC25 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC26 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC27 (struct ixl_vsi*) ; 
 int /*<<< orphan*/  FUNC28 (struct ixl_pf*) ; 

void
FUNC29(if_ctx_t ctx)
{
	struct ixl_pf *pf = FUNC11(ctx);
	struct ixl_vsi *vsi = &pf->vsi;
	struct i40e_hw	*hw = &pf->hw;
	struct ifnet *ifp = FUNC10(ctx);
	device_t 	dev = FUNC9(ctx);
	u8		tmpaddr[ETHER_ADDR_LEN];
	int		ret;

	/*
	 * If the aq is dead here, it probably means something outside of the driver
	 * did something to the adapter, like a PF reset.
	 * So, rebuild the driver's state here if that occurs.
	 */
	if (!FUNC6(&pf->hw)) {
		FUNC3(dev, "Admin Queue is down; resetting...\n");
		FUNC28(pf);
		FUNC26(pf);
	}

	/* Get the latest mac address... User might use a LAA */
	FUNC1(FUNC0(vsi->ifp), tmpaddr, ETH_ALEN);
	if (!FUNC2(hw->mac.addr, tmpaddr) &&
	    (FUNC7(tmpaddr) == I40E_SUCCESS)) {
		FUNC18(vsi, hw->mac.addr, IXL_VLAN_ANY);
		FUNC1(tmpaddr, hw->mac.addr, ETH_ALEN);
		ret = FUNC4(hw,
		    I40E_AQC_WRITE_TYPE_LAA_ONLY,
		    hw->mac.addr, NULL);
		if (ret) {
			FUNC3(dev, "LLA address change failed!!\n");
			return;
		}
		FUNC13(vsi, hw->mac.addr, IXL_VLAN_ANY);
	}

	FUNC12(ctx, hw->mac.addr);

	/* Prepare the VSI: rings, hmc contexts, etc... */
	if (FUNC24(vsi)) {
		FUNC3(dev, "initialize vsi failed!!\n");
		return;
	}
	
	/* Reconfigure multicast filters in HW */
	FUNC20(ctx);

	/* Set up RSS */
	FUNC14(pf);

	/* Set up MSI-X routing and the ITR settings */
	if (vsi->shared->isc_intr == IFLIB_INTR_MSIX) {
		FUNC17(pf);
		FUNC15(pf);
	} else
		FUNC16(pf);

	if (vsi->enable_head_writeback)
		FUNC22(vsi);
	else
		FUNC23(vsi);

	FUNC19(vsi);

	FUNC5(hw, vsi->seid, NULL);

	/* Re-add configure filters to HW */
	FUNC27(vsi);

	/* Configure promiscuous mode */
	FUNC21(ctx, FUNC8(ifp));

#ifdef IXL_IW
	if (ixl_enable_iwarp && pf->iw_enabled) {
		ret = ixl_iw_pf_init(pf);
		if (ret)
			device_printf(dev,
			    "initialize iwarp failed, code %d\n", ret);
	}
#endif
}