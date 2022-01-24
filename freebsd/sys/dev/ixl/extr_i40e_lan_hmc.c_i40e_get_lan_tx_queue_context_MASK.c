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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_hmc_obj_txq {int dummy; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_HMC_LAN_TX ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct i40e_hw*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i40e_hmc_txq_ce_info ; 

enum i40e_status_code FUNC2(struct i40e_hw *hw,
						    u16 queue,
						    struct i40e_hmc_obj_txq *s)
{
	enum i40e_status_code err;
	u8 *context_bytes;

	err = FUNC1(hw, &context_bytes, I40E_HMC_LAN_TX, queue);
	if (err < 0)
		return err;

	return FUNC0(context_bytes,
				    i40e_hmc_txq_ce_info, (u8 *)s);
}