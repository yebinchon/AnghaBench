
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;
typedef enum BAR_ID { ____Placeholder_BAR_ID } BAR_ID ;


 int BAR_ID_0 ;
 int DP_INFO (struct ecore_hwfn*,char*) ;
 scalar_t__ ECORE_IS_CMT (int ) ;
 scalar_t__ IS_VF (int ) ;
 int PGLUE_B_REG_PF_BAR0_SIZE ;
 int PGLUE_B_REG_PF_BAR1_SIZE ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int) ;
 int ecore_vf_hw_bar_size (struct ecore_hwfn*,int) ;

__attribute__((used)) static u32 ecore_hw_bar_size(struct ecore_hwfn *p_hwfn,
        struct ecore_ptt *p_ptt,
        enum BAR_ID bar_id)
{
 u32 bar_reg = (bar_id == BAR_ID_0 ?
         PGLUE_B_REG_PF_BAR0_SIZE : PGLUE_B_REG_PF_BAR1_SIZE);
 u32 val;

 if (IS_VF(p_hwfn->p_dev))
  return ecore_vf_hw_bar_size(p_hwfn, bar_id);

 val = ecore_rd(p_hwfn, p_ptt, bar_reg);
 if (val)
  return 1 << (val + 15);





 if (ECORE_IS_CMT(p_hwfn->p_dev)) {
  DP_INFO(p_hwfn,
   "BAR size not configured. Assuming BAR size of 256kB for GRC and 512kB for DB\n");
  return BAR_ID_0 ? 256 * 1024 : 512 * 1024;
 } else {
  DP_INFO(p_hwfn,
   "BAR size not configured. Assuming BAR size of 512kB for GRC and 512kB for DB\n");
  return 512 * 1024;
 }
}
