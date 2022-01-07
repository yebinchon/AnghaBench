
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_1__* p_dev; } ;
typedef enum ecore_int_mode { ____Placeholder_ecore_int_mode } ecore_int_mode ;
struct TYPE_2__ {int int_mode; } ;


 scalar_t__ CHIP_REV_IS_FPGA (TYPE_1__*) ;
 int DP_INFO (struct ecore_hwfn*,char*) ;




 int IGU_PF_CONF_ATTN_BIT_EN ;
 int IGU_PF_CONF_FUNC_EN ;
 int IGU_PF_CONF_INT_LINE_EN ;
 int IGU_PF_CONF_MSI_MSIX_EN ;
 int IGU_PF_CONF_SINGLE_ISR_EN ;
 int IGU_REG_PF_CONFIGURATION ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

void ecore_int_igu_enable_int(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt,
         enum ecore_int_mode int_mode)
{
 u32 igu_pf_conf = IGU_PF_CONF_FUNC_EN | IGU_PF_CONF_ATTN_BIT_EN;


 if (CHIP_REV_IS_FPGA(p_hwfn->p_dev)) {
  DP_INFO(p_hwfn, "FPGA - don't enable ATTN generation in IGU\n");
  igu_pf_conf &= ~IGU_PF_CONF_ATTN_BIT_EN;
 }


 p_hwfn->p_dev->int_mode = int_mode;
 switch (p_hwfn->p_dev->int_mode) {
 case 131:
  igu_pf_conf |= IGU_PF_CONF_INT_LINE_EN;
  igu_pf_conf |= IGU_PF_CONF_SINGLE_ISR_EN;
  break;

 case 130:
  igu_pf_conf |= IGU_PF_CONF_MSI_MSIX_EN;
  igu_pf_conf |= IGU_PF_CONF_SINGLE_ISR_EN;
  break;

 case 129:
  igu_pf_conf |= IGU_PF_CONF_MSI_MSIX_EN;
  break;
 case 128:
  break;
 }

 ecore_wr(p_hwfn, p_ptt, IGU_REG_PF_CONFIGURATION, igu_pf_conf);
}
