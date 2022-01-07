
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {struct ecore_dev* p_dev; } ;
struct ecore_dev {int num_ports_in_engine; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 scalar_t__ CHIP_REV_IS_EMUL (struct ecore_dev*) ;
 scalar_t__ CNIG_REG_NW_PORT_MODE_BB ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_E5_MISSING_CODE ;
 scalar_t__ ECORE_IS_AH (struct ecore_dev*) ;
 scalar_t__ ECORE_IS_BB (struct ecore_dev*) ;
 scalar_t__ ECORE_IS_E5 (struct ecore_dev*) ;
 int ECORE_SUCCESS ;
 scalar_t__ MISCS_REG_RESET_PL_HV ;
 scalar_t__ MISCS_REG_RESET_PL_HV_2_K2_E5 ;
 scalar_t__ MISC_REG_BLOCK_256B_EN ;
 scalar_t__ MISC_REG_PORT_MODE ;
 int OSAL_UDELAY (int) ;
 int PSWRQ2_REG_CFG_DONE ;
 scalar_t__ PSWRQ2_REG_RBC_DONE ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int) ;

__attribute__((used)) static enum _ecore_status_t ecore_hw_init_chip(struct ecore_hwfn *p_hwfn,
            struct ecore_ptt *p_ptt)
{
 struct ecore_dev *p_dev = p_hwfn->p_dev;
 u32 pl_hv = 1;
 int i;

 if (CHIP_REV_IS_EMUL(p_dev)) {
  if (ECORE_IS_AH(p_dev))
   pl_hv |= 0x600;
  else if (ECORE_IS_E5(p_dev))
   ECORE_E5_MISSING_CODE;
 }

 ecore_wr(p_hwfn, p_ptt, MISCS_REG_RESET_PL_HV + 4, pl_hv);

 if (CHIP_REV_IS_EMUL(p_dev) &&
     (ECORE_IS_AH(p_dev) || ECORE_IS_E5(p_dev)))
  ecore_wr(p_hwfn, p_ptt, MISCS_REG_RESET_PL_HV_2_K2_E5,
    0x3ffffff);



 if (!CHIP_REV_IS_EMUL(p_dev) || ECORE_IS_BB(p_dev))
  ecore_wr(p_hwfn, p_ptt, CNIG_REG_NW_PORT_MODE_BB, 4);

 if (CHIP_REV_IS_EMUL(p_dev)) {
  if (ECORE_IS_AH(p_dev)) {

   ecore_wr(p_hwfn, p_ptt, MISC_REG_PORT_MODE,
     (p_dev->num_ports_in_engine >> 1));

   ecore_wr(p_hwfn, p_ptt, MISC_REG_BLOCK_256B_EN,
     p_dev->num_ports_in_engine == 4 ? 0 : 3);
  } else if (ECORE_IS_E5(p_dev)) {
   ECORE_E5_MISSING_CODE;
  }


  ecore_wr(p_hwfn, p_ptt, PSWRQ2_REG_RBC_DONE, 1);
  for (i = 0; i < 100; i++) {
   OSAL_UDELAY(50);
   if (ecore_rd(p_hwfn, p_ptt, PSWRQ2_REG_CFG_DONE) == 1)
    break;
  }
  if (i == 100)
   DP_NOTICE(p_hwfn, 1,
      "RBC done failed to complete in PSWRQ2\n");
 }

 return ECORE_SUCCESS;
}
