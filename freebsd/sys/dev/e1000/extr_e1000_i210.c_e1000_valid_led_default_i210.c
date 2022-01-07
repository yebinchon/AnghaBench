
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_6__ {int media_type; } ;
struct TYPE_4__ {scalar_t__ (* read ) (struct e1000_hw*,int ,int,scalar_t__*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_2__ nvm; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ ID_LED_DEFAULT_I210 ;
 scalar_t__ ID_LED_DEFAULT_I210_SERDES ;
 scalar_t__ ID_LED_RESERVED_0000 ;
 scalar_t__ ID_LED_RESERVED_FFFF ;
 int NVM_ID_LED_SETTINGS ;


 scalar_t__ stub1 (struct e1000_hw*,int ,int,scalar_t__*) ;

__attribute__((used)) static s32 e1000_valid_led_default_i210(struct e1000_hw *hw, u16 *data)
{
 s32 ret_val;

 DEBUGFUNC("e1000_valid_led_default_i210");

 ret_val = hw->nvm.ops.read(hw, NVM_ID_LED_SETTINGS, 1, data);
 if (ret_val) {
  DEBUGOUT("NVM Read Error\n");
  goto out;
 }

 if (*data == ID_LED_RESERVED_0000 || *data == ID_LED_RESERVED_FFFF) {
  switch (hw->phy.media_type) {
  case 128:
   *data = ID_LED_DEFAULT_I210_SERDES;
   break;
  case 129:
  default:
   *data = ID_LED_DEFAULT_I210;
   break;
  }
 }
out:
 return ret_val;
}
