
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int I40E_ERR_NOT_READY ;
 int I40E_ERR_RESET_FAILED ;
 int I40E_GLGEN_RSTAT ;
 int I40E_GLGEN_RSTAT_DEVSTATE_MASK ;
 int I40E_GLGEN_RSTCTL ;
 int I40E_GLGEN_RSTCTL_GRSTDEL_MASK ;
 int I40E_GLGEN_RSTCTL_GRSTDEL_SHIFT ;
 int I40E_GLNVM_ULD ;
 int I40E_GLNVM_ULD_CONF_CORE_DONE_MASK ;
 int I40E_GLNVM_ULD_CONF_GLOBAL_DONE_MASK ;
 int I40E_PFGEN_CTRL ;
 int I40E_PFGEN_CTRL_PFSWR_MASK ;
 int I40E_PF_RESET_WAIT_COUNT ;
 int I40E_SUCCESS ;
 int i40e_clear_pxe_mode (struct i40e_hw*) ;
 int i40e_msec_delay (int) ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

enum i40e_status_code i40e_pf_reset(struct i40e_hw *hw)
{
 u32 cnt = 0;
 u32 cnt1 = 0;
 u32 reg = 0;
 u32 grst_del;





 grst_del = (rd32(hw, I40E_GLGEN_RSTCTL) &
   I40E_GLGEN_RSTCTL_GRSTDEL_MASK) >>
   I40E_GLGEN_RSTCTL_GRSTDEL_SHIFT;

 grst_del = grst_del * 20;

 for (cnt = 0; cnt < grst_del; cnt++) {
  reg = rd32(hw, I40E_GLGEN_RSTAT);
  if (!(reg & I40E_GLGEN_RSTAT_DEVSTATE_MASK))
   break;
  i40e_msec_delay(100);
 }
 if (reg & I40E_GLGEN_RSTAT_DEVSTATE_MASK) {
  DEBUGOUT("Global reset polling failed to complete.\n");
  return I40E_ERR_RESET_FAILED;
 }


 for (cnt1 = 0; cnt1 < I40E_PF_RESET_WAIT_COUNT; cnt1++) {
  reg = rd32(hw, I40E_GLNVM_ULD);
  reg &= (I40E_GLNVM_ULD_CONF_CORE_DONE_MASK |
   I40E_GLNVM_ULD_CONF_GLOBAL_DONE_MASK);
  if (reg == (I40E_GLNVM_ULD_CONF_CORE_DONE_MASK |
       I40E_GLNVM_ULD_CONF_GLOBAL_DONE_MASK)) {
   DEBUGOUT1("Core and Global modules ready %d\n", cnt1);
   break;
  }
  i40e_msec_delay(10);
 }
 if (!(reg & (I40E_GLNVM_ULD_CONF_CORE_DONE_MASK |
       I40E_GLNVM_ULD_CONF_GLOBAL_DONE_MASK))) {
  DEBUGOUT("wait for FW Reset complete timedout\n");
  DEBUGOUT1("I40E_GLNVM_ULD = 0x%x\n", reg);
  return I40E_ERR_RESET_FAILED;
 }




 if (!cnt) {
  u32 reg2 = 0;

  reg = rd32(hw, I40E_PFGEN_CTRL);
  wr32(hw, I40E_PFGEN_CTRL,
       (reg | I40E_PFGEN_CTRL_PFSWR_MASK));
  for (cnt = 0; cnt < I40E_PF_RESET_WAIT_COUNT; cnt++) {
   reg = rd32(hw, I40E_PFGEN_CTRL);
   if (!(reg & I40E_PFGEN_CTRL_PFSWR_MASK))
    break;
   reg2 = rd32(hw, I40E_GLGEN_RSTAT);
   if (reg2 & I40E_GLGEN_RSTAT_DEVSTATE_MASK) {
    DEBUGOUT("Core reset upcoming. Skipping PF reset request.\n");
    DEBUGOUT1("I40E_GLGEN_RSTAT = 0x%x\n", reg2);
    return I40E_ERR_NOT_READY;
   }
   i40e_msec_delay(1);
  }
  if (reg & I40E_PFGEN_CTRL_PFSWR_MASK) {
   DEBUGOUT("PF reset polling failed to complete.\n");
   return I40E_ERR_RESET_FAILED;
  }
 }

 i40e_clear_pxe_mode(hw);


 return I40E_SUCCESS;
}
