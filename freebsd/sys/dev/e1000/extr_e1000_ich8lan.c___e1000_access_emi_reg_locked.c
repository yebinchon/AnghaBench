
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {scalar_t__ (* write_reg_locked ) (struct e1000_hw*,int ,int ) ;scalar_t__ (* read_reg_locked ) (struct e1000_hw*,int ,int *) ;} ;
struct TYPE_3__ {TYPE_2__ ops; } ;
struct e1000_hw {TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int I82579_EMI_ADDR ;
 int I82579_EMI_DATA ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int ) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static s32 __e1000_access_emi_reg_locked(struct e1000_hw *hw, u16 address,
      u16 *data, bool read)
{
 s32 ret_val;

 DEBUGFUNC("__e1000_access_emi_reg_locked");

 ret_val = hw->phy.ops.write_reg_locked(hw, I82579_EMI_ADDR, address);
 if (ret_val)
  return ret_val;

 if (read)
  ret_val = hw->phy.ops.read_reg_locked(hw, I82579_EMI_DATA,
            data);
 else
  ret_val = hw->phy.ops.write_reg_locked(hw, I82579_EMI_DATA,
             *data);

 return ret_val;
}
