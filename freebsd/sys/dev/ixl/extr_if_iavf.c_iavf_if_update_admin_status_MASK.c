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
struct iavf_sc {struct i40e_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct iavf_sc*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_sc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct iavf_sc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(if_ctx_t ctx)
{
	struct iavf_sc *sc = FUNC4(ctx);
	struct i40e_hw *hw = &sc->hw;
	u16 pending;

	FUNC1(sc, &pending);
	FUNC2(sc);
	
	/*
	 * If there are still messages to process, reschedule.
	 * Otherwise, re-enable the Admin Queue interrupt.
	 */
	if (pending > 0)
		FUNC3(ctx);
	else
		FUNC0(hw);
}