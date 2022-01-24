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
typedef  void* u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int rel_pf_id; struct ecore_dev* p_dev; } ;
struct ecore_dev {int vendor_id; int device_id; int chip_num; int num_hwfns; int b_is_emul_full; struct ecore_hwfn* hwfns; void* chip_metal; void* chip_bond_id; void* chip_rev; int /*<<< orphan*/  type; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHIP_BOND_ID ; 
 int /*<<< orphan*/  CHIP_METAL ; 
 int /*<<< orphan*/  CHIP_NUM ; 
 int /*<<< orphan*/  CHIP_REV ; 
 scalar_t__ FUNC0 (struct ecore_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,char*,char*,void*,int,int,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int,char*,...) ; 
 int ECORE_ABORTED ; 
 int ECORE_DEV_ID_MASK ; 
#define  ECORE_DEV_ID_MASK_AH 130 
#define  ECORE_DEV_ID_MASK_BB 129 
#define  ECORE_DEV_ID_MASK_E5 128 
 int /*<<< orphan*/  ECORE_DEV_TYPE_AH ; 
 int /*<<< orphan*/  ECORE_DEV_TYPE_BB ; 
 int /*<<< orphan*/  ECORE_DEV_TYPE_E5 ; 
 scalar_t__ FUNC3 (struct ecore_dev*) ; 
 scalar_t__ FUNC4 (struct ecore_dev*) ; 
 scalar_t__ FUNC5 (struct ecore_dev*) ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MISCS_REG_CHIP_METAL ; 
 int /*<<< orphan*/  MISCS_REG_CHIP_NUM ; 
 int /*<<< orphan*/  MISCS_REG_CHIP_REV ; 
 int /*<<< orphan*/  MISCS_REG_CHIP_TEST_REG ; 
 int /*<<< orphan*/  MISCS_REG_CMT_ENABLED_FOR_PAIR ; 
 int /*<<< orphan*/  MISCS_REG_ECO_RESERVED ; 
 int /*<<< orphan*/  MISCS_REG_PLL_MAIN_CTRL_4 ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  PCICFG_DEVICE_ID_OFFSET ; 
 int /*<<< orphan*/  PCICFG_VENDOR_ID_OFFSET ; 
 int FUNC8 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum _ecore_status_t FUNC10(struct ecore_hwfn *p_hwfn,
					       struct ecore_ptt *p_ptt)
{
	struct ecore_dev *p_dev = p_hwfn->p_dev;
	u16 device_id_mask;
	u32 tmp;

	/* Read Vendor Id / Device Id */
	FUNC7(p_dev, PCICFG_VENDOR_ID_OFFSET,
				  &p_dev->vendor_id);
	FUNC7(p_dev, PCICFG_DEVICE_ID_OFFSET,
				  &p_dev->device_id);

	/* Determine type */
	device_id_mask = p_dev->device_id & ECORE_DEV_ID_MASK;
	switch (device_id_mask) {
	case ECORE_DEV_ID_MASK_BB:
		p_dev->type = ECORE_DEV_TYPE_BB;
		break;
	case ECORE_DEV_ID_MASK_AH:
		p_dev->type = ECORE_DEV_TYPE_AH;
		break;
	case ECORE_DEV_ID_MASK_E5:
		p_dev->type = ECORE_DEV_TYPE_E5;
		break;
	default:
		FUNC2(p_hwfn, true, "Unknown device id 0x%x\n",
			  p_dev->device_id);
		return ECORE_ABORTED;
	}

	tmp = FUNC8(p_hwfn, p_ptt, MISCS_REG_CHIP_NUM);
	p_dev->chip_num = (u16)FUNC6(tmp, CHIP_NUM);
	tmp = FUNC8(p_hwfn, p_ptt, MISCS_REG_CHIP_REV);
	p_dev->chip_rev = (u8)FUNC6(tmp, CHIP_REV);

	/* Learn number of HW-functions */
	tmp = FUNC8(p_hwfn, p_ptt, MISCS_REG_CMT_ENABLED_FOR_PAIR);

	if (tmp & (1 << p_hwfn->rel_pf_id)) {
		FUNC2(p_dev->hwfns, false, "device in CMT mode\n");
		p_dev->num_hwfns = 2;
	} else {
		p_dev->num_hwfns = 1;
	}

#ifndef ASIC_ONLY
	if (FUNC0(p_dev)) {
		/* For some reason we have problems with this register
		 * in B0 emulation; Simply assume no CMT
		 */
		FUNC2(p_dev->hwfns, false, "device on emul - assume no CMT\n");
		p_dev->num_hwfns = 1;
	}
#endif

	tmp = FUNC8(p_hwfn, p_ptt, MISCS_REG_CHIP_TEST_REG);
	p_dev->chip_bond_id = (u8)FUNC6(tmp, CHIP_BOND_ID);
	tmp = FUNC8(p_hwfn, p_ptt, MISCS_REG_CHIP_METAL);
	p_dev->chip_metal = (u8)FUNC6(tmp, CHIP_METAL);

	FUNC1(p_dev->hwfns,
		"Chip details - %s %c%d, Num: %04x Rev: %02x Bond id: %02x Metal: %02x\n",
		FUNC4(p_dev) ? "BB" : "AH",
		'A' + p_dev->chip_rev, (int)p_dev->chip_metal,
		p_dev->chip_num, p_dev->chip_rev, p_dev->chip_bond_id,
		p_dev->chip_metal);

	if (FUNC5(p_dev)) {
		FUNC2(p_dev->hwfns, false,
			  "The chip type/rev (BB A0) is not supported!\n");
		return ECORE_ABORTED;
	}

#ifndef ASIC_ONLY
	if (FUNC0(p_dev) && FUNC3(p_dev))
		FUNC9(p_hwfn, p_ptt, MISCS_REG_PLL_MAIN_CTRL_4, 0x1);

	if (FUNC0(p_dev)) {
		tmp = FUNC8(p_hwfn, p_ptt, MISCS_REG_ECO_RESERVED);
		if (tmp & (1 << 29)) {
			FUNC2(p_hwfn, false, "Emulation: Running on a FULL build\n");
			p_dev->b_is_emul_full = true;
		} else {
			FUNC2(p_hwfn, false, "Emulation: Running on a REDUCED build\n");
		}
	}
#endif

	return ECORE_SUCCESS;
}