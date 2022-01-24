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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct ecore_hwfn {int /*<<< orphan*/  p_dpc_ptt; int /*<<< orphan*/  p_dev; } ;
struct aeu_invert_reg_bit {scalar_t__ block_index; int /*<<< orphan*/  bit_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTN_TYPE_PARITY ; 
 scalar_t__ BLOCK_BTB ; 
 scalar_t__ BLOCK_MCP ; 
 scalar_t__ BLOCK_OPTE ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ MAX_BLOCK_ID ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ecore_hwfn *p_hwfn,
					 struct aeu_invert_reg_bit *p_aeu,
					 u32 aeu_en_reg, u8 bit_index)
{
	u32 block_id = p_aeu->block_index, mask, val;

	FUNC1(p_hwfn->p_dev, false,
		  "%s parity attention is set [address 0x%08x, bit %d]\n",
		  p_aeu->bit_name, aeu_en_reg, bit_index);

	if (block_id != MAX_BLOCK_ID) {
		FUNC2(p_hwfn, block_id, ATTN_TYPE_PARITY, false);

		/* In A0, there's a single parity bit for several blocks */
		if (block_id == BLOCK_BTB) {
			FUNC2(p_hwfn, BLOCK_OPTE,
					     ATTN_TYPE_PARITY, false);
			FUNC2(p_hwfn, BLOCK_MCP,
					     ATTN_TYPE_PARITY, false);
		}
	}

	/* Prevent this parity error from being re-asserted */
	mask = ~(0x1 << bit_index);
	val = FUNC3(p_hwfn, p_hwfn->p_dpc_ptt, aeu_en_reg);
	FUNC4(p_hwfn, p_hwfn->p_dpc_ptt, aeu_en_reg, val & mask);
	FUNC0(p_hwfn, "`%s' - Disabled future parity errors\n",
		p_aeu->bit_name);
}