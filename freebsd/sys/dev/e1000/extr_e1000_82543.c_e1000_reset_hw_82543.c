
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int (* reload ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ nvm; TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_RST ;
 int E1000_ICR ;
 int E1000_IMC ;
 int E1000_RCTL ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_TCTL ;
 int E1000_TCTL_PSP ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int E1000_WRITE_REG_IO (struct e1000_hw*,int ,int) ;
 int FALSE ;
 scalar_t__ e1000_82543 ;
 int e1000_set_tbi_sbp_82543 (struct e1000_hw*,int ) ;
 int msec_delay (int) ;
 int stub1 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_reset_hw_82543(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 ret_val = E1000_SUCCESS;

 DEBUGFUNC("e1000_reset_hw_82543");

 DEBUGOUT("Masking off all interrupts\n");
 E1000_WRITE_REG(hw, E1000_IMC, 0xffffffff);

 E1000_WRITE_REG(hw, E1000_RCTL, 0);
 E1000_WRITE_REG(hw, E1000_TCTL, E1000_TCTL_PSP);
 E1000_WRITE_FLUSH(hw);

 e1000_set_tbi_sbp_82543(hw, FALSE);





 msec_delay(10);

 ctrl = E1000_READ_REG(hw, E1000_CTRL);

 DEBUGOUT("Issuing a global reset to 82543/82544 MAC\n");
 if (hw->mac.type == e1000_82543) {
  E1000_WRITE_REG(hw, E1000_CTRL, ctrl | E1000_CTRL_RST);
 } else {




  E1000_WRITE_REG_IO(hw, E1000_CTRL, ctrl | E1000_CTRL_RST);
 }





 hw->nvm.ops.reload(hw);
 msec_delay(2);


 E1000_WRITE_REG(hw, E1000_IMC, 0xffffffff);
 E1000_READ_REG(hw, E1000_ICR);

 return ret_val;
}
