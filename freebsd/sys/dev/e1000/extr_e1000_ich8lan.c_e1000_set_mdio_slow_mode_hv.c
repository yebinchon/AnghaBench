
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int ) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int HV_KMRN_MDIO_SLOW ;
 int HV_KMRN_MODE_CTRL ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static s32 e1000_set_mdio_slow_mode_hv(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 data;

 DEBUGFUNC("e1000_set_mdio_slow_mode_hv");

 ret_val = hw->phy.ops.read_reg(hw, HV_KMRN_MODE_CTRL, &data);
 if (ret_val)
  return ret_val;

 data |= HV_KMRN_MDIO_SLOW;

 ret_val = hw->phy.ops.write_reg(hw, HV_KMRN_MODE_CTRL, data);

 return ret_val;
}
