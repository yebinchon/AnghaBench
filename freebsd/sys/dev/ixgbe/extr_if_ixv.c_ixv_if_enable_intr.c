
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct ix_rx_queue {int msix; } ;
struct adapter {int num_rx_queues; struct ix_rx_queue* rx_queues; struct ixgbe_hw hw; } ;
typedef int if_ctx_t ;


 int IXGBE_EIMS_ENABLE_MASK ;
 int IXGBE_EIMS_LSC ;
 int IXGBE_EIMS_OTHER ;
 int IXGBE_EIMS_RTX_QUEUE ;
 int IXGBE_VTEIAC ;
 int IXGBE_VTEIMS ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 struct adapter* iflib_get_softc (int ) ;
 int ixv_enable_queue (struct adapter*,int ) ;

__attribute__((used)) static void
ixv_if_enable_intr(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ixgbe_hw *hw = &adapter->hw;
 struct ix_rx_queue *que = adapter->rx_queues;
 u32 mask = (IXGBE_EIMS_ENABLE_MASK & ~IXGBE_EIMS_RTX_QUEUE);

 IXGBE_WRITE_REG(hw, IXGBE_VTEIMS, mask);

 mask = IXGBE_EIMS_ENABLE_MASK;
 mask &= ~(IXGBE_EIMS_OTHER | IXGBE_EIMS_LSC);
 IXGBE_WRITE_REG(hw, IXGBE_VTEIAC, mask);

 for (int i = 0; i < adapter->num_rx_queues; i++, que++)
  ixv_enable_queue(adapter, que->msix);

 IXGBE_WRITE_FLUSH(hw);
}
