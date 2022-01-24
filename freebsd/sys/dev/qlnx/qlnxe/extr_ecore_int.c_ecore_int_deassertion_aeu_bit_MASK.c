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
struct ecore_hwfn {int /*<<< orphan*/  p_dpc_ptt; TYPE_1__* p_dev; } ;
struct aeu_invert_reg_bit {int (* cb ) (struct ecore_hwfn*) ;scalar_t__ block_index; int flags; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {scalar_t__ attn_clr_en; } ;

/* Variables and functions */
 int ATTENTION_CLEAR_ENABLE ; 
 int /*<<< orphan*/  ATTN_TYPE_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int,char*,char const*) ; 
 int /*<<< orphan*/  ECORE_HW_ERR_HW_ATTN ; 
 int ECORE_INVAL ; 
 int ECORE_SUCCESS ; 
 scalar_t__ MAX_BLOCK_ID ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ecore_hwfn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct ecore_hwfn*) ; 

__attribute__((used)) static enum _ecore_status_t
FUNC7(struct ecore_hwfn *p_hwfn,
			      struct aeu_invert_reg_bit *p_aeu,
			      u32 aeu_en_reg,
			      const char *p_bit_name,
			      u32 bitmask)
{
	enum _ecore_status_t rc = ECORE_INVAL;
	bool b_fatal = false;

	FUNC0(p_hwfn, "Deasserted attention `%s'[%08x]\n",
		p_bit_name, bitmask);

	/* Call callback before clearing the interrupt status */
	if (p_aeu->cb) {
		FUNC0(p_hwfn, "`%s (attention)': Calling Callback function\n",
			p_bit_name);
		rc = p_aeu->cb(p_hwfn);
	}

	if (rc != ECORE_SUCCESS)
		b_fatal = true;

	/* Print HW block interrupt registers */
	if (p_aeu->block_index != MAX_BLOCK_ID)
		FUNC3(p_hwfn, p_aeu->block_index,
				     ATTN_TYPE_INTERRUPT, !b_fatal);

	/* Reach assertion if attention is fatal */
	if (b_fatal) {
		FUNC1(p_hwfn, true, "`%s': Fatal attention\n",
			  p_bit_name);

		FUNC2(p_hwfn, ECORE_HW_ERR_HW_ATTN);
	}

	/* Prevent this Attention from being asserted in the future */
	if (p_aeu->flags & ATTENTION_CLEAR_ENABLE ||
	    p_hwfn->p_dev->attn_clr_en) {
		u32 val;
		u32 mask = ~bitmask;
		val = FUNC4(p_hwfn, p_hwfn->p_dpc_ptt, aeu_en_reg);
		FUNC5(p_hwfn, p_hwfn->p_dpc_ptt, aeu_en_reg, (val & mask));
		FUNC0(p_hwfn, "`%s' - Disabled future attentions\n",
			p_bit_name);
	}

	return rc;
}