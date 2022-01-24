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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_5__ {int (* acquire ) (struct e1000_hw*) ;int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int mta_reg_count; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
struct adapter {int wol; struct e1000_hw hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ BM_RCTL ; 
 int BM_RCTL_BAM ; 
 int BM_RCTL_MO_MASK ; 
 int BM_RCTL_MO_SHIFT ; 
 int BM_RCTL_MPE ; 
 int BM_RCTL_PMCF ; 
 int BM_RCTL_RFCE ; 
 int BM_RCTL_UPE ; 
 scalar_t__ BM_WUC ; 
 int BM_WUC_ENABLE_BIT ; 
 int BM_WUC_ENABLE_PAGE ; 
 int /*<<< orphan*/  BM_WUC_ENABLE_REG ; 
 int BM_WUC_HOST_WU_BIT ; 
 scalar_t__ BM_WUFC ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_RFCE ; 
 int /*<<< orphan*/  E1000_MTA ; 
 int /*<<< orphan*/  E1000_RCTL ; 
 int E1000_RCTL_BAM ; 
 int E1000_RCTL_MO_3 ; 
 int E1000_RCTL_MO_SHIFT ; 
 int E1000_RCTL_MPE ; 
 int E1000_RCTL_PMCF ; 
 int E1000_RCTL_UPE ; 
 int FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  E1000_WUC ; 
 int E1000_WUC_APME ; 
 int E1000_WUC_PHY_WAKE ; 
 int E1000_WUC_PME_EN ; 
 int /*<<< orphan*/  E1000_WUFC ; 
 int /*<<< orphan*/  IGP01E1000_PHY_PAGE_SELECT ; 
 int IGP_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*,scalar_t__,int*) ; 
 int FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_hw*,scalar_t__,int) ; 
 int FUNC8 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct e1000_hw*) ; 

__attribute__((used)) static int
FUNC12(struct adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 mreg, ret = 0;
	u16 preg;

	/* copy MAC RARs to PHY RARs */
	FUNC4(hw);

	/* copy MAC MTA to PHY MTA */
	for (int i = 0; i < adapter->hw.mac.mta_reg_count; i++) {
		mreg = FUNC2(hw, E1000_MTA, i);
		FUNC7(hw, FUNC0(i), (u16)(mreg & 0xFFFF));
		FUNC7(hw, FUNC0(i) + 1,
		    (u16)((mreg >> 16) & 0xFFFF));
	}

	/* configure PHY Rx Control register */
	FUNC5(&adapter->hw, BM_RCTL, &preg);
	mreg = FUNC1(hw, E1000_RCTL);
	if (mreg & E1000_RCTL_UPE)
		preg |= BM_RCTL_UPE;
	if (mreg & E1000_RCTL_MPE)
		preg |= BM_RCTL_MPE;
	preg &= ~(BM_RCTL_MO_MASK);
	if (mreg & E1000_RCTL_MO_3)
		preg |= (((mreg & E1000_RCTL_MO_3) >> E1000_RCTL_MO_SHIFT)
				<< BM_RCTL_MO_SHIFT);
	if (mreg & E1000_RCTL_BAM)
		preg |= BM_RCTL_BAM;
	if (mreg & E1000_RCTL_PMCF)
		preg |= BM_RCTL_PMCF;
	mreg = FUNC1(hw, E1000_CTRL);
	if (mreg & E1000_CTRL_RFCE)
		preg |= BM_RCTL_RFCE;
	FUNC7(&adapter->hw, BM_RCTL, preg);

	/* enable PHY wakeup in MAC register */
	FUNC3(hw, E1000_WUC,
	    E1000_WUC_PHY_WAKE | E1000_WUC_PME_EN | E1000_WUC_APME);
	FUNC3(hw, E1000_WUFC, adapter->wol);

	/* configure and enable PHY wakeup in PHY registers */
	FUNC7(&adapter->hw, BM_WUFC, adapter->wol);
	FUNC7(&adapter->hw, BM_WUC, E1000_WUC_PME_EN);

	/* activate PHY wakeup */
	ret = hw->phy.ops.acquire(hw);
	if (ret) {
		FUNC9("Could not acquire PHY\n");
		return ret;
	}
	FUNC8(hw, IGP01E1000_PHY_PAGE_SELECT,
	                         (BM_WUC_ENABLE_PAGE << IGP_PAGE_SHIFT));
	ret = FUNC6(hw, BM_WUC_ENABLE_REG, &preg);
	if (ret) {
		FUNC9("Could not read PHY page 769\n");
		goto out;
	}
	preg |= BM_WUC_ENABLE_BIT | BM_WUC_HOST_WU_BIT;
	ret = FUNC8(hw, BM_WUC_ENABLE_REG, preg);
	if (ret)
		FUNC9("Could not set PHY Host Wakeup bit\n");
out:
	hw->phy.ops.release(hw);

	return ret;
}