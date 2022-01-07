
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ecore_hwfn {int p_dpc_ptt; TYPE_1__* p_dev; } ;
struct aeu_invert_reg_bit {int (* cb ) (struct ecore_hwfn*) ;scalar_t__ block_index; int flags; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {scalar_t__ attn_clr_en; } ;


 int ATTENTION_CLEAR_ENABLE ;
 int ATTN_TYPE_INTERRUPT ;
 int DP_INFO (struct ecore_hwfn*,char*,char const*,...) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,char const*) ;
 int ECORE_HW_ERR_HW_ATTN ;
 int ECORE_INVAL ;
 int ECORE_SUCCESS ;
 scalar_t__ MAX_BLOCK_ID ;
 int ecore_hw_err_notify (struct ecore_hwfn*,int ) ;
 int ecore_int_attn_print (struct ecore_hwfn*,scalar_t__,int ,int) ;
 int ecore_rd (struct ecore_hwfn*,int ,int) ;
 int ecore_wr (struct ecore_hwfn*,int ,int,int) ;
 int stub1 (struct ecore_hwfn*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_int_deassertion_aeu_bit(struct ecore_hwfn *p_hwfn,
         struct aeu_invert_reg_bit *p_aeu,
         u32 aeu_en_reg,
         const char *p_bit_name,
         u32 bitmask)
{
 enum _ecore_status_t rc = ECORE_INVAL;
 bool b_fatal = 0;

 DP_INFO(p_hwfn, "Deasserted attention `%s'[%08x]\n",
  p_bit_name, bitmask);


 if (p_aeu->cb) {
  DP_INFO(p_hwfn, "`%s (attention)': Calling Callback function\n",
   p_bit_name);
  rc = p_aeu->cb(p_hwfn);
 }

 if (rc != ECORE_SUCCESS)
  b_fatal = 1;


 if (p_aeu->block_index != MAX_BLOCK_ID)
  ecore_int_attn_print(p_hwfn, p_aeu->block_index,
         ATTN_TYPE_INTERRUPT, !b_fatal);


 if (b_fatal) {
  DP_NOTICE(p_hwfn, 1, "`%s': Fatal attention\n",
     p_bit_name);

  ecore_hw_err_notify(p_hwfn, ECORE_HW_ERR_HW_ATTN);
 }


 if (p_aeu->flags & ATTENTION_CLEAR_ENABLE ||
     p_hwfn->p_dev->attn_clr_en) {
  u32 val;
  u32 mask = ~bitmask;
  val = ecore_rd(p_hwfn, p_hwfn->p_dpc_ptt, aeu_en_reg);
  ecore_wr(p_hwfn, p_hwfn->p_dpc_ptt, aeu_en_reg, (val & mask));
  DP_INFO(p_hwfn, "`%s' - Disabled future attentions\n",
   p_bit_name);
 }

 return rc;
}
