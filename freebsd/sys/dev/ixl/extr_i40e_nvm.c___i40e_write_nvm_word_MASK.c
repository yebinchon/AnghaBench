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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct i40e_hw {int dummy; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC2 (struct i40e_hw*,int,int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC3(struct i40e_hw *hw, u32 offset,
					    void *data)
{
	FUNC1("i40e_write_nvm_word");

	*((__le16 *)data) = FUNC0(*((u16 *)data));

	/* Value 0x00 below means that we treat SR as a flat mem */
	return FUNC2(hw, 0x00, offset, 1, data, FALSE);
}