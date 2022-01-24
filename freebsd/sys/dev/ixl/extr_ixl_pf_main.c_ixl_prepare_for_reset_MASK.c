#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct i40e_hw {int dummy; } ;
struct ixl_pf {int /*<<< orphan*/  qtag; int /*<<< orphan*/  qmgr; int /*<<< orphan*/  dev; struct i40e_hw hw; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct i40e_hw*) ; 
 int FUNC2 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC5(struct ixl_pf *pf, bool is_up)
{
	struct i40e_hw *hw = &pf->hw;
	device_t dev = pf->dev;
	int error = 0;

	error = FUNC2(hw);
	if (error)
		FUNC0(dev,
		    "Shutdown LAN HMC failed with code %d\n", error);

	FUNC3(hw);

	error = FUNC1(hw);
	if (error)
		FUNC0(dev,
		    "Shutdown Admin queue failed with code %d\n", error);

	FUNC4(&pf->qmgr, &pf->qtag);
	return (error);
}