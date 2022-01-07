
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_6__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int*) ;} ;
struct e1000_phy_info {TYPE_3__ ops; } ;
struct TYPE_4__ {scalar_t__ media_port; int media_changed; } ;
struct TYPE_5__ {TYPE_1__ _82575; } ;
struct e1000_hw {TYPE_2__ dev_spec; struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_M88E1112_PAGE_ADDR ;
 int E1000_M88E1112_STATUS ;
 int E1000_M88E1112_STATUS_LINK ;
 scalar_t__ E1000_MEDIA_PORT_COPPER ;
 scalar_t__ E1000_MEDIA_PORT_OTHER ;
 scalar_t__ E1000_SUCCESS ;
 int TRUE ;
 int e1000_check_for_link_82575 (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub4 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub5 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub6 (struct e1000_hw*,int ,int) ;

__attribute__((used)) static s32 e1000_check_for_link_media_swap(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 data;
 u8 port = 0;

 DEBUGFUNC("e1000_check_for_link_media_swap");


 ret_val = phy->ops.write_reg(hw, E1000_M88E1112_PAGE_ADDR, 0);
 if (ret_val)
  return ret_val;

 ret_val = phy->ops.read_reg(hw, E1000_M88E1112_STATUS, &data);
 if (ret_val)
  return ret_val;

 if (data & E1000_M88E1112_STATUS_LINK)
  port = E1000_MEDIA_PORT_COPPER;


 ret_val = phy->ops.write_reg(hw, E1000_M88E1112_PAGE_ADDR, 1);
 if (ret_val)
  return ret_val;

 ret_val = phy->ops.read_reg(hw, E1000_M88E1112_STATUS, &data);
 if (ret_val)
  return ret_val;

 if (data & E1000_M88E1112_STATUS_LINK)
  port = E1000_MEDIA_PORT_OTHER;


 if (port && (hw->dev_spec._82575.media_port != port)) {
  hw->dev_spec._82575.media_port = port;
  hw->dev_spec._82575.media_changed = TRUE;
 }

 if (port == E1000_MEDIA_PORT_COPPER) {

  ret_val = phy->ops.write_reg(hw, E1000_M88E1112_PAGE_ADDR, 0);
  if (ret_val)
   return ret_val;
  e1000_check_for_link_82575(hw);
 } else {
  e1000_check_for_link_82575(hw);

  ret_val = phy->ops.write_reg(hw, E1000_M88E1112_PAGE_ADDR, 0);
  if (ret_val)
   return ret_val;
 }

 return E1000_SUCCESS;
}
