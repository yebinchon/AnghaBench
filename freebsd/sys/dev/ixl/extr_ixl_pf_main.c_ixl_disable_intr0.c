
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;


 int I40E_PFINT_DYN_CTL0 ;
 int I40E_PFINT_DYN_CTL0_ITR_INDX_SHIFT ;
 int IXL_ITR_NONE ;
 int ixl_flush (struct i40e_hw*) ;
 int wr32 (struct i40e_hw*,int ,int) ;

void
ixl_disable_intr0(struct i40e_hw *hw)
{
 u32 reg;

 reg = IXL_ITR_NONE << I40E_PFINT_DYN_CTL0_ITR_INDX_SHIFT;
 wr32(hw, I40E_PFINT_DYN_CTL0, reg);
 ixl_flush(hw);
}
