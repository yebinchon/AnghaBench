
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef void* u32 ;
struct ecore_hwfn {int dummy; } ;
struct dbg_attn_reg_result {int mask_val; int sts_val; int data; } ;
struct dbg_attn_block_result {struct dbg_attn_reg_result* reg_results; int data; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
typedef enum dbg_attn_type { ____Placeholder_dbg_attn_type } dbg_attn_type ;


 int ATTN_TYPE_INTERRUPT ;
 int DBG_ATTN_BLOCK_RESULT_ATTN_TYPE ;
 int DBG_ATTN_BLOCK_RESULT_NUM_REGS ;
 int DBG_ATTN_REG_RESULT_STS_ADDRESS ;
 int DBG_STATUS_OK ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,char const*,void*,int ,int ) ;
 void* GET_FIELD (int ,int ) ;

enum dbg_status ecore_dbg_print_attn(struct ecore_hwfn *p_hwfn,
          struct dbg_attn_block_result *results)
{
 enum dbg_attn_type attn_type;
 u8 num_regs, i;

 num_regs = GET_FIELD(results->data, DBG_ATTN_BLOCK_RESULT_NUM_REGS);
 attn_type = (enum dbg_attn_type)GET_FIELD(results->data, DBG_ATTN_BLOCK_RESULT_ATTN_TYPE);

 for (i = 0; i < num_regs; i++) {
  struct dbg_attn_reg_result *reg_result;
  const char *attn_type_str;
  u32 sts_addr;

  reg_result = &results->reg_results[i];
  attn_type_str = (attn_type == ATTN_TYPE_INTERRUPT ? "interrupt" : "parity");
  sts_addr = GET_FIELD(reg_result->data, DBG_ATTN_REG_RESULT_STS_ADDRESS);
  DP_NOTICE(p_hwfn, 0, "%s: address 0x%08x, status 0x%08x, mask 0x%08x\n", attn_type_str, sts_addr, reg_result->sts_val, reg_result->mask_val);
 }

 return DBG_STATUS_OK;
}
