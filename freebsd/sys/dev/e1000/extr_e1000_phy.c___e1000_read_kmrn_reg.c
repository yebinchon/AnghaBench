
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {int (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_3__ {TYPE_2__ ops; } ;
struct e1000_hw {TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_KMRNCTRLSTA ;
 int E1000_KMRNCTRLSTA_OFFSET ;
 int E1000_KMRNCTRLSTA_OFFSET_SHIFT ;
 int E1000_KMRNCTRLSTA_REN ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 int usec_delay (int) ;

__attribute__((used)) static s32 __e1000_read_kmrn_reg(struct e1000_hw *hw, u32 offset, u16 *data,
     bool locked)
{
 u32 kmrnctrlsta;

 DEBUGFUNC("__e1000_read_kmrn_reg");

 if (!locked) {
  s32 ret_val = E1000_SUCCESS;

  if (!hw->phy.ops.acquire)
   return E1000_SUCCESS;

  ret_val = hw->phy.ops.acquire(hw);
  if (ret_val)
   return ret_val;
 }

 kmrnctrlsta = ((offset << E1000_KMRNCTRLSTA_OFFSET_SHIFT) &
         E1000_KMRNCTRLSTA_OFFSET) | E1000_KMRNCTRLSTA_REN;
 E1000_WRITE_REG(hw, E1000_KMRNCTRLSTA, kmrnctrlsta);
 E1000_WRITE_FLUSH(hw);

 usec_delay(2);

 kmrnctrlsta = E1000_READ_REG(hw, E1000_KMRNCTRLSTA);
 *data = (u16)kmrnctrlsta;

 if (!locked)
  hw->phy.ops.release(hw);

 return E1000_SUCCESS;
}
