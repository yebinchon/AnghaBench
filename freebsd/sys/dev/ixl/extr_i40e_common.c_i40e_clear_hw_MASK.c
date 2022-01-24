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
typedef  int u32 ;
struct i40e_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int I40E_GLLAN_TXPRE_QDIS_QINDX_MASK ; 
 int I40E_GLLAN_TXPRE_QDIS_QINDX_SHIFT ; 
 int I40E_GLLAN_TXPRE_QDIS_SET_QDIS_MASK ; 
 int /*<<< orphan*/  I40E_GLPCI_CNF2 ; 
 int I40E_GLPCI_CNF2_MSI_X_PF_N_MASK ; 
 int I40E_GLPCI_CNF2_MSI_X_PF_N_SHIFT ; 
 int I40E_GLPCI_CNF2_MSI_X_VF_N_MASK ; 
 int I40E_GLPCI_CNF2_MSI_X_VF_N_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT ; 
 int /*<<< orphan*/  I40E_PFINT_ICR0_ENA ; 
 int /*<<< orphan*/  I40E_PFINT_LNKLST0 ; 
 int I40E_PFINT_LNKLST0_FIRSTQ_INDX_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  I40E_PFLAN_QALLOC ; 
 int I40E_PFLAN_QALLOC_FIRSTQ_MASK ; 
 int I40E_PFLAN_QALLOC_FIRSTQ_SHIFT ; 
 int I40E_PFLAN_QALLOC_LASTQ_MASK ; 
 int I40E_PFLAN_QALLOC_LASTQ_SHIFT ; 
 int I40E_PFLAN_QALLOC_VALID_MASK ; 
 int /*<<< orphan*/  I40E_PF_VT_PFALLOC ; 
 int I40E_PF_VT_PFALLOC_FIRSTVF_MASK ; 
 int I40E_PF_VT_PFALLOC_FIRSTVF_SHIFT ; 
 int I40E_PF_VT_PFALLOC_LASTVF_MASK ; 
 int I40E_PF_VT_PFALLOC_LASTVF_SHIFT ; 
 int I40E_PF_VT_PFALLOC_VALID_MASK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int I40E_VPINT_LNKLST0_FIRSTQ_INDX_SHIFT ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

void FUNC12(struct i40e_hw *hw)
{
	u32 num_queues, base_queue;
	u32 num_pf_int;
	u32 num_vf_int;
	u32 num_vfs;
	u32 i, j;
	u32 val;
	u32 eol = 0x7ff;

	/* get number of interrupts, queues, and vfs */
	val = FUNC10(hw, I40E_GLPCI_CNF2);
	num_pf_int = (val & I40E_GLPCI_CNF2_MSI_X_PF_N_MASK) >>
			I40E_GLPCI_CNF2_MSI_X_PF_N_SHIFT;
	num_vf_int = (val & I40E_GLPCI_CNF2_MSI_X_VF_N_MASK) >>
			I40E_GLPCI_CNF2_MSI_X_VF_N_SHIFT;

	val = FUNC10(hw, I40E_PFLAN_QALLOC);
	base_queue = (val & I40E_PFLAN_QALLOC_FIRSTQ_MASK) >>
			I40E_PFLAN_QALLOC_FIRSTQ_SHIFT;
	j = (val & I40E_PFLAN_QALLOC_LASTQ_MASK) >>
			I40E_PFLAN_QALLOC_LASTQ_SHIFT;
	if (val & I40E_PFLAN_QALLOC_VALID_MASK)
		num_queues = (j - base_queue) + 1;
	else
		num_queues = 0;

	val = FUNC10(hw, I40E_PF_VT_PFALLOC);
	i = (val & I40E_PF_VT_PFALLOC_FIRSTVF_MASK) >>
			I40E_PF_VT_PFALLOC_FIRSTVF_SHIFT;
	j = (val & I40E_PF_VT_PFALLOC_LASTVF_MASK) >>
			I40E_PF_VT_PFALLOC_LASTVF_SHIFT;
	if (val & I40E_PF_VT_PFALLOC_VALID_MASK)
		num_vfs = (j - i) + 1;
	else
		num_vfs = 0;

	/* stop all the interrupts */
	FUNC11(hw, I40E_PFINT_ICR0_ENA, 0);
	val = 0x3 << I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT;
	for (i = 0; i < num_pf_int - 2; i++)
		FUNC11(hw, FUNC1(i), val);

	/* Set the FIRSTQ_INDX field to 0x7FF in PFINT_LNKLSTx */
	val = eol << I40E_PFINT_LNKLST0_FIRSTQ_INDX_SHIFT;
	FUNC11(hw, I40E_PFINT_LNKLST0, val);
	for (i = 0; i < num_pf_int - 2; i++)
		FUNC11(hw, FUNC2(i), val);
	val = eol << I40E_VPINT_LNKLST0_FIRSTQ_INDX_SHIFT;
	for (i = 0; i < num_vfs; i++)
		FUNC11(hw, FUNC7(i), val);
	for (i = 0; i < num_vf_int - 2; i++)
		FUNC11(hw, FUNC8(i), val);

	/* warn the HW of the coming Tx disables */
	for (i = 0; i < num_queues; i++) {
		u32 abs_queue_idx = base_queue + i;
		u32 reg_block = 0;

		if (abs_queue_idx >= 128) {
			reg_block = abs_queue_idx / 128;
			abs_queue_idx %= 128;
		}

		val = FUNC10(hw, FUNC0(reg_block));
		val &= ~I40E_GLLAN_TXPRE_QDIS_QINDX_MASK;
		val |= (abs_queue_idx << I40E_GLLAN_TXPRE_QDIS_QINDX_SHIFT);
		val |= I40E_GLLAN_TXPRE_QDIS_SET_QDIS_MASK;

		FUNC11(hw, FUNC0(reg_block), val);
	}
	FUNC9(400);

	/* stop all the queues */
	for (i = 0; i < num_queues; i++) {
		FUNC11(hw, FUNC4(i), 0);
		FUNC11(hw, FUNC6(i), 0);
		FUNC11(hw, FUNC3(i), 0);
		FUNC11(hw, FUNC5(i), 0);
	}

	/* short wait for all queue disables to settle */
	FUNC9(50);
}