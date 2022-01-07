
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_ARR_SIZE (int ,int ) ;
 int MAX_BIN_DBG_BUFFER_TYPE ;
 int MAX_CHIP_IDS ;
 int MAX_DBG_BUS_CONSTRAINT_OPS ;
 int MAX_DBG_BUS_STORM_MODES ;
 int MAX_DBG_BUS_TARGETS ;
 int MAX_DBG_GRC_PARAMS ;
 int MAX_DBG_RESET_REGS ;
 int MAX_DBG_STORMS ;
 int MAX_PLATFORM_IDS ;
 int NUM_BIG_RAM_TYPES ;
 int NUM_RSS_MEM_TYPES ;
 int NUM_VFC_RAM_TYPES ;
 int s_big_ram_defs ;
 int s_chip_defs ;
 int s_constraint_op_defs ;
 int s_dbg_arrays ;
 int s_dbg_target_names ;
 int s_grc_param_defs ;
 int s_platform_defs ;
 int s_reset_regs_defs ;
 int s_rss_mem_defs ;
 int s_storm_defs ;
 int s_storm_mode_defs ;
 int s_vfc_ram_defs ;

__attribute__((used)) static void ecore_static_asserts(void)
{
 CHECK_ARR_SIZE(s_dbg_arrays, MAX_BIN_DBG_BUFFER_TYPE);
 CHECK_ARR_SIZE(s_big_ram_defs, NUM_BIG_RAM_TYPES);
 CHECK_ARR_SIZE(s_vfc_ram_defs, NUM_VFC_RAM_TYPES);
 CHECK_ARR_SIZE(s_rss_mem_defs, NUM_RSS_MEM_TYPES);
 CHECK_ARR_SIZE(s_chip_defs, MAX_CHIP_IDS);
 CHECK_ARR_SIZE(s_platform_defs, MAX_PLATFORM_IDS);
 CHECK_ARR_SIZE(s_storm_defs, MAX_DBG_STORMS);
 CHECK_ARR_SIZE(s_constraint_op_defs, MAX_DBG_BUS_CONSTRAINT_OPS);
 CHECK_ARR_SIZE(s_dbg_target_names, MAX_DBG_BUS_TARGETS);
 CHECK_ARR_SIZE(s_storm_mode_defs, MAX_DBG_BUS_STORM_MODES);
 CHECK_ARR_SIZE(s_grc_param_defs, MAX_DBG_GRC_PARAMS);
 CHECK_ARR_SIZE(s_reset_regs_defs, MAX_DBG_RESET_REGS);
}
