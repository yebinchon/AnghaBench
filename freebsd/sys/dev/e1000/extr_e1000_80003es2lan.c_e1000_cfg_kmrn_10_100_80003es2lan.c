
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,scalar_t__) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,scalar_t__*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ DEFAULT_TIPG_IPGT_10_100_80003ES2LAN ;
 scalar_t__ E1000_KMRNCTRLSTA_HD_CTRL_10_100_DEFAULT ;
 int E1000_KMRNCTRLSTA_OFFSET_HD_CTRL ;
 scalar_t__ E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_TIPG ;
 scalar_t__ E1000_TIPG_IPGT_MASK ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,scalar_t__) ;
 scalar_t__ GG82563_KMCR_PASS_FALSE_CARRIER ;
 scalar_t__ GG82563_MAX_KMRN_RETRY ;
 int GG82563_PHY_KMRN_MODE_CTRL ;
 scalar_t__ HALF_DUPLEX ;
 scalar_t__ e1000_write_kmrn_reg_80003es2lan (struct e1000_hw*,int ,scalar_t__) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,scalar_t__*) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,scalar_t__*) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,scalar_t__) ;

__attribute__((used)) static s32 e1000_cfg_kmrn_10_100_80003es2lan(struct e1000_hw *hw, u16 duplex)
{
 s32 ret_val;
 u32 tipg;
 u32 i = 0;
 u16 reg_data, reg_data2;

 DEBUGFUNC("e1000_configure_kmrn_for_10_100");

 reg_data = E1000_KMRNCTRLSTA_HD_CTRL_10_100_DEFAULT;
 ret_val =
     e1000_write_kmrn_reg_80003es2lan(hw,
          E1000_KMRNCTRLSTA_OFFSET_HD_CTRL,
          reg_data);
 if (ret_val)
  return ret_val;


 tipg = E1000_READ_REG(hw, E1000_TIPG);
 tipg &= ~E1000_TIPG_IPGT_MASK;
 tipg |= DEFAULT_TIPG_IPGT_10_100_80003ES2LAN;
 E1000_WRITE_REG(hw, E1000_TIPG, tipg);

 do {
  ret_val = hw->phy.ops.read_reg(hw, GG82563_PHY_KMRN_MODE_CTRL,
            &reg_data);
  if (ret_val)
   return ret_val;

  ret_val = hw->phy.ops.read_reg(hw, GG82563_PHY_KMRN_MODE_CTRL,
            &reg_data2);
  if (ret_val)
   return ret_val;
  i++;
 } while ((reg_data != reg_data2) && (i < GG82563_MAX_KMRN_RETRY));

 if (duplex == HALF_DUPLEX)
  reg_data |= GG82563_KMCR_PASS_FALSE_CARRIER;
 else
  reg_data &= ~GG82563_KMCR_PASS_FALSE_CARRIER;

 return hw->phy.ops.write_reg(hw, GG82563_PHY_KMRN_MODE_CTRL, reg_data);
}
