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
struct TYPE_4__ {int /*<<< orphan*/  get_link_info; } ;
struct TYPE_3__ {int fw_maj_ver; int fw_min_ver; int /*<<< orphan*/  asq_last_status; } ;
struct i40e_hw {TYPE_2__ phy; TYPE_1__ aq; } ;
struct ixl_pf {int /*<<< orphan*/  link_up; struct i40e_hw hw; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int
FUNC4(struct ixl_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	device_t dev = pf->dev;
	int error = 0;

	if (((hw->aq.fw_maj_ver == 4) && (hw->aq.fw_min_ver < 33)) ||
	    (hw->aq.fw_maj_ver < 4)) {
		FUNC3(75);
		error = FUNC1(hw, TRUE, NULL);
		if (error) {
			FUNC0(dev, "link restart failed, aq_err=%d\n",
			    pf->hw.aq.asq_last_status);
			return error;
		}
	}

	/* Determine link state */
	hw->phy.get_link_info = TRUE;
	FUNC2(hw, &pf->link_up);
	return (0);
}