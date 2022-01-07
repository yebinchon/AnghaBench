
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct adapter {int ctx; int link_irq; struct ixgbe_hw hw; } ;


 int FILTER_HANDLED ;
 int IXGBE_EICR_LSC ;
 int IXGBE_EIMS_OTHER ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VTEICR ;
 int IXGBE_VTEICS ;
 int IXGBE_VTEIMS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int iflib_admin_intr_deferred (int ) ;

__attribute__((used)) static int
ixv_msix_mbx(void *arg)
{
 struct adapter *adapter = arg;
 struct ixgbe_hw *hw = &adapter->hw;
 u32 reg;

 ++adapter->link_irq;


 reg = IXGBE_READ_REG(hw, IXGBE_VTEICS);

 IXGBE_WRITE_REG(hw, IXGBE_VTEICR, reg);


 if (reg & IXGBE_EICR_LSC)
  iflib_admin_intr_deferred(adapter->ctx);

 IXGBE_WRITE_REG(hw, IXGBE_VTEIMS, IXGBE_EIMS_OTHER);

 return (FILTER_HANDLED);
}
