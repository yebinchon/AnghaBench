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
struct ecore_sb_attn_info {scalar_t__ known_attn; struct atten_status_block* sb_attn; } ;
struct ecore_hwfn {struct ecore_sb_attn_info* p_sb_attn; } ;
struct atten_status_block {scalar_t__ sb_index; int /*<<< orphan*/  atten_ack; int /*<<< orphan*/  atten_bits; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 scalar_t__ ATTN_STATE_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ECORE_MSG_INTR ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ecore_hwfn*,scalar_t__) ; 
 int FUNC5 (struct ecore_hwfn*,scalar_t__) ; 

__attribute__((used)) static enum _ecore_status_t FUNC6(struct ecore_hwfn *p_hwfn)
{
	struct ecore_sb_attn_info *p_sb_attn_sw = p_hwfn->p_sb_attn;
	struct atten_status_block *p_sb_attn = p_sb_attn_sw->sb_attn;
	u16 index = 0, asserted_bits, deasserted_bits;
	u32 attn_bits = 0, attn_acks = 0;
	enum _ecore_status_t rc = ECORE_SUCCESS;

	/* Read current attention bits/acks - safeguard against attentions
	 * by guaranting work on a synchronized timeframe
	 */
	do {
		index = FUNC2(p_sb_attn->sb_index);
		attn_bits = FUNC3(p_sb_attn->atten_bits);
		attn_acks = FUNC3(p_sb_attn->atten_ack);
	} while (index != FUNC2(p_sb_attn->sb_index));
	p_sb_attn->sb_index = index;

	/* Attention / Deassertion are meaningful (and in correct state)
	 * only when they differ and consistent with known state - deassertion
	 * when previous attention & current ack, and assertion when current
	 * attention with no previous attention
	 */
	asserted_bits = (attn_bits & ~attn_acks & ATTN_STATE_BITS) &
			~p_sb_attn_sw->known_attn;
	deasserted_bits = (~attn_bits & attn_acks & ATTN_STATE_BITS) &
			  p_sb_attn_sw->known_attn;

	if ((asserted_bits & ~0x100) || (deasserted_bits & ~0x100))
		FUNC0(p_hwfn,
			"Attention: Index: 0x%04x, Bits: 0x%08x, Acks: 0x%08x, asserted: 0x%04x, De-asserted 0x%04x [Prev. known: 0x%04x]\n",
			index, attn_bits, attn_acks, asserted_bits,
			deasserted_bits, p_sb_attn_sw->known_attn);
	else if (asserted_bits == 0x100)
		FUNC0(p_hwfn,
			"MFW indication via attention\n");
	else
		FUNC1(p_hwfn, ECORE_MSG_INTR,
			   "MFW indication [deassertion]\n");

	if (asserted_bits) {
		rc = FUNC4(p_hwfn, asserted_bits);
		if (rc)
			return rc;
	}

	if (deasserted_bits)
		rc = FUNC5(p_hwfn, deasserted_bits);

	return rc;
}