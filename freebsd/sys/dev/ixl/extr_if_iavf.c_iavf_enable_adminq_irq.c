
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_hw {int dummy; } ;


 int I40E_VFGEN_RSTAT ;
 int I40E_VFINT_DYN_CTL01 ;
 int I40E_VFINT_DYN_CTL01_INTENA_MASK ;
 int I40E_VFINT_DYN_CTL01_ITR_INDX_MASK ;
 int I40E_VFINT_ICR0_ENA1 ;
 int I40E_VFINT_ICR0_ENA1_ADMINQ_MASK ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static void
iavf_enable_adminq_irq(struct i40e_hw *hw)
{
 wr32(hw, I40E_VFINT_DYN_CTL01,
     I40E_VFINT_DYN_CTL01_INTENA_MASK |
     I40E_VFINT_DYN_CTL01_ITR_INDX_MASK);
 wr32(hw, I40E_VFINT_ICR0_ENA1, I40E_VFINT_ICR0_ENA1_ADMINQ_MASK);

 rd32(hw, I40E_VFGEN_RSTAT);
}
