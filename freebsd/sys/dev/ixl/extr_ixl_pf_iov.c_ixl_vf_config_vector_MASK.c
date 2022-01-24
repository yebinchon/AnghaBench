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
typedef  int uint16_t ;
typedef  int u_int ;
struct virtchnl_vector_map {int rxq_map; int txq_map; int /*<<< orphan*/  vector_id; } ;
struct ixl_vf {int /*<<< orphan*/  vf_num; int /*<<< orphan*/  qtag; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;
typedef  enum i40e_queue_type { ____Placeholder_i40e_queue_type } i40e_queue_type ;

/* Variables and functions */
 int I40E_QUEUE_TYPE_RX ; 
 int I40E_QUEUE_TYPE_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int I40E_VPINT_LNKLST0_FIRSTQ_INDX_SHIFT ; 
 int I40E_VPINT_LNKLST0_FIRSTQ_TYPE_SHIFT ; 
 int IXL_END_OF_INTR_LNKLST ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ixl_pf*,struct virtchnl_vector_map const*,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct ixl_pf *pf, struct ixl_vf *vf,
    const struct virtchnl_vector_map *vector)
{
	struct i40e_hw *hw;
	u_int qindex;
	enum i40e_queue_type type, last_type;
	uint32_t lnklst_reg;
	uint16_t rxq_map, txq_map, cur_queue, last_queue;

	hw = &pf->hw;

	rxq_map = vector->rxq_map;
	txq_map = vector->txq_map;

	last_queue = IXL_END_OF_INTR_LNKLST;
	last_type = I40E_QUEUE_TYPE_RX;

	/*
	 * The datasheet says to optimize performance, RX queues and TX queues
	 * should be interleaved in the interrupt linked list, so we process
	 * both at once here.
	 */
	while ((rxq_map != 0) || (txq_map != 0)) {
		if (txq_map != 0) {
			qindex = FUNC2(txq_map) - 1;
			type = I40E_QUEUE_TYPE_TX;
			cur_queue = FUNC4(&vf->qtag, qindex);
			FUNC5(pf, vector, type, cur_queue,
			    &last_type, &last_queue);
			txq_map &= ~(1 << qindex);
		}

		if (rxq_map != 0) {
			qindex = FUNC2(rxq_map) - 1;
			type = I40E_QUEUE_TYPE_RX;
			cur_queue = FUNC4(&vf->qtag, qindex);
			FUNC5(pf, vector, type, cur_queue,
			    &last_type, &last_queue);
			rxq_map &= ~(1 << qindex);
		}
	}

	if (vector->vector_id == 0)
		lnklst_reg = FUNC0(vf->vf_num);
	else
		lnklst_reg = FUNC1(hw, vector->vector_id,
		    vf->vf_num);
	FUNC6(hw, lnklst_reg,
	    (last_queue << I40E_VPINT_LNKLST0_FIRSTQ_INDX_SHIFT) |
	    (last_type << I40E_VPINT_LNKLST0_FIRSTQ_TYPE_SHIFT));

	FUNC3(hw);
}