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
typedef  int u16 ;
struct ixl_vsi {int /*<<< orphan*/  num_tx_queues; int /*<<< orphan*/  num_rx_queues; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct ixl_vsi vsi; struct i40e_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK ; 
 int I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT ; 
 int I40E_PFINT_LNKLSTN_FIRSTQ_TYPE_MASK ; 
 int I40E_PFINT_LNKLSTN_FIRSTQ_TYPE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int I40E_QINT_RQCTL_CAUSE_ENA_MASK ; 
 int I40E_QINT_RQCTL_ITR_INDX_SHIFT ; 
 int I40E_QINT_RQCTL_MSIX_INDX_SHIFT ; 
 int I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT ; 
 int I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int I40E_QINT_TQCTL_CAUSE_ENA_MASK ; 
 int I40E_QINT_TQCTL_ITR_INDX_SHIFT ; 
 int I40E_QINT_TQCTL_MSIX_INDX_SHIFT ; 
 int I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT ; 
 int I40E_QINT_TQCTL_NEXTQ_TYPE_SHIFT ; 
 int I40E_QUEUE_TYPE_RX ; 
 int I40E_QUEUE_TYPE_TX ; 
 int IXL_QUEUE_EOL ; 
 int IXL_RX_ITR ; 
 int IXL_TX_ITR ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

void
FUNC6(struct ixl_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	struct ixl_vsi *vsi = &pf->vsi;
	u32		reg;
	u16		vector = 1;

	// TODO: See if max is really necessary
	for (int i = 0; i < FUNC4(vsi->num_rx_queues, vsi->num_tx_queues); i++, vector++) {
		/* Make sure interrupt is disabled */
		FUNC5(hw, FUNC0(i), 0);
		/* Set linked list head to point to corresponding RX queue
		 * e.g. vector 1 (LNKLSTN register 0) points to queue pair 0's RX queue */
		reg = ((i << I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT)
		        & I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK) |
		    ((I40E_QUEUE_TYPE_RX << I40E_PFINT_LNKLSTN_FIRSTQ_TYPE_SHIFT)
		        & I40E_PFINT_LNKLSTN_FIRSTQ_TYPE_MASK);
		FUNC5(hw, FUNC1(i), reg);

		reg = I40E_QINT_RQCTL_CAUSE_ENA_MASK |
		(IXL_RX_ITR << I40E_QINT_RQCTL_ITR_INDX_SHIFT) |
		(vector << I40E_QINT_RQCTL_MSIX_INDX_SHIFT) |
		(i << I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT) |
		(I40E_QUEUE_TYPE_TX << I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT);
		FUNC5(hw, FUNC2(i), reg);

		reg = I40E_QINT_TQCTL_CAUSE_ENA_MASK |
		(IXL_TX_ITR << I40E_QINT_TQCTL_ITR_INDX_SHIFT) |
		(vector << I40E_QINT_TQCTL_MSIX_INDX_SHIFT) |
		(IXL_QUEUE_EOL << I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT) |
		(I40E_QUEUE_TYPE_RX << I40E_QINT_TQCTL_NEXTQ_TYPE_SHIFT);
		FUNC5(hw, FUNC3(i), reg);
	}
}