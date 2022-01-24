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
struct TYPE_2__ {int num_tx_queues; int /*<<< orphan*/  vsi_num; } ;
struct ixl_vf {int /*<<< orphan*/  qtag; TYPE_1__ vsi; int /*<<< orphan*/  vf_num; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int I40E_VPLAN_MAPENA_TXRX_ENA_MASK ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int I40E_VPLAN_QTABLE_QINDEX_MASK ; 
 int I40E_VPLAN_QTABLE_QINDEX_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I40E_VSILAN_QBASE_VSIQTABLE_ENA_MASK ; 
 int I40E_VSILAN_QTABLE_QINDEX_0_MASK ; 
 int IXL_MAX_VSI_QUEUES ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_hw*,struct ixl_vf*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct ixl_pf *pf, struct ixl_vf *vf)
{
	struct i40e_hw *hw;
	uint32_t qtable;
	int i;

	hw = &pf->hw;

	/*
	 * Contiguous mappings aren't actually supported by the hardware,
	 * so we have to use non-contiguous mappings.
	 */
	FUNC3(hw, FUNC2(vf->vsi.vsi_num),
	     I40E_VSILAN_QBASE_VSIQTABLE_ENA_MASK);

	/* Enable LAN traffic on this VF */
	FUNC7(hw, FUNC0(vf->vf_num),
	    I40E_VPLAN_MAPENA_TXRX_ENA_MASK);

	/* Program index of each VF queue into PF queue space
	 * (This is only needed if QTABLE is enabled) */
	for (i = 0; i < vf->vsi.num_tx_queues; i++) {
		qtable = FUNC5(&vf->qtag, i) <<
		    I40E_VPLAN_QTABLE_QINDEX_SHIFT;

		FUNC7(hw, FUNC1(i, vf->vf_num), qtable);
	}
	for (; i < IXL_MAX_VSI_QUEUES; i++)
		FUNC7(hw, FUNC1(i, vf->vf_num),
		    I40E_VPLAN_QTABLE_QINDEX_MASK);

	/* Map queues allocated to VF to its VSI;
	 * This mapping matches the VF-wide mapping since the VF
	 * is only given a single VSI */
	for (i = 0; i < vf->vsi.num_tx_queues; i++)
		FUNC6(hw, vf, i,
		    FUNC5(&vf->qtag, i));

	/* Set rest of VSI queues as unused. */
	for (; i < IXL_MAX_VSI_QUEUES; i++)
		FUNC6(hw, vf, i,
		    I40E_VSILAN_QTABLE_QINDEX_0_MASK);

	FUNC4(hw);
}