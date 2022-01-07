
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
struct adapter {struct ixgbe_hw hw; } ;
typedef int if_ctx_t ;


 int IXGBE_EIMS ;
 int IXGBE_EIMS_LSC ;
 int IXGBE_EIMS_OTHER ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 scalar_t__ iflib_get_softc (int ) ;

__attribute__((used)) static void
ixgbe_link_intr_enable(if_ctx_t ctx)
{
 struct ixgbe_hw *hw = &((struct adapter *)iflib_get_softc(ctx))->hw;


 IXGBE_WRITE_REG(hw, IXGBE_EIMS, IXGBE_EIMS_OTHER | IXGBE_EIMS_LSC);
}
