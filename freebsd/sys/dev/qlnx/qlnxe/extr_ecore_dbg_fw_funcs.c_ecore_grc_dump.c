
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_3__ {scalar_t__ state; } ;
struct dbg_tools_data {scalar_t__ platform_id; scalar_t__ chip_id; TYPE_1__ bus; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
struct TYPE_4__ {int grc_param; } ;


 size_t BLOCK_MCP ;
 scalar_t__ CHIP_K2 ;
 scalar_t__ DBG_BUS_STATE_IDLE ;
 int DBG_GRC_PARAM_DUMP_CM_CTX ;
 int DBG_GRC_PARAM_DUMP_IOR ;
 int DBG_GRC_PARAM_DUMP_MCP ;
 int DBG_GRC_PARAM_DUMP_PHY ;
 int DBG_GRC_PARAM_DUMP_REGS ;
 int DBG_GRC_PARAM_DUMP_RSS ;
 int DBG_GRC_PARAM_DUMP_STATIC ;
 int DBG_GRC_PARAM_DUMP_VFC ;
 int DBG_GRC_PARAM_NO_MCP ;
 int DBG_GRC_PARAM_NUM_LCIDS ;
 int DBG_GRC_PARAM_NUM_LTIDS ;
 int DBG_GRC_PARAM_PARITY_SAFE ;
 int DBG_GRC_PARAM_UNSTALL ;
 int DBG_STATUS_MCP_COULD_NOT_MASK_PRTY ;
 int DBG_STATUS_OK ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int MAX_BLOCK_ID ;
 int MISC_REG_PORT_MODE ;
 int NUM_BIG_RAM_TYPES ;
 int OSAL_NULL ;
 scalar_t__ PLATFORM_ASIC ;
 int ecore_dump_common_global_params (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int) ;
 int ecore_dump_last_section (int*,int,int) ;
 int ecore_dump_num_param (int*,int,char*,int) ;
 int ecore_dump_str_param (int*,int,char*,char*) ;
 int ecore_grc_clear_all_prty (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_grc_dump_big_ram (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int) ;
 int ecore_grc_dump_ctx (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ;
 int ecore_grc_dump_iors (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ;
 int ecore_grc_dump_mcp (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ;
 int ecore_grc_dump_memories (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ;
 int ecore_grc_dump_modified_regs (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ;
 int ecore_grc_dump_phy (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ;
 int ecore_grc_dump_registers (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int*,int ,int ) ;
 int ecore_grc_dump_reset_regs (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ;
 int ecore_grc_dump_rss (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ;
 int ecore_grc_dump_special_regs (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ;
 int ecore_grc_dump_static_debug (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ;
 int ecore_grc_dump_vfc (struct ecore_hwfn*,struct ecore_ptt*,int*,int) ;
 int ecore_grc_get_param (struct ecore_hwfn*,int ) ;
 scalar_t__ ecore_grc_is_included (struct ecore_hwfn*,int ) ;
 int ecore_grc_stall_storms (struct ecore_hwfn*,struct ecore_ptt*,int) ;
 int ecore_grc_unreset_blocks (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_mcp_mask_parities (struct ecore_hwfn*,struct ecore_ptt*,int) ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_update_blocks_reset_state (struct ecore_hwfn*,struct ecore_ptt*) ;
 TYPE_2__* s_big_ram_defs ;

__attribute__((used)) static enum dbg_status ecore_grc_dump(struct ecore_hwfn *p_hwfn,
           struct ecore_ptt *p_ptt,
           u32 *dump_buf,
           bool dump,
           u32 *num_dumped_dwords)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 bool is_asic, parities_masked = 0;
 u8 i, port_mode = 0;
 u32 offset = 0;

 is_asic = dev_data->platform_id == PLATFORM_ASIC;

 *num_dumped_dwords = 0;

 if (dump) {


  switch (ecore_rd(p_hwfn, p_ptt, MISC_REG_PORT_MODE)) {
  case 0: port_mode = 1; break;
  case 1: port_mode = 2; break;
  case 2: port_mode = 4; break;
  }


  ecore_update_blocks_reset_state(p_hwfn, p_ptt);
 }


 offset += ecore_dump_common_global_params(p_hwfn, p_ptt, dump_buf + offset, dump, 4);
 offset += ecore_dump_str_param(dump_buf + offset, dump, "dump-type", "grc-dump");
 offset += ecore_dump_num_param(dump_buf + offset, dump, "num-lcids", ecore_grc_get_param(p_hwfn, DBG_GRC_PARAM_NUM_LCIDS));
 offset += ecore_dump_num_param(dump_buf + offset, dump, "num-ltids", ecore_grc_get_param(p_hwfn, DBG_GRC_PARAM_NUM_LTIDS));
 offset += ecore_dump_num_param(dump_buf + offset, dump, "num-ports", port_mode);


 if (ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_REGS))
  offset += ecore_grc_dump_reset_regs(p_hwfn, p_ptt, dump_buf + offset, dump);


 if (dump) {
  ecore_grc_unreset_blocks(p_hwfn, p_ptt);
  ecore_update_blocks_reset_state(p_hwfn, p_ptt);
 }


 if (dump && is_asic && !ecore_grc_get_param(p_hwfn, DBG_GRC_PARAM_NO_MCP)) {
   parities_masked = !ecore_mcp_mask_parities(p_hwfn, p_ptt, 1);
   if (!parities_masked) {
    DP_NOTICE(p_hwfn, 0, "Failed to mask parities using MFW\n");
    if (ecore_grc_get_param(p_hwfn, DBG_GRC_PARAM_PARITY_SAFE))
     return DBG_STATUS_MCP_COULD_NOT_MASK_PRTY;
   }
  }


 if (ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_REGS))
  offset += ecore_grc_dump_modified_regs(p_hwfn, p_ptt, dump_buf + offset, dump);


 if (dump && (ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_IOR) || ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_VFC)))
  ecore_grc_stall_storms(p_hwfn, p_ptt, 1);


 if (ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_REGS)) {
  bool block_enable[MAX_BLOCK_ID];


  for (i = 0; i < MAX_BLOCK_ID; i++)
   block_enable[i] = 1;
  block_enable[BLOCK_MCP] = 0;
  offset += ecore_grc_dump_registers(p_hwfn, p_ptt, dump_buf + offset, dump, block_enable, OSAL_NULL, OSAL_NULL);


  offset += ecore_grc_dump_special_regs(p_hwfn, p_ptt, dump_buf + offset, dump);
 }


 offset += ecore_grc_dump_memories(p_hwfn, p_ptt, dump_buf + offset, dump);


 if (ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_MCP))
  offset += ecore_grc_dump_mcp(p_hwfn, p_ptt, dump_buf + offset, dump);


 if (ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_CM_CTX))
  offset += ecore_grc_dump_ctx(p_hwfn, p_ptt, dump_buf + offset, dump);


 if (ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_RSS))
  offset += ecore_grc_dump_rss(p_hwfn, p_ptt, dump_buf + offset, dump);


 for (i = 0; i < NUM_BIG_RAM_TYPES; i++)
  if (ecore_grc_is_included(p_hwfn, s_big_ram_defs[i].grc_param))
   offset += ecore_grc_dump_big_ram(p_hwfn, p_ptt, dump_buf + offset, dump, i);


 if (ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_IOR))
  offset += ecore_grc_dump_iors(p_hwfn, p_ptt, dump_buf + offset, dump);


 if (ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_VFC))
  offset += ecore_grc_dump_vfc(p_hwfn, p_ptt, dump_buf + offset, dump);


 if (ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_PHY) && dev_data->chip_id == CHIP_K2 && dev_data->platform_id == PLATFORM_ASIC)
  offset += ecore_grc_dump_phy(p_hwfn, p_ptt, dump_buf + offset, dump);


 if (ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_STATIC) && dev_data->bus.state == DBG_BUS_STATE_IDLE)
  offset += ecore_grc_dump_static_debug(p_hwfn, p_ptt, dump_buf + offset, dump);


 offset += ecore_dump_last_section(dump_buf, offset, dump);

 if (dump) {


  if (ecore_grc_get_param(p_hwfn, DBG_GRC_PARAM_UNSTALL))
   ecore_grc_stall_storms(p_hwfn, p_ptt, 0);


  if (is_asic)
   ecore_grc_clear_all_prty(p_hwfn, p_ptt);


  if (parities_masked)
   ecore_mcp_mask_parities(p_hwfn, p_ptt, 0);
 }

 *num_dumped_dwords = offset;

 return DBG_STATUS_OK;
}
