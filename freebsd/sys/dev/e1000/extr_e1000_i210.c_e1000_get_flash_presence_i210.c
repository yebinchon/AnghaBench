
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int E1000_EECD ;
 int E1000_EECD_FLASH_DETECTED_I210 ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int FALSE ;
 int TRUE ;

bool e1000_get_flash_presence_i210(struct e1000_hw *hw)
{
 u32 eec = 0;
 bool ret_val = FALSE;

 DEBUGFUNC("e1000_get_flash_presence_i210");

 eec = E1000_READ_REG(hw, E1000_EECD);

 if (eec & E1000_EECD_FLASH_DETECTED_I210)
  ret_val = TRUE;

 return ret_val;
}
