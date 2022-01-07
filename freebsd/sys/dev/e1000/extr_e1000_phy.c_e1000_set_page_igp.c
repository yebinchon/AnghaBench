
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int addr; } ;
struct e1000_hw {TYPE_1__ phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT1 (char*,int ) ;
 int IGP01E1000_PHY_PAGE_SELECT ;
 int e1000_write_phy_reg_mdic (struct e1000_hw*,int ,int ) ;

s32 e1000_set_page_igp(struct e1000_hw *hw, u16 page)
{
 DEBUGFUNC("e1000_set_page_igp");

 DEBUGOUT1("Setting page 0x%x\n", page);

 hw->phy.addr = 1;

 return e1000_write_phy_reg_mdic(hw, IGP01E1000_PHY_PAGE_SELECT, page);
}
