#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int (* acquire ) (struct e1000_hw*) ;int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;} ;
struct e1000_nvm_info {scalar_t__ word_size; scalar_t__ opcode_bits; int address_bits; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_EECD ; 
 int E1000_EECD_DO ; 
 int E1000_ERR_NVM ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ NVM_EWDS_OPCODE_MICROWIRE ; 
 scalar_t__ NVM_EWEN_OPCODE_MICROWIRE ; 
 scalar_t__ NVM_WRITE_OPCODE_MICROWIRE ; 
 int FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*) ; 
 int FUNC6 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

s32 FUNC9(struct e1000_hw *hw, u16 offset, u16 words,
			      u16 *data)
{
	struct e1000_nvm_info *nvm = &hw->nvm;
	s32  ret_val;
	u32 eecd;
	u16 words_written = 0;
	u16 widx = 0;

	FUNC0("e1000_write_nvm_microwire");

	/* A check for invalid values:  offset too large, too many words,
	 * and not enough words.
	 */
	if ((offset >= nvm->word_size) || (words > (nvm->word_size - offset)) ||
	    (words == 0)) {
		FUNC1("nvm parameter(s) out of bounds\n");
		return -E1000_ERR_NVM;
	}

	ret_val = nvm->ops.acquire(hw);
	if (ret_val)
		return ret_val;

	ret_val = FUNC3(hw);
	if (ret_val)
		goto release;

	FUNC4(hw, NVM_EWEN_OPCODE_MICROWIRE,
				 (u16)(nvm->opcode_bits + 2));

	FUNC4(hw, 0, (u16)(nvm->address_bits - 2));

	FUNC5(hw);

	while (words_written < words) {
		FUNC4(hw, NVM_WRITE_OPCODE_MICROWIRE,
					 nvm->opcode_bits);

		FUNC4(hw, (u16)(offset + words_written),
					 nvm->address_bits);

		FUNC4(hw, data[words_written], 16);

		FUNC5(hw);

		for (widx = 0; widx < 200; widx++) {
			eecd = FUNC2(hw, E1000_EECD);
			if (eecd & E1000_EECD_DO)
				break;
			FUNC8(50);
		}

		if (widx == 200) {
			FUNC1("NVM Write did not complete\n");
			ret_val = -E1000_ERR_NVM;
			goto release;
		}

		FUNC5(hw);

		words_written++;
	}

	FUNC4(hw, NVM_EWDS_OPCODE_MICROWIRE,
				 (u16)(nvm->opcode_bits + 2));

	FUNC4(hw, 0, (u16)(nvm->address_bits - 2));

release:
	nvm->ops.release(hw);

	return ret_val;
}