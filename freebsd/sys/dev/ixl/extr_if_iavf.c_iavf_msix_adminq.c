
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct iavf_sc {int admin_irq; struct i40e_hw hw; } ;


 int FALSE ;
 int FILTER_HANDLED ;
 int FILTER_SCHEDULE_THREAD ;
 int I40E_VFINT_ICR01 ;
 int I40E_VFINT_ICR0_ADMINQ_MASK ;
 int I40E_VFINT_ICR0_ENA1 ;
 int I40E_VFINT_ICR0_ENA_ADMINQ_MASK ;
 int TRUE ;
 int iavf_enable_adminq_irq (struct i40e_hw*) ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static int
iavf_msix_adminq(void *arg)
{
 struct iavf_sc *sc = arg;
 struct i40e_hw *hw = &sc->hw;
 u32 reg, mask;
 bool do_task = FALSE;

 ++sc->admin_irq;

        reg = rd32(hw, I40E_VFINT_ICR01);




        mask = rd32(hw, I40E_VFINT_ICR0_ENA1);


 if (reg & I40E_VFINT_ICR0_ADMINQ_MASK) {
  mask &= ~I40E_VFINT_ICR0_ENA_ADMINQ_MASK;
  do_task = TRUE;
 }

 wr32(hw, I40E_VFINT_ICR0_ENA1, mask);
 iavf_enable_adminq_irq(hw);

 if (do_task)
  return (FILTER_SCHEDULE_THREAD);
 else
  return (FILTER_HANDLED);
}
