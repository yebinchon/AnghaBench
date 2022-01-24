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
struct TYPE_3__ {scalar_t__ count; scalar_t__ next_to_clean; scalar_t__ next_to_use; } ;
struct TYPE_4__ {scalar_t__ num_asq_entries; scalar_t__ asq_buf_size; TYPE_1__ asq; } ;
struct i40e_hw {TYPE_2__ aq; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int I40E_ERR_CONFIG ; 
 int I40E_ERR_NOT_READY ; 
 int I40E_SUCCESS ; 
 int FUNC0 (struct i40e_hw*) ; 
 int FUNC1 (struct i40e_hw*) ; 
 int FUNC2 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*) ; 

enum i40e_status_code FUNC4(struct i40e_hw *hw)
{
	enum i40e_status_code ret_code = I40E_SUCCESS;

	if (hw->aq.asq.count > 0) {
		/* queue already initialized */
		ret_code = I40E_ERR_NOT_READY;
		goto init_adminq_exit;
	}

	/* verify input for valid configuration */
	if ((hw->aq.num_asq_entries == 0) ||
	    (hw->aq.asq_buf_size == 0)) {
		ret_code = I40E_ERR_CONFIG;
		goto init_adminq_exit;
	}

	hw->aq.asq.next_to_use = 0;
	hw->aq.asq.next_to_clean = 0;

	/* allocate the ring memory */
	ret_code = FUNC0(hw);
	if (ret_code != I40E_SUCCESS)
		goto init_adminq_exit;

	/* allocate buffers in the rings */
	ret_code = FUNC1(hw);
	if (ret_code != I40E_SUCCESS)
		goto init_adminq_free_rings;

	/* initialize base registers */
	ret_code = FUNC2(hw);
	if (ret_code != I40E_SUCCESS)
		goto init_adminq_free_rings;

	/* success! */
	hw->aq.asq.count = hw->aq.num_asq_entries;
	goto init_adminq_exit;

init_adminq_free_rings:
	FUNC3(hw);

init_adminq_exit:
	return ret_code;
}