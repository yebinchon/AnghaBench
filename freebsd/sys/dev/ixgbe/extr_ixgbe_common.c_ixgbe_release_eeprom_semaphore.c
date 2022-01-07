
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SWSM ;
 int IXGBE_SWSM_SMBI ;
 int IXGBE_SWSM_SWESMBI ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static void ixgbe_release_eeprom_semaphore(struct ixgbe_hw *hw)
{
 u32 swsm;

 DEBUGFUNC("ixgbe_release_eeprom_semaphore");

 swsm = IXGBE_READ_REG(hw, IXGBE_SWSM);


 swsm &= ~(IXGBE_SWSM_SWESMBI | IXGBE_SWSM_SMBI);
 IXGBE_WRITE_REG(hw, IXGBE_SWSM, swsm);
 IXGBE_WRITE_FLUSH(hw);
}
