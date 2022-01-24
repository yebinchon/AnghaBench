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
struct TYPE_3__ {scalar_t__ count; int /*<<< orphan*/  bah; int /*<<< orphan*/  bal; int /*<<< orphan*/  len; int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;
struct TYPE_4__ {int /*<<< orphan*/  arq_spinlock; TYPE_1__ arq; } ;
struct i40e_hw {TYPE_2__ aq; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int I40E_ERR_NOT_READY ; 
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC4(struct i40e_hw *hw)
{
	enum i40e_status_code ret_code = I40E_SUCCESS;

	FUNC0(&hw->aq.arq_spinlock);

	if (hw->aq.arq.count == 0) {
		ret_code = I40E_ERR_NOT_READY;
		goto shutdown_arq_out;
	}

	/* Stop firmware AdminQ processing */
	FUNC3(hw, hw->aq.arq.head, 0);
	FUNC3(hw, hw->aq.arq.tail, 0);
	FUNC3(hw, hw->aq.arq.len, 0);
	FUNC3(hw, hw->aq.arq.bal, 0);
	FUNC3(hw, hw->aq.arq.bah, 0);

	hw->aq.arq.count = 0; /* to indicate uninitialized queue */

	/* free ring buffers */
	FUNC1(hw);

shutdown_arq_out:
	FUNC2(&hw->aq.arq_spinlock);
	return ret_code;
}