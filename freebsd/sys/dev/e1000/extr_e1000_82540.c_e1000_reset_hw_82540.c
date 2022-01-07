
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
 int E1000_CTRL_DUP ;
 int E1000_CTRL_RST ;
 int E1000_ICR ;
 int E1000_IMC ;
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


 int msec_delay (int) ;

__attribute__((used)) static s32 e1000_reset_hw_82540(struct e1000_hw *hw)
{
 u32 ctrl, manc;
 s32 ret_val = E1000_SUCCESS;

 DEBUGFUNC("e1000_reset_hw_82540");

 DEBUGOUT("Masking off all interrupts\n");
 E1000_WRITE_REG(hw, E1000_IMC, 0xFFFFFFFF);

 E1000_WRITE_REG(hw, E1000_RCTL, 0);
 E1000_WRITE_REG(hw, E1000_TCTL, E1000_TCTL_PSP);
 E1000_WRITE_FLUSH(hw);





 msec_delay(10);

 ctrl = E1000_READ_REG(hw, E1000_CTRL);

 DEBUGOUT("Issuing a global reset to 82540/82545/82546 MAC\n");
 switch (hw->mac.type) {
 case 129:
 case 128:
  E1000_WRITE_REG(hw, E1000_CTRL_DUP, ctrl | E1000_CTRL_RST);
  break;
 default:





  E1000_WRITE_REG_IO(hw, E1000_CTRL, ctrl | E1000_CTRL_RST);
  break;
 }


 msec_delay(5);


 manc = E1000_READ_REG(hw, E1000_MANC);
 manc &= ~E1000_MANC_ARP_EN;
 E1000_WRITE_REG(hw, E1000_MANC, manc);

 E1000_WRITE_REG(hw, E1000_IMC, 0xffffffff);
 E1000_READ_REG(hw, E1000_ICR);

 return ret_val;
}
