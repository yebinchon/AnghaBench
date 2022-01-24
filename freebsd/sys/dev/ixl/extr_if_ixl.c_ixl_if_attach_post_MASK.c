#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ixl_vsi {TYPE_2__* shared; int /*<<< orphan*/  num_tx_queues; int /*<<< orphan*/  num_rx_queues; int /*<<< orphan*/  ifp; } ;
struct TYPE_10__ {int /*<<< orphan*/  num_active; int /*<<< orphan*/  num_allocated; } ;
struct TYPE_9__ {scalar_t__ iwarp; int /*<<< orphan*/  num_tx_qp; } ;
struct TYPE_8__ {int get_link_info; } ;
struct TYPE_6__ {int /*<<< orphan*/  asq_last_status; } ;
struct i40e_hw {TYPE_4__ func_caps; TYPE_3__ phy; TYPE_1__ aq; } ;
struct ixl_pf {int iw_enabled; scalar_t__ iw_msix; int /*<<< orphan*/  link_up; TYPE_5__ qtag; int /*<<< orphan*/  qmgr; struct i40e_hw hw; struct ixl_vsi vsi; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_7__ {scalar_t__ isc_intr; int /*<<< orphan*/  isc_ntxqsets; int /*<<< orphan*/  isc_nrxqsets; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ IFLIB_INTR_MSIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  IXL_DEFAULT_PHY_INT_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_hw*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct ixl_pf* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC11 (struct ixl_pf*) ; 
 scalar_t__ FUNC12 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC13 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC14 (struct i40e_hw*) ; 
 scalar_t__ ixl_enable_iwarp ; 
 int /*<<< orphan*/  FUNC15 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC16 (struct ixl_vsi*) ; 
 int /*<<< orphan*/  FUNC17 (struct ixl_pf*) ; 
 int FUNC18 (struct ixl_pf*) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC22 (struct ixl_pf*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,struct ixl_pf*) ; 
 int FUNC24 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC25 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC26 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC28(if_ctx_t ctx)
{
	device_t dev;
	struct ixl_pf *pf;
	struct i40e_hw *hw;
	struct ixl_vsi *vsi;
	int error = 0;
	enum i40e_status_code status;

	FUNC0(dev, "begin");

	dev = FUNC7(ctx);
	pf = FUNC9(ctx);
	vsi = &pf->vsi;
	vsi->ifp = FUNC8(ctx);
	hw = &pf->hw;

	/* Save off determined number of queues for interface */
	vsi->num_rx_queues = vsi->shared->isc_nrxqsets;
	vsi->num_tx_queues = vsi->shared->isc_ntxqsets;

	/* Setup OS network interface / ifnet */
	if (FUNC23(dev, pf)) {
		FUNC2(dev, "interface setup failed!\n");
		error = EIO;
		goto err;
	}

	/* Determine link state */
	if (FUNC12(pf)) {
		error = EINVAL;
		goto err;
	}

	error = FUNC24(pf);
	if (error) {
		FUNC2(dev, "Initial ixl_switch_config() failed: %d\n",
		     error);
		goto err;
	}

	/* Add protocol filters to list */
	FUNC16(vsi);

	/* Init queue allocation manager */
	error = FUNC20(&pf->qmgr, hw->func_caps.num_tx_qp);
	if (error) {
		FUNC2(dev, "Failed to init queue manager for PF queues, error %d\n",
		    error);
		goto err;
	}
	/* reserve a contiguous allocation for the PF's VSI */
	error = FUNC19(&pf->qmgr,
	    FUNC27(vsi->num_rx_queues, vsi->num_tx_queues), &pf->qtag);
	if (error) {
		FUNC2(dev, "Failed to reserve queues for PF LAN VSI, error %d\n",
		    error);
		goto err;
	}
	FUNC2(dev, "Allocating %d queues for PF LAN VSI; %d queues active\n",
	    pf->qtag.num_allocated, pf->qtag.num_active);

	/* Limit PHY interrupts to link, autoneg, and modules failure */
	status = FUNC3(hw, IXL_DEFAULT_PHY_INT_MASK,
	    NULL);
        if (status) {
		FUNC2(dev, "i40e_aq_set_phy_mask() failed: err %s,"
		    " aq_err %s\n", FUNC6(hw, status),
		    FUNC4(hw, hw->aq.asq_last_status));
		goto err;
	}

	/* Get the bus configuration and set the shared code */
	FUNC15(pf);

	/* Keep admin queue interrupts active while driver is loaded */
	if (vsi->shared->isc_intr == IFLIB_INTR_MSIX) {
 		FUNC13(pf);
 		FUNC14(hw);
	}

	/* Set initial advertised speed sysctl value */
	FUNC22(pf);

	/* Initialize statistics & add sysctls */
	FUNC10(pf);
	FUNC21(pf);
	FUNC26(pf);
	FUNC11(pf);

	hw->phy.get_link_info = true;
	FUNC5(hw, &pf->link_up);
	FUNC25(pf);

#ifdef PCI_IOV
	ixl_initialize_sriov(pf);
#endif

#ifdef IXL_IW
	if (hw->func_caps.iwarp && ixl_enable_iwarp) {
		pf->iw_enabled = (pf->iw_msix > 0) ? true : false;
		if (pf->iw_enabled) {
			error = ixl_iw_pf_attach(pf);
			if (error) {
				device_printf(dev,
				    "interfacing to iWARP driver failed: %d\n",
				    error);
				goto err;
			} else
				device_printf(dev, "iWARP ready\n");
		} else
			device_printf(dev, "iWARP disabled on this device "
			    "(no MSI-X vectors)\n");
	} else {
		pf->iw_enabled = false;
		device_printf(dev, "The device is not iWARP enabled\n");
	}
#endif

	FUNC0(dev, "end");
	return (0);

err:
	FUNC1("end: error %d", error);
	/* ixl_if_detach() is called on error from this */
	return (error);
}