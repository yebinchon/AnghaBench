
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct storm_defs {size_t block_id; scalar_t__ sem_fast_mem_addr; } ;
struct ecore_ptt {int dummy; } ;
struct dbg_tools_data {scalar_t__* block_in_reset; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
struct TYPE_2__ {int data; } ;
struct dbg_attn_reg {scalar_t__ mask_address; int data; TYPE_1__ mode; } ;
typedef enum block_id { ____Placeholder_block_id } block_id ;


 int ATTN_TYPE_PARITY ;
 scalar_t__ BYTES_TO_DWORDS (scalar_t__) ;
 int DBG_ATTN_REG_STS_ADDRESS ;
 int DBG_MODE_HDR_EVAL_MODE ;
 int DBG_MODE_HDR_MODES_BUF_OFFSET ;
 scalar_t__ GET_FIELD (int ,int ) ;
 size_t MAX_BLOCK_ID ;
 size_t MAX_DBG_STORMS ;
 int OSAL_NULL ;
 scalar_t__ SEM_FAST_REG_STALLED ;
 struct dbg_attn_reg* ecore_get_block_attn_regs (int,int ,size_t*) ;
 size_t ecore_grc_dump_reg_entry (struct ecore_hwfn*,struct ecore_ptt*,size_t*,int,scalar_t__,int,int) ;
 size_t ecore_grc_dump_regs_hdr (size_t*,int,size_t,char*,int,int ,int ) ;
 int ecore_is_mode_match (struct ecore_hwfn*,scalar_t__*) ;
 struct storm_defs* s_storm_defs ;

__attribute__((used)) static u32 ecore_grc_dump_modified_regs(struct ecore_hwfn *p_hwfn,
          struct ecore_ptt *p_ptt,
          u32 *dump_buf,
          bool dump)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 u32 block_id, offset = 0, num_reg_entries = 0;
 const struct dbg_attn_reg *attn_reg_arr;
 u8 storm_id, reg_idx, num_attn_regs;


 offset += ecore_grc_dump_regs_hdr(dump_buf, 0, 0, "eng", -1, OSAL_NULL, OSAL_NULL);


 for (block_id = 0; block_id < MAX_BLOCK_ID; block_id++) {
  if (dev_data->block_in_reset[block_id] && dump)
   continue;

  attn_reg_arr = ecore_get_block_attn_regs((enum block_id)block_id, ATTN_TYPE_PARITY, &num_attn_regs);

  for (reg_idx = 0; reg_idx < num_attn_regs; reg_idx++) {
   const struct dbg_attn_reg *reg_data = &attn_reg_arr[reg_idx];
   u16 modes_buf_offset;
   bool eval_mode;


   eval_mode = GET_FIELD(reg_data->mode.data, DBG_MODE_HDR_EVAL_MODE) > 0;
   modes_buf_offset = GET_FIELD(reg_data->mode.data, DBG_MODE_HDR_MODES_BUF_OFFSET);
   if (eval_mode && !ecore_is_mode_match(p_hwfn, &modes_buf_offset))
    continue;


   offset += ecore_grc_dump_reg_entry(p_hwfn, p_ptt, dump_buf + offset, dump, reg_data->mask_address, 1, 0);
   offset += ecore_grc_dump_reg_entry(p_hwfn, p_ptt, dump_buf + offset, dump, GET_FIELD(reg_data->data, DBG_ATTN_REG_STS_ADDRESS), 1, 0);
   num_reg_entries += 2;
  }
 }


 for (storm_id = 0; storm_id < MAX_DBG_STORMS; storm_id++) {
  struct storm_defs *storm = &s_storm_defs[storm_id];

  if (dev_data->block_in_reset[storm->block_id] && dump)
   continue;

  offset += ecore_grc_dump_reg_entry(p_hwfn, p_ptt, dump_buf + offset, dump,
   BYTES_TO_DWORDS(storm->sem_fast_mem_addr + SEM_FAST_REG_STALLED), 1, 0);
  num_reg_entries++;
 }


 if (dump)
  ecore_grc_dump_regs_hdr(dump_buf, 1, num_reg_entries, "eng", -1, OSAL_NULL, OSAL_NULL);

 return offset;
}
