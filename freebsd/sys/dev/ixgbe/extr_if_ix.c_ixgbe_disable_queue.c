
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef unsigned long long u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct adapter {struct ixgbe_hw hw; } ;


 int IXGBE_EIMC ;
 int IXGBE_EIMC_EX (int) ;
 int IXGBE_EIMS_RTX_QUEUE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,unsigned long long) ;
 scalar_t__ ixgbe_mac_82598EB ;

__attribute__((used)) static void
ixgbe_disable_queue(struct adapter *adapter, u32 vector)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u64 queue = 1ULL << vector;
 u32 mask;

 if (hw->mac.type == ixgbe_mac_82598EB) {
  mask = (IXGBE_EIMS_RTX_QUEUE & queue);
  IXGBE_WRITE_REG(hw, IXGBE_EIMC, mask);
 } else {
  mask = (queue & 0xFFFFFFFF);
  if (mask)
   IXGBE_WRITE_REG(hw, IXGBE_EIMC_EX(0), mask);
  mask = (queue >> 32);
  if (mask)
   IXGBE_WRITE_REG(hw, IXGBE_EIMC_EX(1), mask);
 }
}
