
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;


 int I40E_VFINT_DYN_CTLN1 (int) ;
 int I40E_VFINT_DYN_CTLN1_CLEARPBA_MASK ;
 int I40E_VFINT_DYN_CTLN1_INTENA_MASK ;
 int I40E_VFINT_DYN_CTLN1_ITR_INDX_MASK ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static void
iavf_enable_queue_irq(struct i40e_hw *hw, int id)
{
 u32 reg;

 reg = I40E_VFINT_DYN_CTLN1_INTENA_MASK |
     I40E_VFINT_DYN_CTLN1_CLEARPBA_MASK |
     I40E_VFINT_DYN_CTLN1_ITR_INDX_MASK;
 wr32(hw, I40E_VFINT_DYN_CTLN1(id), reg);
}
