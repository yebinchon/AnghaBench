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
typedef  int /*<<< orphan*/  uint32_t ;
struct ixl_vf {int /*<<< orphan*/  vf_num; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I40E_VPGEN_VFRTRIG_VFSWR_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct ixl_pf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_pf*,struct ixl_vf*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct ixl_pf *pf, struct ixl_vf *vf)
{
	struct i40e_hw *hw;
	uint32_t vfrtrig;

	hw = &pf->hw;

	FUNC1(pf, "Resetting VF-%d\n", vf->vf_num);

	vfrtrig = FUNC4(hw, FUNC0(vf->vf_num));
	vfrtrig |= I40E_VPGEN_VFRTRIG_VFSWR_MASK;
	FUNC5(hw, FUNC0(vf->vf_num), vfrtrig);
	FUNC2(hw);

	FUNC3(pf, vf);

	FUNC1(pf, "Resetting VF-%d done.\n", vf->vf_num);
}