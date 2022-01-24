#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_4__ {scalar_t__ (* update ) (struct e1000_hw*) ;scalar_t__ (* write ) (struct e1000_hw*,int,int,int*) ;scalar_t__ (* read ) (struct e1000_hw*,int,int,int*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct TYPE_6__ {int type; } ;
struct e1000_hw {TYPE_2__ nvm; TYPE_3__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int NVM_COMPAT ; 
 int NVM_COMPAT_VALID_CSUM ; 
 int NVM_FUTURE_INIT_WORD1 ; 
 int NVM_FUTURE_INIT_WORD1_VALID_CSUM ; 
#define  e1000_pch_cnp 130 
#define  e1000_pch_lpt 129 
#define  e1000_pch_spt 128 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int,int,int*) ; 
 scalar_t__ FUNC3 (struct e1000_hw*,int,int,int*) ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 

__attribute__((used)) static s32 FUNC5(struct e1000_hw *hw)
{
	s32 ret_val;
	u16 data;
	u16 word;
	u16 valid_csum_mask;

	FUNC0("e1000_validate_nvm_checksum_ich8lan");

	/* Read NVM and check Invalid Image CSUM bit.  If this bit is 0,
	 * the checksum needs to be fixed.  This bit is an indication that
	 * the NVM was prepared by OEM software and did not calculate
	 * the checksum...a likely scenario.
	 */
	switch (hw->mac.type) {
	case e1000_pch_lpt:
	case e1000_pch_spt:
	case e1000_pch_cnp:
		word = NVM_COMPAT;
		valid_csum_mask = NVM_COMPAT_VALID_CSUM;
		break;
	default:
		word = NVM_FUTURE_INIT_WORD1;
		valid_csum_mask = NVM_FUTURE_INIT_WORD1_VALID_CSUM;
		break;
	}

	ret_val = hw->nvm.ops.read(hw, word, 1, &data);
	if (ret_val)
		return ret_val;

	if (!(data & valid_csum_mask)) {
		data |= valid_csum_mask;
		ret_val = hw->nvm.ops.write(hw, word, 1, &data);
		if (ret_val)
			return ret_val;
		ret_val = hw->nvm.ops.update(hw);
		if (ret_val)
			return ret_val;
	}

	return FUNC1(hw);
}