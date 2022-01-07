
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
struct adapter {scalar_t__ intr_type; struct e1000_hw hw; } ;
typedef int if_ctx_t ;


 int E1000_EIAC ;
 int E1000_EIMC ;
 int E1000_IMC ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ IFLIB_INTR_MSIX ;
 scalar_t__ __predict_true (int) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static void
igb_if_intr_disable(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct e1000_hw *hw = &adapter->hw;

 if (__predict_true(adapter->intr_type == IFLIB_INTR_MSIX)) {
  E1000_WRITE_REG(hw, E1000_EIMC, 0xffffffff);
  E1000_WRITE_REG(hw, E1000_EIAC, 0);
 }
 E1000_WRITE_REG(hw, E1000_IMC, 0xffffffff);
 E1000_WRITE_FLUSH(hw);
}
