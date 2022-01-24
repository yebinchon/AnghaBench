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
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; int /*<<< orphan*/  hw_addr; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int E1000_ERR_CONFIG ; 
#define  e1000_80003es2lan 162 
#define  e1000_82540 161 
#define  e1000_82541 160 
#define  e1000_82541_rev_2 159 
#define  e1000_82542 158 
#define  e1000_82543 157 
#define  e1000_82544 156 
#define  e1000_82545 155 
#define  e1000_82545_rev_3 154 
#define  e1000_82546 153 
#define  e1000_82546_rev_3 152 
#define  e1000_82547 151 
#define  e1000_82547_rev_2 150 
#define  e1000_82571 149 
#define  e1000_82572 148 
#define  e1000_82573 147 
#define  e1000_82574 146 
#define  e1000_82575 145 
#define  e1000_82576 144 
#define  e1000_82580 143 
#define  e1000_82583 142 
#define  e1000_i210 141 
#define  e1000_i211 140 
#define  e1000_i350 139 
#define  e1000_i354 138 
#define  e1000_ich10lan 137 
#define  e1000_ich8lan 136 
#define  e1000_ich9lan 135 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct e1000_hw*) ; 
 int FUNC12 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC13 (struct e1000_hw*) ; 
 int FUNC14 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC15 (struct e1000_hw*) ; 
 int FUNC16 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC17 (struct e1000_hw*) ; 
 int FUNC18 (struct e1000_hw*) ; 
#define  e1000_pch2lan 134 
#define  e1000_pch_cnp 133 
#define  e1000_pch_lpt 132 
#define  e1000_pch_spt 131 
#define  e1000_pchlan 130 
 int FUNC19 (struct e1000_hw*) ; 
#define  e1000_vfadapt 129 
#define  e1000_vfadapt_i350 128 

s32 FUNC20(struct e1000_hw *hw, bool init_device)
{
	s32 ret_val;

	/* Can't do much good without knowing the MAC type. */
	ret_val = FUNC19(hw);
	if (ret_val) {
		FUNC0("ERROR: MAC type could not be set properly.\n");
		goto out;
	}

	if (!hw->hw_addr) {
		FUNC0("ERROR: Registers not mapped\n");
		ret_val = -E1000_ERR_CONFIG;
		goto out;
	}

	/*
	 * Init function pointers to generic implementations. We do this first
	 * allowing a driver module to override it afterward.
	 */
	FUNC11(hw);
	FUNC17(hw);
	FUNC15(hw);
	FUNC13(hw);

	/*
	 * Set up the init function pointers. These are functions within the
	 * adapter family file that sets up function pointers for the rest of
	 * the functions in that family.
	 */
	switch (hw->mac.type) {
	case e1000_82542:
		FUNC4(hw);
		break;
	case e1000_82543:
	case e1000_82544:
		FUNC5(hw);
		break;
	case e1000_82540:
	case e1000_82545:
	case e1000_82545_rev_3:
	case e1000_82546:
	case e1000_82546_rev_3:
		FUNC2(hw);
		break;
	case e1000_82541:
	case e1000_82541_rev_2:
	case e1000_82547:
	case e1000_82547_rev_2:
		FUNC3(hw);
		break;
	case e1000_82571:
	case e1000_82572:
	case e1000_82573:
	case e1000_82574:
	case e1000_82583:
		FUNC6(hw);
		break;
	case e1000_80003es2lan:
		FUNC1(hw);
		break;
	case e1000_ich8lan:
	case e1000_ich9lan:
	case e1000_ich10lan:
	case e1000_pchlan:
	case e1000_pch2lan:
	case e1000_pch_lpt:
	case e1000_pch_spt:
	case e1000_pch_cnp:
		FUNC9(hw);
		break;
	case e1000_82575:
	case e1000_82576:
	case e1000_82580:
	case e1000_i350:
	case e1000_i354:
		FUNC7(hw);
		break;
	case e1000_i210:
	case e1000_i211:
		FUNC8(hw);
		break;
	case e1000_vfadapt:
		FUNC10(hw);
		break;
	case e1000_vfadapt_i350:
		FUNC10(hw);
		break;
	default:
		FUNC0("Hardware not supported\n");
		ret_val = -E1000_ERR_CONFIG;
		break;
	}

	/*
	 * Initialize the rest of the function pointers. These require some
	 * register reads/writes in some cases.
	 */
	if (!(ret_val) && init_device) {
		ret_val = FUNC12(hw);
		if (ret_val)
			goto out;

		ret_val = FUNC16(hw);
		if (ret_val)
			goto out;

		ret_val = FUNC18(hw);
		if (ret_val)
			goto out;

		ret_val = FUNC14(hw);
		if (ret_val)
			goto out;
	}

out:
	return ret_val;
}