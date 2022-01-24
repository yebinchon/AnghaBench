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
typedef  int /*<<< orphan*/  u32 ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {int /*<<< orphan*/  state; struct i40e_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_PFINT_ICR0_ENA ; 
 int /*<<< orphan*/  I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK ; 
 int /*<<< orphan*/  IXL_PF_STATE_MDD_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(struct ixl_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	u32 reg;

	/*
	 * Handle both TX/RX because it's possible they could
	 * both trigger in the same interrupt.
	 */
	FUNC3(pf);
	FUNC2(pf);

	FUNC0(&pf->state, IXL_PF_STATE_MDD_PENDING);

	/* re-enable mdd interrupt cause */
	reg = FUNC4(hw, I40E_PFINT_ICR0_ENA);
	reg |= I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK;
	FUNC5(hw, I40E_PFINT_ICR0_ENA, reg);
	FUNC1(hw);
}