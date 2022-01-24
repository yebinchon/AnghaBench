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
typedef  int u32 ;
struct ixl_vsi {TYPE_1__* ifp; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {int /*<<< orphan*/  state; struct i40e_hw hw; struct ixl_vsi vsi; } ;
struct TYPE_2__ {int if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_GLGEN_RSTAT ; 
 int I40E_GLGEN_RSTAT_DEVSTATE_MASK ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  IXL_DBG_INFO ; 
 int /*<<< orphan*/  IXL_PF_STATE_ADAPTER_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixl_pf*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_pf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ixl_pf*) ; 
 int FUNC5 (struct i40e_hw*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct ixl_pf *pf)
{
	struct ixl_vsi	*vsi = &pf->vsi;
	struct i40e_hw	*hw = &pf->hw;
	bool is_up = !!(vsi->ifp->if_drv_flags & IFF_DRV_RUNNING);
	int count = 0;
	u32 reg;

	FUNC3(pf, is_up);

	/* Typically finishes within 3-4 seconds */
	while (count++ < 100) {
		reg = FUNC5(hw, I40E_GLGEN_RSTAT)
			& I40E_GLGEN_RSTAT_DEVSTATE_MASK;
		if (reg)
			FUNC1(100);
		else
			break;
	}
	FUNC2(pf, IXL_DBG_INFO,
			"Reset wait count: %d\n", count);

	FUNC4(pf);

	FUNC0(&pf->state, IXL_PF_STATE_ADAPTER_RESETTING);
}