
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ecore_sb_attn_info {int* parity_mask; scalar_t__ mfw_attn_addr; TYPE_1__* p_aeu_desc; int sb_phys; void* sb_attn; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int rel_pf_id; struct ecore_sb_attn_info* p_sb_attn; } ;
struct aeu_invert_reg_bit {int flags; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct aeu_invert_reg_bit* bits; } ;


 scalar_t__ ATTENTION_LENGTH (int ) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int,int) ;
 int ECORE_MSG_INTR ;
 scalar_t__ MISC_REG_AEU_GENERAL_ATTN_0 ;
 int NUM_ATTN_REGS ;
 int OSAL_MEMSET (int*,int ,int) ;
 TYPE_1__* aeu_descs ;
 scalar_t__ ecore_int_is_parity_flag (struct ecore_hwfn*,struct aeu_invert_reg_bit*) ;
 int ecore_int_sb_attn_setup (struct ecore_hwfn*,struct ecore_ptt*) ;

__attribute__((used)) static void ecore_int_sb_attn_init(struct ecore_hwfn *p_hwfn,
       struct ecore_ptt *p_ptt,
       void *sb_virt_addr,
       dma_addr_t sb_phy_addr)
{
 struct ecore_sb_attn_info *sb_info = p_hwfn->p_sb_attn;
 int i, j, k;

 sb_info->sb_attn = sb_virt_addr;
 sb_info->sb_phys = sb_phy_addr;


 sb_info->p_aeu_desc = aeu_descs;


 OSAL_MEMSET(sb_info->parity_mask, 0, sizeof(u32) * NUM_ATTN_REGS);
 for (i = 0; i < NUM_ATTN_REGS; i++) {

  for (j = 0, k = 0; k < 32; j++) {
   struct aeu_invert_reg_bit *p_aeu;

   p_aeu = &aeu_descs[i].bits[j];
   if (ecore_int_is_parity_flag(p_hwfn, p_aeu))
    sb_info->parity_mask[i] |= 1 << k;

   k += ATTENTION_LENGTH(p_aeu->flags);
  }
  DP_VERBOSE(p_hwfn, ECORE_MSG_INTR,
      "Attn Mask [Reg %d]: 0x%08x\n",
      i, sb_info->parity_mask[i]);
 }


 sb_info->mfw_attn_addr = (p_hwfn->rel_pf_id << 3) +
     MISC_REG_AEU_GENERAL_ATTN_0;

 ecore_int_sb_attn_setup(p_hwfn, p_ptt);
}
