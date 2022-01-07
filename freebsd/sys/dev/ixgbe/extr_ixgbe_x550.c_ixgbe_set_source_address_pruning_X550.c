
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_PFFLPH ;
 int IXGBE_PFFLPL ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

void ixgbe_set_source_address_pruning_X550(struct ixgbe_hw *hw, bool enable,
        unsigned int pool)
{
 u64 pfflp;


 if (pool > 63)
  return;

 pfflp = (u64)IXGBE_READ_REG(hw, IXGBE_PFFLPL);
 pfflp |= (u64)IXGBE_READ_REG(hw, IXGBE_PFFLPH) << 32;

 if (enable)
  pfflp |= (1ULL << pool);
 else
  pfflp &= ~(1ULL << pool);

 IXGBE_WRITE_REG(hw, IXGBE_PFFLPL, (u32)pfflp);
 IXGBE_WRITE_REG(hw, IXGBE_PFFLPH, (u32)(pfflp >> 32));
}
