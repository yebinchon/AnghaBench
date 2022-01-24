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
struct i40e_aq_desc {int dummy; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  i40e_aqc_opc_alternate_clear_port ; 
 int FUNC0 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC2(struct i40e_hw *hw)
{
	struct i40e_aq_desc desc;
	enum i40e_status_code status;

	FUNC1(&desc,
					  i40e_aqc_opc_alternate_clear_port);

	status = FUNC0(hw, &desc, NULL, 0, NULL);

	return status;
}