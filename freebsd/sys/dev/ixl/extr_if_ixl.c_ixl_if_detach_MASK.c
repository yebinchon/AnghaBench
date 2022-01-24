#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ixl_vsi {int /*<<< orphan*/  media; } ;
struct TYPE_2__ {scalar_t__ hmc_obj; } ;
struct i40e_hw {TYPE_1__ hmc; } ;
struct ixl_pf {int /*<<< orphan*/  qmgr; scalar_t__ iw_enabled; int /*<<< orphan*/  dev; struct i40e_hw hw; struct ixl_vsi vsi; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct i40e_hw*) ; 
 int FUNC3 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int) ; 
 struct ixl_pf* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_hw*) ; 
 scalar_t__ ixl_enable_iwarp ; 
 int /*<<< orphan*/  FUNC8 (struct ixl_vsi*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixl_pf*) ; 
 int FUNC10 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(if_ctx_t ctx)
{
	struct ixl_pf *pf = FUNC5(ctx);
	struct ixl_vsi *vsi = &pf->vsi;
	struct i40e_hw *hw = &pf->hw;
	device_t dev = pf->dev;
	enum i40e_status_code	status;
#ifdef IXL_IW
	int			error;
#endif

	FUNC0(dev, "begin");

#ifdef IXL_IW
	if (ixl_enable_iwarp && pf->iw_enabled) {
		error = ixl_iw_pf_detach(pf);
		if (error == EBUSY) {
			device_printf(dev, "iwarp in use; stop it first.\n");
			//return (error);
		}
	}
#endif
	/* Remove all previously allocated media types */
	FUNC6(vsi->media);

	/* Shutdown LAN HMC */
	if (hw->hmc.hmc_obj) {
		status = FUNC3(hw);
		if (status)
			FUNC1(dev,
			    "i40e_shutdown_lan_hmc() failed with status %s\n",
			    FUNC4(hw, status));
	}

	/* Shutdown admin queue */
	FUNC7(hw);
	status = FUNC2(hw);
	if (status)
		FUNC1(dev,
		    "i40e_shutdown_adminq() failed with status %s\n",
		    FUNC4(hw, status));

	FUNC11(&pf->qmgr);
	FUNC9(pf);
	FUNC8(vsi);
	FUNC0(dev, "end");
	return (0);
}