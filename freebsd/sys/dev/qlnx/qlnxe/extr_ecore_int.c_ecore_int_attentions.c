
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct ecore_sb_attn_info {scalar_t__ known_attn; struct atten_status_block* sb_attn; } ;
struct ecore_hwfn {struct ecore_sb_attn_info* p_sb_attn; } ;
struct atten_status_block {scalar_t__ sb_index; int atten_ack; int atten_bits; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 scalar_t__ ATTN_STATE_BITS ;
 int DP_INFO (struct ecore_hwfn*,char*,...) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*) ;
 int ECORE_MSG_INTR ;
 int ECORE_SUCCESS ;
 scalar_t__ OSAL_LE16_TO_CPU (scalar_t__) ;
 scalar_t__ OSAL_LE32_TO_CPU (int ) ;
 int ecore_int_assertion (struct ecore_hwfn*,scalar_t__) ;
 int ecore_int_deassertion (struct ecore_hwfn*,scalar_t__) ;

__attribute__((used)) static enum _ecore_status_t ecore_int_attentions(struct ecore_hwfn *p_hwfn)
{
 struct ecore_sb_attn_info *p_sb_attn_sw = p_hwfn->p_sb_attn;
 struct atten_status_block *p_sb_attn = p_sb_attn_sw->sb_attn;
 u16 index = 0, asserted_bits, deasserted_bits;
 u32 attn_bits = 0, attn_acks = 0;
 enum _ecore_status_t rc = ECORE_SUCCESS;




 do {
  index = OSAL_LE16_TO_CPU(p_sb_attn->sb_index);
  attn_bits = OSAL_LE32_TO_CPU(p_sb_attn->atten_bits);
  attn_acks = OSAL_LE32_TO_CPU(p_sb_attn->atten_ack);
 } while (index != OSAL_LE16_TO_CPU(p_sb_attn->sb_index));
 p_sb_attn->sb_index = index;






 asserted_bits = (attn_bits & ~attn_acks & ATTN_STATE_BITS) &
   ~p_sb_attn_sw->known_attn;
 deasserted_bits = (~attn_bits & attn_acks & ATTN_STATE_BITS) &
     p_sb_attn_sw->known_attn;

 if ((asserted_bits & ~0x100) || (deasserted_bits & ~0x100))
  DP_INFO(p_hwfn,
   "Attention: Index: 0x%04x, Bits: 0x%08x, Acks: 0x%08x, asserted: 0x%04x, De-asserted 0x%04x [Prev. known: 0x%04x]\n",
   index, attn_bits, attn_acks, asserted_bits,
   deasserted_bits, p_sb_attn_sw->known_attn);
 else if (asserted_bits == 0x100)
  DP_INFO(p_hwfn,
   "MFW indication via attention\n");
 else
  DP_VERBOSE(p_hwfn, ECORE_MSG_INTR,
      "MFW indication [deassertion]\n");

 if (asserted_bits) {
  rc = ecore_int_assertion(p_hwfn, asserted_bits);
  if (rc)
   return rc;
 }

 if (deasserted_bits)
  rc = ecore_int_deassertion(p_hwfn, deasserted_bits);

 return rc;
}
