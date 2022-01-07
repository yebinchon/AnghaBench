
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int hw; } ;
typedef int if_ctx_t ;


 int IXGBE_VTEIAC ;
 int IXGBE_VTEIMC ;
 int IXGBE_WRITE_FLUSH (int *) ;
 int IXGBE_WRITE_REG (int *,int ,int ) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static void
ixv_if_disable_intr(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 IXGBE_WRITE_REG(&adapter->hw, IXGBE_VTEIAC, 0);
 IXGBE_WRITE_REG(&adapter->hw, IXGBE_VTEIMC, ~0);
 IXGBE_WRITE_FLUSH(&adapter->hw);
}
