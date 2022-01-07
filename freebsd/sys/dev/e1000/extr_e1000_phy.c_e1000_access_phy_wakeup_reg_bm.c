
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int BM_PHY_REG_NUM (int ) ;
 int BM_PHY_REG_PAGE (int ) ;
 int BM_WUC_ADDRESS_OPCODE ;
 int BM_WUC_DATA_OPCODE ;
 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,int ) ;
 int DEBUGOUT2 (char*,int ,int ) ;
 int E1000_PHY_CTRL ;
 int E1000_PHY_CTRL_GBE_DISABLE ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ e1000_disable_phy_wakeup_reg_access_bm (struct e1000_hw*,int *) ;
 scalar_t__ e1000_enable_phy_wakeup_reg_access_bm (struct e1000_hw*,int *) ;
 scalar_t__ e1000_pchlan ;
 scalar_t__ e1000_read_phy_reg_mdic (struct e1000_hw*,int ,int *) ;
 scalar_t__ e1000_write_phy_reg_mdic (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static s32 e1000_access_phy_wakeup_reg_bm(struct e1000_hw *hw, u32 offset,
       u16 *data, bool read, bool page_set)
{
 s32 ret_val;
 u16 reg = BM_PHY_REG_NUM(offset);
 u16 page = BM_PHY_REG_PAGE(offset);
 u16 phy_reg = 0;

 DEBUGFUNC("e1000_access_phy_wakeup_reg_bm");


 if ((hw->mac.type == e1000_pchlan) &&
    (!(E1000_READ_REG(hw, E1000_PHY_CTRL) & E1000_PHY_CTRL_GBE_DISABLE)))
  DEBUGOUT1("Attempting to access page %d while gig enabled.\n",
     page);

 if (!page_set) {

  ret_val = e1000_enable_phy_wakeup_reg_access_bm(hw, &phy_reg);
  if (ret_val) {
   DEBUGOUT("Could not enable PHY wakeup reg access\n");
   return ret_val;
  }
 }

 DEBUGOUT2("Accessing PHY page %d reg 0x%x\n", page, reg);


 ret_val = e1000_write_phy_reg_mdic(hw, BM_WUC_ADDRESS_OPCODE, reg);
 if (ret_val) {
  DEBUGOUT1("Could not write address opcode to page %d\n", page);
  return ret_val;
 }

 if (read) {

  ret_val = e1000_read_phy_reg_mdic(hw, BM_WUC_DATA_OPCODE,
        data);
 } else {

  ret_val = e1000_write_phy_reg_mdic(hw, BM_WUC_DATA_OPCODE,
         *data);
 }

 if (ret_val) {
  DEBUGOUT2("Could not access PHY reg %d.%d\n", page, reg);
  return ret_val;
 }

 if (!page_set)
  ret_val = e1000_disable_phy_wakeup_reg_access_bm(hw, &phy_reg);

 return ret_val;
}
