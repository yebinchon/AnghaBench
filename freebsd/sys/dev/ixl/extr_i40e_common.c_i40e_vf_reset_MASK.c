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
struct i40e_hw {int dummy; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_SUCCESS ; 
 int /*<<< orphan*/  VIRTCHNL_OP_RESET_VF ; 
 int FUNC0 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

enum i40e_status_code FUNC1(struct i40e_hw *hw)
{
	return FUNC0(hw, VIRTCHNL_OP_RESET_VF,
				      I40E_SUCCESS, NULL, 0, NULL);
}