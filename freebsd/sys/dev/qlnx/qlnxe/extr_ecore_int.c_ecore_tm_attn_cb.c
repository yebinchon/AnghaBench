
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_hwfn {int p_dpc_ptt; int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 scalar_t__ CHIP_REV_IS_EMUL_B0 (int ) ;
 int DP_INFO (struct ecore_hwfn*,char*) ;
 int ECORE_INVAL ;
 int ECORE_SUCCESS ;
 int TM_REG_INT_MASK_1 ;
 int TM_REG_INT_MASK_1_PEND_CONN_SCAN ;
 int TM_REG_INT_MASK_1_PEND_TASK_SCAN ;
 int TM_REG_INT_STS_1 ;
 int TM_REG_INT_STS_1_PEND_CONN_SCAN ;
 int TM_REG_INT_STS_1_PEND_TASK_SCAN ;
 int ecore_rd (struct ecore_hwfn*,int ,int ) ;
 int ecore_wr (struct ecore_hwfn*,int ,int ,int) ;

__attribute__((used)) static enum _ecore_status_t ecore_tm_attn_cb(struct ecore_hwfn *p_hwfn)
{

 if (CHIP_REV_IS_EMUL_B0(p_hwfn->p_dev)) {
  u32 val = ecore_rd(p_hwfn, p_hwfn->p_dpc_ptt,
       TM_REG_INT_STS_1);

  if (val & ~(TM_REG_INT_STS_1_PEND_TASK_SCAN |
       TM_REG_INT_STS_1_PEND_CONN_SCAN))
   return ECORE_INVAL;

  if (val & (TM_REG_INT_STS_1_PEND_TASK_SCAN |
      TM_REG_INT_STS_1_PEND_CONN_SCAN))
   DP_INFO(p_hwfn, "TM attention on emulation - most likely results of clock-ratios\n");
  val = ecore_rd(p_hwfn, p_hwfn->p_dpc_ptt, TM_REG_INT_MASK_1);
  val |= TM_REG_INT_MASK_1_PEND_CONN_SCAN |
         TM_REG_INT_MASK_1_PEND_TASK_SCAN;
  ecore_wr(p_hwfn, p_hwfn->p_dpc_ptt, TM_REG_INT_MASK_1, val);

  return ECORE_SUCCESS;
 }


 return ECORE_INVAL;
}
