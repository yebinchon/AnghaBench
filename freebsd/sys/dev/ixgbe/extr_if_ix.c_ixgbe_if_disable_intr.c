
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct adapter {scalar_t__ intr_type; TYPE_2__ hw; } ;
typedef int if_ctx_t ;


 scalar_t__ IFLIB_INTR_MSIX ;
 int IXGBE_EIAC ;
 int IXGBE_EIMC ;
 int IXGBE_EIMC_EX (int) ;
 int IXGBE_WRITE_FLUSH (TYPE_2__*) ;
 int IXGBE_WRITE_REG (TYPE_2__*,int ,int) ;
 struct adapter* iflib_get_softc (int ) ;
 scalar_t__ ixgbe_mac_82598EB ;

__attribute__((used)) static void
ixgbe_if_disable_intr(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);

 if (adapter->intr_type == IFLIB_INTR_MSIX)
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_EIAC, 0);
 if (adapter->hw.mac.type == ixgbe_mac_82598EB) {
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_EIMC, ~0);
 } else {
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_EIMC, 0xFFFF0000);
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_EIMC_EX(0), ~0);
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_EIMC_EX(1), ~0);
 }
 IXGBE_WRITE_FLUSH(&adapter->hw);

}
