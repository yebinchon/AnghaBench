
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;


 scalar_t__ CHIP_REV_IS_FPGA (int ) ;
 int DP_INFO (struct ecore_hwfn*,char*) ;
 int IGU_REG_ATTENTION_ENABLE ;
 int IGU_REG_LEADING_EDGE_LATCH ;
 int IGU_REG_TRAILING_EDGE_LATCH ;
 int MISC_REG_AEU_MASK_ATTN_IGU ;
 int OSAL_MMIOWB (int ) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

__attribute__((used)) static void ecore_int_igu_enable_attn(struct ecore_hwfn *p_hwfn,
          struct ecore_ptt *p_ptt)
{

 if (CHIP_REV_IS_FPGA(p_hwfn->p_dev)) {
  DP_INFO(p_hwfn, "FPGA - Don't enable Attentions in IGU and MISC\n");
  return;
 }



 ecore_wr(p_hwfn, p_ptt, IGU_REG_ATTENTION_ENABLE, 0);
 ecore_wr(p_hwfn, p_ptt, IGU_REG_LEADING_EDGE_LATCH, 0xfff);
 ecore_wr(p_hwfn, p_ptt, IGU_REG_TRAILING_EDGE_LATCH, 0xfff);
 ecore_wr(p_hwfn, p_ptt, IGU_REG_ATTENTION_ENABLE, 0xfff);


 OSAL_MMIOWB(p_hwfn->p_dev);


 ecore_wr(p_hwfn, p_ptt, MISC_REG_AEU_MASK_ATTN_IGU, 0xff);
}
