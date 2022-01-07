
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_KMRNCTRLSTA ;
 int E1000_KMRNCTRLSTA_OFFSET ;
 int E1000_KMRNCTRLSTA_OFFSET_SHIFT ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 int usec_delay (int) ;

__attribute__((used)) static s32 __e1000_write_kmrn_reg(struct e1000_hw *hw, u32 offset, u16 data,
      bool locked)
{
 u32 kmrnctrlsta;

 DEBUGFUNC("e1000_write_kmrn_reg_generic");

 if (!locked) {
  s32 ret_val = E1000_SUCCESS;

  if (!hw->phy.ops.acquire)
   return E1000_SUCCESS;

  ret_val = hw->phy.ops.acquire(hw);
  if (ret_val)
   return ret_val;
 }

 kmrnctrlsta = ((offset << E1000_KMRNCTRLSTA_OFFSET_SHIFT) &
         E1000_KMRNCTRLSTA_OFFSET) | data;
 E1000_WRITE_REG(hw, E1000_KMRNCTRLSTA, kmrnctrlsta);
 E1000_WRITE_FLUSH(hw);

 usec_delay(2);

 if (!locked)
  hw->phy.ops.release(hw);

 return E1000_SUCCESS;
}
