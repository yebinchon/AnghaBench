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
typedef  int uint32_t ;
struct TYPE_2__ {scalar_t__ seid; } ;
struct ixl_vf {int /*<<< orphan*/  vf_num; int /*<<< orphan*/  qtag; TYPE_1__ vsi; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {int /*<<< orphan*/  dev; struct i40e_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int I40E_VPGEN_VFRSTAT_VFRD_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int I40E_VPGEN_VFRTRIG_VFSWR_MASK ; 
 int IXL_VF_RESET_TIMEOUT ; 
 int VIRTCHNL_VFR_COMPLETED ; 
 int VIRTCHNL_VFR_VFACTIVE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ixl_pf*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_hw*) ; 
 int FUNC7 (struct ixl_pf*,struct ixl_vf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ixl_pf*,struct ixl_vf*) ; 
 int /*<<< orphan*/  FUNC10 (struct ixl_pf*,struct ixl_vf*) ; 
 int /*<<< orphan*/  FUNC11 (struct ixl_pf*,struct ixl_vf*) ; 
 int FUNC12 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC14(struct ixl_pf *pf, struct ixl_vf *vf)
{
	struct i40e_hw *hw;
	uint32_t vfrstat, vfrtrig;
	int i, error;

	hw = &pf->hw;

	error = FUNC7(pf, vf);
	if (error != 0)
		FUNC4(pf->dev,
		    "Timed out waiting for PCIe activity to stop on VF-%d\n",
		    vf->vf_num);

	for (i = 0; i < IXL_VF_RESET_TIMEOUT; i++) {
		FUNC0(10);

		vfrstat = FUNC12(hw, FUNC2(vf->vf_num));
		if (vfrstat & I40E_VPGEN_VFRSTAT_VFRD_MASK)
			break;
	}

	if (i == IXL_VF_RESET_TIMEOUT)
		FUNC4(pf->dev, "VF %d failed to reset\n", vf->vf_num);

	FUNC13(hw, FUNC1(vf->vf_num), VIRTCHNL_VFR_COMPLETED);

	vfrtrig = FUNC12(hw, FUNC3(vf->vf_num));
	vfrtrig &= ~I40E_VPGEN_VFRTRIG_VFSWR_MASK;
	FUNC13(hw, FUNC3(vf->vf_num), vfrtrig);

	if (vf->vsi.seid != 0)
		FUNC5(pf, &vf->vsi, &vf->qtag);
	FUNC8(&vf->qtag);

	FUNC10(pf, vf);
	FUNC11(pf, vf);
	FUNC9(pf, vf);

	FUNC13(hw, FUNC1(vf->vf_num), VIRTCHNL_VFR_VFACTIVE);
	FUNC6(hw);
}