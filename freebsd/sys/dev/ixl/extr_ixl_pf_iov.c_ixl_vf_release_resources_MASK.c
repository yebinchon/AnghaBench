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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {scalar_t__ num_rx_queues; scalar_t__ num_tx_queues; } ;
struct ixl_vf {TYPE_2__ vsi; int /*<<< orphan*/  vf_num; } ;
struct TYPE_3__ {int num_msix_vectors_vf; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct ixl_pf {struct i40e_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ixl_pf*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7(struct ixl_pf *pf, struct ixl_vf *vf)
{
	struct i40e_hw *hw;
	uint32_t vfint_reg, vpint_reg;
	int i;

	hw = &pf->hw;

	FUNC6(pf, &vf->vsi);

	/* Index 0 has a special register. */
	FUNC4(hw, FUNC0(vf->vf_num));

	for (i = 1; i < hw->func_caps.num_msix_vectors_vf; i++) {
		vfint_reg = FUNC2(hw, i , vf->vf_num);
		FUNC4(hw, vfint_reg);
	}

	/* Index 0 has a special register. */
	FUNC5(hw, FUNC1(vf->vf_num));

	for (i = 1; i < hw->func_caps.num_msix_vectors_vf; i++) {
		vpint_reg = FUNC3(hw, i, vf->vf_num);
		FUNC5(hw, vpint_reg);
	}

	vf->vsi.num_tx_queues = 0;
	vf->vsi.num_rx_queues = 0;
}