
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_PHY_RST ;
 int E1000_CTRL_RST ;
 int E1000_ICR ;
 int E1000_IMC ;
 int E1000_LEDCTL ;
 int E1000_MANC ;
 int E1000_MANC_ARP_EN ;
 int E1000_RCTL ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_TCTL ;
 int E1000_TCTL_PSP ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int E1000_WRITE_REG_IO (struct e1000_hw*,int ,int) ;
 int IGP_ACTIVITY_LED_ENABLE ;
 int IGP_ACTIVITY_LED_MASK ;
 int IGP_LED3_MODE ;


 int e1000_82547 ;
 int e1000_phy_init_script_82541 (struct e1000_hw*) ;
 int msec_delay (int) ;

__attribute__((used)) static s32 e1000_reset_hw_82541(struct e1000_hw *hw)
{
 u32 ledctl, ctrl, manc;

 DEBUGFUNC("e1000_reset_hw_82541");

 DEBUGOUT("Masking off all interrupts\n");
 E1000_WRITE_REG(hw, E1000_IMC, 0xFFFFFFFF);

 E1000_WRITE_REG(hw, E1000_RCTL, 0);
 E1000_WRITE_REG(hw, E1000_TCTL, E1000_TCTL_PSP);
 E1000_WRITE_FLUSH(hw);





 msec_delay(10);

 ctrl = E1000_READ_REG(hw, E1000_CTRL);


 if ((hw->mac.type == 129) || (hw->mac.type == e1000_82547)) {
  E1000_WRITE_REG(hw, E1000_CTRL, (ctrl | E1000_CTRL_PHY_RST));
  E1000_WRITE_FLUSH(hw);
  msec_delay(5);
 }

 DEBUGOUT("Issuing a global reset to 82541/82547 MAC\n");
 switch (hw->mac.type) {
 case 129:
 case 128:





  E1000_WRITE_REG_IO(hw, E1000_CTRL, ctrl | E1000_CTRL_RST);
  break;
 default:
  E1000_WRITE_REG(hw, E1000_CTRL, ctrl | E1000_CTRL_RST);
  break;
 }


 msec_delay(20);


 manc = E1000_READ_REG(hw, E1000_MANC);
 manc &= ~E1000_MANC_ARP_EN;
 E1000_WRITE_REG(hw, E1000_MANC, manc);

 if ((hw->mac.type == 129) || (hw->mac.type == e1000_82547)) {
  e1000_phy_init_script_82541(hw);


  ledctl = E1000_READ_REG(hw, E1000_LEDCTL);
  ledctl &= IGP_ACTIVITY_LED_MASK;
  ledctl |= (IGP_ACTIVITY_LED_ENABLE | IGP_LED3_MODE);
  E1000_WRITE_REG(hw, E1000_LEDCTL, ledctl);
 }


 DEBUGOUT("Masking off all interrupts\n");
 E1000_WRITE_REG(hw, E1000_IMC, 0xFFFFFFFF);


 E1000_READ_REG(hw, E1000_ICR);

 return E1000_SUCCESS;
}
