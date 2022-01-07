
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;


 int EBUSY ;
 int I40E_VFGEN_RSTAT ;
 int I40E_VFGEN_RSTAT_VFR_STATE_MASK ;
 int VIRTCHNL_VFR_COMPLETED ;
 int VIRTCHNL_VFR_VFACTIVE ;
 int i40e_msec_pause (int) ;
 int rd32 (struct i40e_hw*,int ) ;

__attribute__((used)) static int
iavf_reset_complete(struct i40e_hw *hw)
{
 u32 reg;


 for (int i = 0; i < 100; i++) {
  reg = rd32(hw, I40E_VFGEN_RSTAT) &
      I40E_VFGEN_RSTAT_VFR_STATE_MASK;

                if ((reg == VIRTCHNL_VFR_VFACTIVE) ||
      (reg == VIRTCHNL_VFR_COMPLETED))
   return (0);
  i40e_msec_pause(100);
 }

 return (EBUSY);
}
