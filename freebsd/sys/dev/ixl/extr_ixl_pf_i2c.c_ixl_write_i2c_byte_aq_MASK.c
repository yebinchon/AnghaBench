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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  asq_last_status; } ;
struct i40e_hw {TYPE_1__ aq; } ;
struct ixl_pf {struct i40e_hw hw; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE ; 
 scalar_t__ I40E_SUCCESS ; 
 int /*<<< orphan*/  IXL_DBG_I2C ; 
 scalar_t__ FUNC0 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_pf*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

s32
FUNC4(struct ixl_pf *pf, u8 byte_offset,
		       u8 dev_addr, u8 data)
{
	struct i40e_hw *hw = &pf->hw;
	s32 status = I40E_SUCCESS;

	status = FUNC0(hw,
					I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE,
					dev_addr,
					byte_offset,
					data, NULL);

	if (status)
		FUNC3(pf, IXL_DBG_I2C, "I2C byte write status %s, error %s\n",
		    FUNC2(hw, status), FUNC1(hw, hw->aq.asq_last_status));

	return status;
}