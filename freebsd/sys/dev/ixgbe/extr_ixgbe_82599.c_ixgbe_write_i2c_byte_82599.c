
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ qsfp_shared_i2c_bus; } ;
struct ixgbe_hw {TYPE_1__ phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int IXGBE_ERR_I2C ;
 int IXGBE_ESDP ;
 int IXGBE_ESDP_SDP0 ;
 int IXGBE_ESDP_SDP1 ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 scalar_t__ TRUE ;
 int ixgbe_write_i2c_byte_generic (struct ixgbe_hw*,int ,int ,int ) ;
 int msec_delay (int) ;

__attribute__((used)) static s32 ixgbe_write_i2c_byte_82599(struct ixgbe_hw *hw, u8 byte_offset,
     u8 dev_addr, u8 data)
{
 u32 esdp;
 s32 status;
 s32 timeout = 200;

 DEBUGFUNC("ixgbe_write_i2c_byte_82599");

 if (hw->phy.qsfp_shared_i2c_bus == TRUE) {

  esdp = IXGBE_READ_REG(hw, IXGBE_ESDP);
  esdp |= IXGBE_ESDP_SDP0;
  IXGBE_WRITE_REG(hw, IXGBE_ESDP, esdp);
  IXGBE_WRITE_FLUSH(hw);

  while (timeout) {
   esdp = IXGBE_READ_REG(hw, IXGBE_ESDP);
   if (esdp & IXGBE_ESDP_SDP1)
    break;

   msec_delay(5);
   timeout--;
  }

  if (!timeout) {
   DEBUGOUT("Driver can't access resource,"
     " acquiring I2C bus timeout.\n");
   status = IXGBE_ERR_I2C;
   goto release_i2c_access;
  }
 }

 status = ixgbe_write_i2c_byte_generic(hw, byte_offset, dev_addr, data);

release_i2c_access:

 if (hw->phy.qsfp_shared_i2c_bus == TRUE) {

  esdp = IXGBE_READ_REG(hw, IXGBE_ESDP);
  esdp &= ~IXGBE_ESDP_SDP0;
  IXGBE_WRITE_REG(hw, IXGBE_ESDP, esdp);
  IXGBE_WRITE_FLUSH(hw);
 }

 return status;
}
