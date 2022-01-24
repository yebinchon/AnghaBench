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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct e1000_nvm_info {scalar_t__ word_size; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  E1000_EERD ; 
 scalar_t__ E1000_ERR_NVM ; 
 int /*<<< orphan*/  E1000_NVM_POLL_READ ; 
 scalar_t__ E1000_NVM_RW_ADDR_SHIFT ; 
 scalar_t__ E1000_NVM_RW_REG_DATA ; 
 scalar_t__ E1000_NVM_RW_REG_START ; 
 scalar_t__ FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ) ; 

s32 FUNC6(struct e1000_hw *hw, u16 offset, u16 words, u16 *data)
{
	struct e1000_nvm_info *nvm = &hw->nvm;
	u32 i, eerd = 0;
	s32 ret_val = E1000_SUCCESS;

	FUNC0("e1000_read_nvm_eerd");

	/* A check for invalid values:  offset too large, too many words,
	 * too many words for the offset, and not enough words.
	 */
	if ((offset >= nvm->word_size) || (words > (nvm->word_size - offset)) ||
	    (words == 0)) {
		FUNC1("nvm parameter(s) out of bounds\n");
		return -E1000_ERR_NVM;
	}

	for (i = 0; i < words; i++) {
		eerd = ((offset+i) << E1000_NVM_RW_ADDR_SHIFT) +
		       E1000_NVM_RW_REG_START;

		FUNC4(hw, E1000_EERD, eerd);
		ret_val = FUNC5(hw, E1000_NVM_POLL_READ);
		if (ret_val)
			break;

		data[i] = (FUNC3(hw, E1000_EERD) >>
			   E1000_NVM_RW_REG_DATA);
	}

	if (ret_val)
		FUNC2("NVM read error: %d\n", ret_val);

	return ret_val;
}