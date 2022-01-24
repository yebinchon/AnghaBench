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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_ERR_NVM ; 
 scalar_t__ E1000_SUCCESS ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static s32 FUNC4(struct e1000_hw *hw,
						u32 offset, u8 byte)
{
	s32 ret_val;
	u16 program_retries;

	FUNC0("e1000_retry_write_flash_byte_ich8lan");

	ret_val = FUNC2(hw, offset, byte);
	if (!ret_val)
		return ret_val;

	for (program_retries = 0; program_retries < 100; program_retries++) {
		FUNC1("Retrying Byte %2.2X at offset %u\n", byte, offset);
		FUNC3(100);
		ret_val = FUNC2(hw, offset, byte);
		if (ret_val == E1000_SUCCESS)
			break;
	}
	if (program_retries == 100)
		return -E1000_ERR_NVM;

	return E1000_SUCCESS;
}