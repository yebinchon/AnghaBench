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
typedef  int u8 ;
typedef  int u32 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_3__ {scalar_t__ state; } ;
struct dbg_tools_data {scalar_t__ platform_id; scalar_t__ chip_id; TYPE_1__ bus; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
typedef  enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
struct TYPE_4__ {int /*<<< orphan*/  grc_param; } ;

/* Variables and functions */
 size_t BLOCK_MCP ; 
 scalar_t__ CHIP_K2 ; 
 scalar_t__ DBG_BUS_STATE_IDLE ; 
 int /*<<< orphan*/  DBG_GRC_PARAM_DUMP_CM_CTX ; 
 int /*<<< orphan*/  DBG_GRC_PARAM_DUMP_IOR ; 
 int /*<<< orphan*/  DBG_GRC_PARAM_DUMP_MCP ; 
 int /*<<< orphan*/  DBG_GRC_PARAM_DUMP_PHY ; 
 int /*<<< orphan*/  DBG_GRC_PARAM_DUMP_REGS ; 
 int /*<<< orphan*/  DBG_GRC_PARAM_DUMP_RSS ; 
 int /*<<< orphan*/  DBG_GRC_PARAM_DUMP_STATIC ; 
 int /*<<< orphan*/  DBG_GRC_PARAM_DUMP_VFC ; 
 int /*<<< orphan*/  DBG_GRC_PARAM_NO_MCP ; 
 int /*<<< orphan*/  DBG_GRC_PARAM_NUM_LCIDS ; 
 int /*<<< orphan*/  DBG_GRC_PARAM_NUM_LTIDS ; 
 int /*<<< orphan*/  DBG_GRC_PARAM_PARITY_SAFE ; 
 int /*<<< orphan*/  DBG_GRC_PARAM_UNSTALL ; 
 int DBG_STATUS_MCP_COULD_NOT_MASK_PRTY ; 
 int DBG_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int MAX_BLOCK_ID ; 
 int /*<<< orphan*/  MISC_REG_PORT_MODE ; 
 int NUM_BIG_RAM_TYPES ; 
 int /*<<< orphan*/  OSAL_NULL ; 
 scalar_t__ PLATFORM_ASIC ; 
 int FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int) ; 
 int FUNC2 (int*,int,int) ; 
 int FUNC3 (int*,int,char*,int) ; 
 int FUNC4 (int*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int) ; 
 int FUNC7 (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ; 
 int FUNC8 (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ; 
 int FUNC9 (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ; 
 int FUNC10 (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ; 
 int FUNC11 (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ; 
 int FUNC12 (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ; 
 int FUNC13 (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ; 
 int FUNC15 (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ; 
 int FUNC16 (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ; 
 int FUNC17 (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ; 
 int FUNC18 (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ; 
 int FUNC19 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct ecore_hwfn*,struct ecore_ptt*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC23 (struct ecore_hwfn*,struct ecore_ptt*,int) ; 
 int FUNC24 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 TYPE_2__* s_big_ram_defs ; 

__attribute__((used)) static enum dbg_status FUNC26(struct ecore_hwfn *p_hwfn,
									  struct ecore_ptt *p_ptt,
									  u32 *dump_buf,
									  bool dump,
									  u32 *num_dumped_dwords)
{
	struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
	bool is_asic, parities_masked = false;
	u8 i, port_mode = 0;
	u32 offset = 0;

	is_asic = dev_data->platform_id == PLATFORM_ASIC;

	*num_dumped_dwords = 0;

	if (dump) {

		/* Find port mode */
		switch (FUNC24(p_hwfn, p_ptt, MISC_REG_PORT_MODE)) {
		case 0: port_mode = 1; break;
		case 1: port_mode = 2; break;
		case 2: port_mode = 4; break;
		}

		/* Update reset state */
		FUNC25(p_hwfn, p_ptt);
	}

	/* Dump global params */
	offset += FUNC1(p_hwfn, p_ptt, dump_buf + offset, dump, 4);
	offset += FUNC4(dump_buf + offset, dump, "dump-type", "grc-dump");
	offset += FUNC3(dump_buf + offset, dump, "num-lcids", FUNC19(p_hwfn, DBG_GRC_PARAM_NUM_LCIDS));
	offset += FUNC3(dump_buf + offset, dump, "num-ltids", FUNC19(p_hwfn, DBG_GRC_PARAM_NUM_LTIDS));
	offset += FUNC3(dump_buf + offset, dump, "num-ports", port_mode);

	/* Dump reset registers (dumped before taking blocks out of reset ) */
	if (FUNC20(p_hwfn, DBG_GRC_PARAM_DUMP_REGS))
		offset += FUNC14(p_hwfn, p_ptt, dump_buf + offset, dump);

	/* Take all blocks out of reset (using reset registers) */
	if (dump) {
		FUNC22(p_hwfn, p_ptt);
		FUNC25(p_hwfn, p_ptt);
	}

	/* Disable all parities using MFW command */
	if (dump && is_asic && !FUNC19(p_hwfn, DBG_GRC_PARAM_NO_MCP)) {
			parities_masked = !FUNC23(p_hwfn, p_ptt, 1);
			if (!parities_masked) {
				FUNC0(p_hwfn, false, "Failed to mask parities using MFW\n");
				if (FUNC19(p_hwfn, DBG_GRC_PARAM_PARITY_SAFE))
					return DBG_STATUS_MCP_COULD_NOT_MASK_PRTY;
			}
		}

	/* Dump modified registers (dumped before modifying them) */
	if (FUNC20(p_hwfn, DBG_GRC_PARAM_DUMP_REGS))
		offset += FUNC11(p_hwfn, p_ptt, dump_buf + offset, dump);

	/* Stall storms */
	if (dump && (FUNC20(p_hwfn, DBG_GRC_PARAM_DUMP_IOR) || FUNC20(p_hwfn, DBG_GRC_PARAM_DUMP_VFC)))
		FUNC21(p_hwfn, p_ptt, true);

	/* Dump all regs  */
	if (FUNC20(p_hwfn, DBG_GRC_PARAM_DUMP_REGS)) {
		bool block_enable[MAX_BLOCK_ID];

		/* Dump all blocks except MCP */
		for (i = 0; i < MAX_BLOCK_ID; i++)
			block_enable[i] = true;
		block_enable[BLOCK_MCP] = false;
		offset += FUNC13(p_hwfn, p_ptt, dump_buf + offset, dump, block_enable, OSAL_NULL, OSAL_NULL);

		/* Dump special registers */
		offset += FUNC16(p_hwfn, p_ptt, dump_buf + offset, dump);
	}

	/* Dump memories */
	offset += FUNC10(p_hwfn, p_ptt, dump_buf + offset, dump);

	/* Dump MCP */
	if (FUNC20(p_hwfn, DBG_GRC_PARAM_DUMP_MCP))
		offset += FUNC9(p_hwfn, p_ptt, dump_buf + offset, dump);

	/* Dump context */
	if (FUNC20(p_hwfn, DBG_GRC_PARAM_DUMP_CM_CTX))
		offset += FUNC7(p_hwfn, p_ptt, dump_buf + offset, dump);

	/* Dump RSS memories */
	if (FUNC20(p_hwfn, DBG_GRC_PARAM_DUMP_RSS))
		offset += FUNC15(p_hwfn, p_ptt, dump_buf + offset, dump);

	/* Dump Big RAM */
	for (i = 0; i < NUM_BIG_RAM_TYPES; i++)
		if (FUNC20(p_hwfn, s_big_ram_defs[i].grc_param))
			offset += FUNC6(p_hwfn, p_ptt, dump_buf + offset, dump, i);

	/* Dump IORs */
	if (FUNC20(p_hwfn, DBG_GRC_PARAM_DUMP_IOR))
		offset += FUNC8(p_hwfn, p_ptt, dump_buf + offset, dump);

	/* Dump VFC */
	if (FUNC20(p_hwfn, DBG_GRC_PARAM_DUMP_VFC))
		offset += FUNC18(p_hwfn, p_ptt, dump_buf + offset, dump);

	/* Dump PHY tbus */
	if (FUNC20(p_hwfn, DBG_GRC_PARAM_DUMP_PHY) && dev_data->chip_id == CHIP_K2 && dev_data->platform_id == PLATFORM_ASIC)
		offset += FUNC12(p_hwfn, p_ptt, dump_buf + offset, dump);

	/* Dump static debug data  */
	if (FUNC20(p_hwfn, DBG_GRC_PARAM_DUMP_STATIC) && dev_data->bus.state == DBG_BUS_STATE_IDLE)
		offset += FUNC17(p_hwfn, p_ptt, dump_buf + offset, dump);

	/* Dump last section */
	offset += FUNC2(dump_buf, offset, dump);

	if (dump) {

		/* Unstall storms */
		if (FUNC19(p_hwfn, DBG_GRC_PARAM_UNSTALL))
			FUNC21(p_hwfn, p_ptt, false);

		/* Clear parity status */
		if (is_asic)
			FUNC5(p_hwfn, p_ptt);

		/* Enable all parities using MFW command */
		if (parities_masked)
			FUNC23(p_hwfn, p_ptt, 0);
	}

	*num_dumped_dwords = offset;

	return DBG_STATUS_OK;
}