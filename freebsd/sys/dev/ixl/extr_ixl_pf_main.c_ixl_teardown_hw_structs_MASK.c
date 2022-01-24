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
struct TYPE_2__ {scalar_t__ hmc_obj; } ;
struct i40e_hw {TYPE_1__ hmc; } ;
struct ixl_pf {int /*<<< orphan*/  qtag; int /*<<< orphan*/  qmgr; int /*<<< orphan*/  dev; struct i40e_hw hw; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i40e_hw*) ; 
 int FUNC2 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC6(struct ixl_pf *pf)
{
	enum i40e_status_code status = 0;
	struct i40e_hw *hw = &pf->hw;
	device_t dev = pf->dev;

	/* Shutdown LAN HMC */
	if (hw->hmc.hmc_obj) {
		status = FUNC2(hw);
		if (status) {
			FUNC0(dev,
			    "init: LAN HMC shutdown failure; status %s\n",
			    FUNC3(hw, status));
			goto err_out;
		}
	}

	/* Shutdown admin queue */
	FUNC4(hw);
	status = FUNC1(hw);
	if (status)
		FUNC0(dev,
		    "init: Admin Queue shutdown failure; status %s\n",
		    FUNC3(hw, status));

	FUNC5(&pf->qmgr, &pf->qtag);
err_out:
	return (status);
}