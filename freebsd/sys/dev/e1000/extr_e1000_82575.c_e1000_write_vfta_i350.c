
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int E1000_VFTA ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,int ,int ) ;

void e1000_write_vfta_i350(struct e1000_hw *hw, u32 offset, u32 value)
{
 int i;

 DEBUGFUNC("e1000_write_vfta_350");

 for (i = 0; i < 10; i++)
  E1000_WRITE_REG_ARRAY(hw, E1000_VFTA, offset, value);

 E1000_WRITE_FLUSH(hw);
}
