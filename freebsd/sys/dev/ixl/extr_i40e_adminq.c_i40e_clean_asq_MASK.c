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
typedef  scalar_t__ u16 ;
struct i40e_adminq_ring {scalar_t__ next_to_clean; scalar_t__ count; int /*<<< orphan*/  head; } ;
struct TYPE_2__ {struct i40e_adminq_ring asq; } ;
struct i40e_hw {TYPE_1__ aq; } ;
struct i40e_asq_cmd_details {scalar_t__ callback; } ;
struct i40e_aq_desc {scalar_t__ callback; } ;
typedef  int /*<<< orphan*/  (* I40E_ADMINQ_CALLBACK ) (struct i40e_hw*,struct i40e_asq_cmd_details*) ;

/* Variables and functions */
 struct i40e_asq_cmd_details* FUNC0 (struct i40e_adminq_ring,scalar_t__) ; 
 struct i40e_asq_cmd_details* FUNC1 (struct i40e_adminq_ring,scalar_t__) ; 
 int /*<<< orphan*/  I40E_DEBUG_AQ_MESSAGE ; 
 scalar_t__ FUNC2 (struct i40e_adminq_ring*) ; 
 int /*<<< orphan*/  I40E_DMA_MEM ; 
 int /*<<< orphan*/  I40E_DMA_TO_DMA ; 
 int /*<<< orphan*/  I40E_NONDMA_MEM ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_asq_cmd_details*,struct i40e_asq_cmd_details*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_asq_cmd_details*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct i40e_hw*,int /*<<< orphan*/ ) ; 

u16 FUNC7(struct i40e_hw *hw)
{
	struct i40e_adminq_ring *asq = &(hw->aq.asq);
	struct i40e_asq_cmd_details *details;
	u16 ntc = asq->next_to_clean;
	struct i40e_aq_desc desc_cb;
	struct i40e_aq_desc *desc;

	desc = FUNC0(*asq, ntc);
	details = FUNC1(*asq, ntc);
	while (FUNC6(hw, hw->aq.asq.head) != ntc) {
		FUNC3(hw, I40E_DEBUG_AQ_MESSAGE,
			   "ntc %d head %d.\n", ntc, FUNC6(hw, hw->aq.asq.head));

		if (details->callback) {
			I40E_ADMINQ_CALLBACK cb_func =
					(I40E_ADMINQ_CALLBACK)details->callback;
			FUNC4(&desc_cb, desc, sizeof(struct i40e_aq_desc),
				    I40E_DMA_TO_DMA);
			cb_func(hw, &desc_cb);
		}
		FUNC5(desc, 0, sizeof(*desc), I40E_DMA_MEM);
		FUNC5(details, 0, sizeof(*details), I40E_NONDMA_MEM);
		ntc++;
		if (ntc == asq->count)
			ntc = 0;
		desc = FUNC0(*asq, ntc);
		details = FUNC1(*asq, ntc);
	}

	asq->next_to_clean = ntc;

	return FUNC2(asq);
}