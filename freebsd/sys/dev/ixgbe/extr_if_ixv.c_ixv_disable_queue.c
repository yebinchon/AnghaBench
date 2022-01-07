
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct adapter {struct ixgbe_hw hw; } ;


 int IXGBE_EIMS_RTX_QUEUE ;
 int IXGBE_VTEIMC ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static inline void
ixv_disable_queue(struct adapter *adapter, u32 vector)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u64 queue = (u64)(1 << vector);
 u32 mask;

 mask = (IXGBE_EIMS_RTX_QUEUE & queue);
 IXGBE_WRITE_REG(hw, IXGBE_VTEIMC, mask);
}
