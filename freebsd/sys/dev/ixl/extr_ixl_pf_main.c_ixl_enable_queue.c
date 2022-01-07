
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;


 int I40E_PFINT_DYN_CTLN (int) ;
 int I40E_PFINT_DYN_CTLN_CLEARPBA_MASK ;
 int I40E_PFINT_DYN_CTLN_INTENA_MASK ;
 int I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT ;
 int IXL_ITR_NONE ;
 int wr32 (struct i40e_hw*,int ,int) ;

void
ixl_enable_queue(struct i40e_hw *hw, int id)
{
 u32 reg;

 reg = I40E_PFINT_DYN_CTLN_INTENA_MASK |
     I40E_PFINT_DYN_CTLN_CLEARPBA_MASK |
     (IXL_ITR_NONE << I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT);
 wr32(hw, I40E_PFINT_DYN_CTLN(id), reg);
}
