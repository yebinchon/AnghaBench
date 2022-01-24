#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct dbg_idle_chk_rule {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
struct dbg_idle_chk_cond_hdr {int data_size; TYPE_1__ mode; } ;
struct TYPE_4__ {int size_in_dwords; int /*<<< orphan*/ * ptr; } ;

/* Variables and functions */
 size_t BIN_BUF_DBG_IDLE_CHK_RULES ; 
 int /*<<< orphan*/  DBG_MODE_HDR_EVAL_MODE ; 
 int /*<<< orphan*/  DBG_MODE_HDR_MODES_BUF_OFFSET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IDLE_CHK_RULE_SIZE_DWORDS ; 
 int FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int) ; 
 int FUNC2 (int*,int,int) ; 
 int FUNC3 (int*,int,char*,int) ; 
 int FUNC4 (int*,int,char*,int) ; 
 int FUNC5 (int*,int,char*,char*) ; 
 int FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,int*,int,struct dbg_idle_chk_rule const*,int,int*) ; 
 int FUNC7 (struct ecore_hwfn*,scalar_t__*) ; 
 TYPE_2__* s_dbg_arrays ; 

__attribute__((used)) static u32 FUNC8(struct ecore_hwfn *p_hwfn,
							   struct ecore_ptt *p_ptt,
							   u32 *dump_buf,
							   bool dump)
{
	u32 num_failing_rules_offset, offset = 0, input_offset = 0, num_failing_rules = 0;

	/* Dump global params */
	offset += FUNC1(p_hwfn, p_ptt, dump_buf + offset, dump, 1);
	offset += FUNC5(dump_buf + offset, dump, "dump-type", "idle-chk");

	/* Dump idle check section header with a single parameter */
	offset += FUNC4(dump_buf + offset, dump, "idle_chk", 1);
	num_failing_rules_offset = offset;
	offset += FUNC3(dump_buf + offset, dump, "num_rules", 0);

	while (input_offset < s_dbg_arrays[BIN_BUF_DBG_IDLE_CHK_RULES].size_in_dwords) {
		const struct dbg_idle_chk_cond_hdr *cond_hdr = (const struct dbg_idle_chk_cond_hdr *)&s_dbg_arrays[BIN_BUF_DBG_IDLE_CHK_RULES].ptr[input_offset++];
		bool eval_mode, mode_match = true;
		u32 curr_failing_rules;
		u16 modes_buf_offset;

		/* Check mode */
		eval_mode = FUNC0(cond_hdr->mode.data, DBG_MODE_HDR_EVAL_MODE) > 0;
		if (eval_mode) {
			modes_buf_offset = FUNC0(cond_hdr->mode.data, DBG_MODE_HDR_MODES_BUF_OFFSET);
			mode_match = FUNC7(p_hwfn, &modes_buf_offset);
		}

		if (mode_match) {
			offset += FUNC6(p_hwfn, p_ptt, dump_buf + offset, dump, (const struct dbg_idle_chk_rule *)&s_dbg_arrays[BIN_BUF_DBG_IDLE_CHK_RULES].ptr[input_offset], cond_hdr->data_size / IDLE_CHK_RULE_SIZE_DWORDS, &curr_failing_rules);
			num_failing_rules += curr_failing_rules;
		}

		input_offset += cond_hdr->data_size;
	}

	/* Overwrite num_rules parameter */
	if (dump)
		FUNC3(dump_buf + num_failing_rules_offset, dump, "num_rules", num_failing_rules);

	/* Dump last section */
	offset += FUNC2(dump_buf, offset, dump);

	return offset;
}