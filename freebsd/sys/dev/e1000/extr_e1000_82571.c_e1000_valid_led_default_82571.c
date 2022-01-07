
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {int type; } ;
struct TYPE_4__ {scalar_t__ (* read ) (struct e1000_hw*,int ,int,int *) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_3__ mac; TYPE_2__ nvm; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ E1000_SUCCESS ;
 int ID_LED_DEFAULT ;
 int ID_LED_DEFAULT_82573 ;
 int ID_LED_RESERVED_0000 ;
 int ID_LED_RESERVED_F746 ;
 int ID_LED_RESERVED_FFFF ;
 int NVM_ID_LED_SETTINGS ;



 scalar_t__ stub1 (struct e1000_hw*,int ,int,int *) ;

__attribute__((used)) static s32 e1000_valid_led_default_82571(struct e1000_hw *hw, u16 *data)
{
 s32 ret_val;

 DEBUGFUNC("e1000_valid_led_default_82571");

 ret_val = hw->nvm.ops.read(hw, NVM_ID_LED_SETTINGS, 1, data);
 if (ret_val) {
  DEBUGOUT("NVM Read Error\n");
  return ret_val;
 }

 switch (hw->mac.type) {
 case 130:
 case 129:
 case 128:
  if (*data == ID_LED_RESERVED_F746)
   *data = ID_LED_DEFAULT_82573;
  break;
 default:
  if (*data == ID_LED_RESERVED_0000 ||
      *data == ID_LED_RESERVED_FFFF)
   *data = ID_LED_DEFAULT;
  break;
 }

 return E1000_SUCCESS;
}
