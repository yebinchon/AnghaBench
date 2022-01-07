
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {scalar_t__ func; } ;
struct e1000_hw {TYPE_1__ phy; TYPE_2__ bus; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_EECD ;
 int E1000_EECD_PRES ;
 int E1000_EEMNGCTL ;
 scalar_t__ E1000_FUNC_1 ;
 scalar_t__ E1000_FUNC_2 ;
 scalar_t__ E1000_FUNC_3 ;
 int E1000_NVM_CFG_DONE_PORT_0 ;
 int E1000_NVM_CFG_DONE_PORT_1 ;
 int E1000_NVM_CFG_DONE_PORT_2 ;
 int E1000_NVM_CFG_DONE_PORT_3 ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 scalar_t__ PHY_CFG_TIMEOUT ;
 scalar_t__ e1000_phy_igp_3 ;
 int e1000_phy_init_script_igp3 (struct e1000_hw*) ;
 int msec_delay (int) ;

__attribute__((used)) static s32 e1000_get_cfg_done_82575(struct e1000_hw *hw)
{
 s32 timeout = PHY_CFG_TIMEOUT;
 u32 mask = E1000_NVM_CFG_DONE_PORT_0;

 DEBUGFUNC("e1000_get_cfg_done_82575");

 if (hw->bus.func == E1000_FUNC_1)
  mask = E1000_NVM_CFG_DONE_PORT_1;
 else if (hw->bus.func == E1000_FUNC_2)
  mask = E1000_NVM_CFG_DONE_PORT_2;
 else if (hw->bus.func == E1000_FUNC_3)
  mask = E1000_NVM_CFG_DONE_PORT_3;
 while (timeout) {
  if (E1000_READ_REG(hw, E1000_EEMNGCTL) & mask)
   break;
  msec_delay(1);
  timeout--;
 }
 if (!timeout)
  DEBUGOUT("MNG configuration cycle has not completed.\n");


 if (!(E1000_READ_REG(hw, E1000_EECD) & E1000_EECD_PRES) &&
     (hw->phy.type == e1000_phy_igp_3))
  e1000_phy_init_script_igp3(hw);

 return E1000_SUCCESS;
}
