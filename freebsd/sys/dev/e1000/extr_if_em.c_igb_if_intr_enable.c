
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct adapter {scalar_t__ intr_type; int que_mask; int link_mask; struct e1000_hw hw; } ;
typedef int if_ctx_t ;


 int E1000_EIAC ;
 int E1000_EIAM ;
 int E1000_EIMS ;
 int E1000_IMS ;
 int E1000_IMS_LSC ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ IFLIB_INTR_MSIX ;
 int IMS_ENABLE_MASK ;
 scalar_t__ __predict_true (int) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static void
igb_if_intr_enable(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct e1000_hw *hw = &adapter->hw;
 u32 mask;

 if (__predict_true(adapter->intr_type == IFLIB_INTR_MSIX)) {
  mask = (adapter->que_mask | adapter->link_mask);
  E1000_WRITE_REG(hw, E1000_EIAC, mask);
  E1000_WRITE_REG(hw, E1000_EIAM, mask);
  E1000_WRITE_REG(hw, E1000_EIMS, mask);
  E1000_WRITE_REG(hw, E1000_IMS, E1000_IMS_LSC);
 } else
  E1000_WRITE_REG(hw, E1000_IMS, IMS_ENABLE_MASK);
 E1000_WRITE_FLUSH(hw);
}
