
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int hw_mode; } ;
struct ecore_hwfn {TYPE_1__ hw_info; TYPE_2__* p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_9__ {int type; int num_ports_in_engine; scalar_t__ b_is_emul_full; int mf_bits; } ;


 scalar_t__ CHIP_REV_IS_FPGA (TYPE_2__*) ;
 scalar_t__ CHIP_REV_IS_SLOW (TYPE_2__*) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int) ;
 int DP_VERBOSE (struct ecore_hwfn*,int,char*,int) ;
 int ECORE_INVAL ;
 scalar_t__ ECORE_IS_AH (TYPE_2__*) ;
 scalar_t__ ECORE_IS_BB_B0 (TYPE_2__*) ;
 scalar_t__ ECORE_IS_CMT (TYPE_2__*) ;
 scalar_t__ ECORE_IS_E5 (TYPE_2__*) ;
 int ECORE_MF_OVLAN_CLSS ;
 int ECORE_MSG_IFUP ;
 int ECORE_MSG_PROBE ;
 int ECORE_SUCCESS ;
 int MODE_100G ;
 int MODE_ASIC ;
 int MODE_BB ;
 int MODE_E5 ;
 int MODE_EMUL_FULL ;
 int MODE_EMUL_REDUCED ;
 int MODE_FPGA ;
 int MODE_K2 ;
 int MODE_MF_SD ;
 int MODE_MF_SI ;
 int MODE_PORTS_PER_ENG_1 ;
 int MODE_PORTS_PER_ENG_2 ;
 int MODE_PORTS_PER_ENG_4 ;
 scalar_t__ OSAL_TEST_BIT (int ,int *) ;

__attribute__((used)) static enum _ecore_status_t ecore_calc_hw_mode(struct ecore_hwfn *p_hwfn)
{
 int hw_mode = 0;

 if (ECORE_IS_BB_B0(p_hwfn->p_dev)) {
  hw_mode |= 1 << MODE_BB;
 } else if (ECORE_IS_AH(p_hwfn->p_dev)) {
  hw_mode |= 1 << MODE_K2;
 } else if (ECORE_IS_E5(p_hwfn->p_dev)) {
  hw_mode |= 1 << MODE_E5;
 } else {
  DP_NOTICE(p_hwfn, 1, "Unknown chip type %#x\n",
     p_hwfn->p_dev->type);
  return ECORE_INVAL;
 }


 switch (p_hwfn->p_dev->num_ports_in_engine) {
 case 1:
  hw_mode |= 1 << MODE_PORTS_PER_ENG_1;
  break;
 case 2:
  hw_mode |= 1 << MODE_PORTS_PER_ENG_2;
  break;
 case 4:
  hw_mode |= 1 << MODE_PORTS_PER_ENG_4;
  break;
 default:
  DP_NOTICE(p_hwfn, 1, "num_ports_in_engine = %d not supported\n",
     p_hwfn->p_dev->num_ports_in_engine);
  return ECORE_INVAL;
 }

 if (OSAL_TEST_BIT(ECORE_MF_OVLAN_CLSS,
     &p_hwfn->p_dev->mf_bits))
  hw_mode |= 1 << MODE_MF_SD;
 else
  hw_mode |= 1 << MODE_MF_SI;


 if (CHIP_REV_IS_SLOW(p_hwfn->p_dev)) {
  if (CHIP_REV_IS_FPGA(p_hwfn->p_dev)) {
   hw_mode |= 1 << MODE_FPGA;
  } else {
   if (p_hwfn->p_dev->b_is_emul_full)
    hw_mode |= 1 << MODE_EMUL_FULL;
   else
    hw_mode |= 1 << MODE_EMUL_REDUCED;
  }
 } else

 hw_mode |= 1 << MODE_ASIC;

 if (ECORE_IS_CMT(p_hwfn->p_dev))
  hw_mode |= 1 << MODE_100G;

 p_hwfn->hw_info.hw_mode = hw_mode;

 DP_VERBOSE(p_hwfn, (ECORE_MSG_PROBE | ECORE_MSG_IFUP),
     "Configuring function for hw_mode: 0x%08x\n",
     p_hwfn->hw_info.hw_mode);

 return ECORE_SUCCESS;
}
