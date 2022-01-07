
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_EE_RST ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 int usec_delay (int) ;

__attribute__((used)) static void e1000_reload_nvm_generic(struct e1000_hw *hw)
{
 u32 ctrl_ext;

 DEBUGFUNC("e1000_reload_nvm_generic");

 usec_delay(10);
 ctrl_ext = E1000_READ_REG(hw, E1000_CTRL_EXT);
 ctrl_ext |= E1000_CTRL_EXT_EE_RST;
 E1000_WRITE_REG(hw, E1000_CTRL_EXT, ctrl_ext);
 E1000_WRITE_FLUSH(hw);
}
