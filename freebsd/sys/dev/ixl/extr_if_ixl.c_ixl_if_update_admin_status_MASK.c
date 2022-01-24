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
typedef  scalar_t__ u16 ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {int state; struct i40e_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int IXL_PF_STATE_ADAPTER_RESETTING ; 
 int IXL_PF_STATE_MDD_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ixl_pf* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixl_pf*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixl_pf*) ; 

__attribute__((used)) static void
FUNC8(if_ctx_t ctx)
{
	struct ixl_pf			*pf = FUNC1(ctx);
	struct i40e_hw			*hw = &pf->hw;
	u16				pending;

	if (pf->state & IXL_PF_STATE_ADAPTER_RESETTING)
		FUNC3(pf);

	if (pf->state & IXL_PF_STATE_MDD_PENDING)
		FUNC4(pf);

	FUNC5(pf, &pending);
	FUNC6(pf);
	FUNC7(pf);
	
	/*
	 * If there are still messages to process, reschedule ourselves.
	 * Otherwise, re-enable our interrupt and go to sleep.
	 */
	if (pending > 0)
		FUNC0(ctx);
	else
		FUNC2(hw);
}