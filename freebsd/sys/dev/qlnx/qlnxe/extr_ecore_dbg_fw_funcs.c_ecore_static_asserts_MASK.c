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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_BIN_DBG_BUFFER_TYPE ; 
 int /*<<< orphan*/  MAX_CHIP_IDS ; 
 int /*<<< orphan*/  MAX_DBG_BUS_CONSTRAINT_OPS ; 
 int /*<<< orphan*/  MAX_DBG_BUS_STORM_MODES ; 
 int /*<<< orphan*/  MAX_DBG_BUS_TARGETS ; 
 int /*<<< orphan*/  MAX_DBG_GRC_PARAMS ; 
 int /*<<< orphan*/  MAX_DBG_RESET_REGS ; 
 int /*<<< orphan*/  MAX_DBG_STORMS ; 
 int /*<<< orphan*/  MAX_PLATFORM_IDS ; 
 int /*<<< orphan*/  NUM_BIG_RAM_TYPES ; 
 int /*<<< orphan*/  NUM_RSS_MEM_TYPES ; 
 int /*<<< orphan*/  NUM_VFC_RAM_TYPES ; 
 int /*<<< orphan*/  s_big_ram_defs ; 
 int /*<<< orphan*/  s_chip_defs ; 
 int /*<<< orphan*/  s_constraint_op_defs ; 
 int /*<<< orphan*/  s_dbg_arrays ; 
 int /*<<< orphan*/  s_dbg_target_names ; 
 int /*<<< orphan*/  s_grc_param_defs ; 
 int /*<<< orphan*/  s_platform_defs ; 
 int /*<<< orphan*/  s_reset_regs_defs ; 
 int /*<<< orphan*/  s_rss_mem_defs ; 
 int /*<<< orphan*/  s_storm_defs ; 
 int /*<<< orphan*/  s_storm_mode_defs ; 
 int /*<<< orphan*/  s_vfc_ram_defs ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0(s_dbg_arrays, MAX_BIN_DBG_BUFFER_TYPE);
	FUNC0(s_big_ram_defs, NUM_BIG_RAM_TYPES);
	FUNC0(s_vfc_ram_defs, NUM_VFC_RAM_TYPES);
	FUNC0(s_rss_mem_defs, NUM_RSS_MEM_TYPES);
	FUNC0(s_chip_defs, MAX_CHIP_IDS);
	FUNC0(s_platform_defs, MAX_PLATFORM_IDS);
	FUNC0(s_storm_defs, MAX_DBG_STORMS);
	FUNC0(s_constraint_op_defs, MAX_DBG_BUS_CONSTRAINT_OPS);
	FUNC0(s_dbg_target_names, MAX_DBG_BUS_TARGETS);
	FUNC0(s_storm_mode_defs, MAX_DBG_BUS_STORM_MODES);
	FUNC0(s_grc_param_defs, MAX_DBG_GRC_PARAMS);
	FUNC0(s_reset_regs_defs, MAX_DBG_RESET_REGS);
}