
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ctx; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {TYPE_1__ vsi; int state; int admin_irq; int dev; struct i40e_hw hw; } ;
typedef int device_t ;


 int DDPRINTF (int ,char*) ;
 int FALSE ;
 int FILTER_HANDLED ;
 int FILTER_SCHEDULE_THREAD ;
 int I40E_GLGEN_RSTAT ;
 int I40E_GLGEN_RSTAT_RESET_TYPE_MASK ;
 int I40E_GLGEN_RSTAT_RESET_TYPE_SHIFT ;
 int I40E_PFHMC_ERRORDATA ;
 int I40E_PFHMC_ERRORINFO ;
 int I40E_PFHMC_ERRORINFO_ERROR_DETECTED_MASK ;
 int I40E_PFINT_ICR0 ;
 int I40E_PFINT_ICR0_ADMINQ_MASK ;
 int I40E_PFINT_ICR0_ECC_ERR_MASK ;
 int I40E_PFINT_ICR0_ENA ;
 int I40E_PFINT_ICR0_ENA_ADMINQ_MASK ;
 int I40E_PFINT_ICR0_ENA_GRST_MASK ;
 int I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK ;
 int I40E_PFINT_ICR0_ENA_VFLR_MASK ;
 int I40E_PFINT_ICR0_GRST_MASK ;
 int I40E_PFINT_ICR0_HMC_ERR_MASK ;
 int I40E_PFINT_ICR0_MAL_DETECT_MASK ;
 int I40E_PFINT_ICR0_PCI_EXCEPTION_MASK ;
 int I40E_PFINT_ICR0_PE_CRITERR_MASK ;
 int I40E_PFINT_ICR0_VFLR_MASK ;



 int IXL_ICR0_CRIT_ERR_MASK ;
 int IXL_PF_STATE_ADAPTER_RESETTING ;
 int IXL_PF_STATE_MDD_PENDING ;
 int IXL_PF_STATE_PF_CRIT_ERR ;
 int IXL_PF_STATE_PF_RESET_REQ ;
 int TRUE ;
 int atomic_set_32 (int *,int) ;
 int atomic_set_int (int *,int ) ;
 int device_printf (int ,char*,...) ;
 int iflib_iov_intr_deferred (int ) ;
 int ixl_enable_intr0 (struct i40e_hw*) ;
 int printf (char*) ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

int
ixl_msix_adminq(void *arg)
{
 struct ixl_pf *pf = arg;
 struct i40e_hw *hw = &pf->hw;
 device_t dev = pf->dev;
 u32 reg, mask, rstat_reg;
 bool do_task = FALSE;

 DDPRINTF(dev, "begin");

 ++pf->admin_irq;

 reg = rd32(hw, I40E_PFINT_ICR0);




 mask = rd32(hw, I40E_PFINT_ICR0_ENA);


 if (reg & I40E_PFINT_ICR0_ADMINQ_MASK) {
  mask &= ~I40E_PFINT_ICR0_ENA_ADMINQ_MASK;
  do_task = TRUE;
 }

 if (reg & I40E_PFINT_ICR0_MAL_DETECT_MASK) {
  mask &= ~I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK;
  atomic_set_32(&pf->state, IXL_PF_STATE_MDD_PENDING);
  do_task = TRUE;
 }

 if (reg & I40E_PFINT_ICR0_GRST_MASK) {
  mask &= ~I40E_PFINT_ICR0_ENA_GRST_MASK;
  device_printf(dev, "Reset Requested!\n");
  rstat_reg = rd32(hw, I40E_GLGEN_RSTAT);
  rstat_reg = (rstat_reg & I40E_GLGEN_RSTAT_RESET_TYPE_MASK)
      >> I40E_GLGEN_RSTAT_RESET_TYPE_SHIFT;
  device_printf(dev, "Reset type: ");
  switch (rstat_reg) {

  case 130:
   printf("CORER\n");
   break;
  case 128:
   printf("GLOBR\n");
   break;
  case 129:
   printf("EMPR\n");
   break;
  default:
   printf("POR\n");
   break;
  }

  atomic_set_int(&pf->state, IXL_PF_STATE_ADAPTER_RESETTING);
  do_task = TRUE;
 }







 if (reg & I40E_PFINT_ICR0_ECC_ERR_MASK)
   device_printf(dev, "ECC Error detected!\n");
 if (reg & I40E_PFINT_ICR0_PCI_EXCEPTION_MASK)
  device_printf(dev, "PCI Exception detected!\n");
 if (reg & I40E_PFINT_ICR0_PE_CRITERR_MASK)
  device_printf(dev, "Critical Protocol Engine Error detected!\n");

 if (reg & IXL_ICR0_CRIT_ERR_MASK) {
  mask &= ~IXL_ICR0_CRIT_ERR_MASK;
  atomic_set_32(&pf->state,
      IXL_PF_STATE_PF_RESET_REQ | IXL_PF_STATE_PF_CRIT_ERR);
  do_task = TRUE;
 }




 if (reg & I40E_PFINT_ICR0_HMC_ERR_MASK) {
  reg = rd32(hw, I40E_PFHMC_ERRORINFO);
  if (reg & I40E_PFHMC_ERRORINFO_ERROR_DETECTED_MASK) {
   device_printf(dev, "HMC Error detected!\n");
   device_printf(dev, "INFO 0x%08x\n", reg);
   reg = rd32(hw, I40E_PFHMC_ERRORDATA);
   device_printf(dev, "DATA 0x%08x\n", reg);
   wr32(hw, I40E_PFHMC_ERRORINFO, 0);
  }
 }
 wr32(hw, I40E_PFINT_ICR0_ENA, mask);
 ixl_enable_intr0(hw);

 if (do_task)
  return (FILTER_SCHEDULE_THREAD);
 else
  return (FILTER_HANDLED);
}
