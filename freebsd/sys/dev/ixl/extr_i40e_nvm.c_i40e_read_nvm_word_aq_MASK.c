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
typedef  int /*<<< orphan*/  u16 ;
struct i40e_hw {int dummy; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int I40E_ERR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC2 (struct i40e_hw*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum i40e_status_code FUNC3(struct i40e_hw *hw, u16 offset,
						   u16 *data)
{
	enum i40e_status_code ret_code = I40E_ERR_TIMEOUT;

	FUNC0("i40e_read_nvm_word_aq");

	ret_code = FUNC2(hw, 0x0, offset, 1, data, TRUE);
	*data = FUNC1(*(__le16 *)data);

	return ret_code;
}