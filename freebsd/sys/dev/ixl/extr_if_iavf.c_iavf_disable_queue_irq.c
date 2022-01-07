
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_hw {int dummy; } ;


 int I40E_VFGEN_RSTAT ;
 int I40E_VFINT_DYN_CTLN1 (int) ;
 int I40E_VFINT_DYN_CTLN1_ITR_INDX_MASK ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

__attribute__((used)) static void
iavf_disable_queue_irq(struct i40e_hw *hw, int id)
{
 wr32(hw, I40E_VFINT_DYN_CTLN1(id),
     I40E_VFINT_DYN_CTLN1_ITR_INDX_MASK);
 rd32(hw, I40E_VFGEN_RSTAT);
}
