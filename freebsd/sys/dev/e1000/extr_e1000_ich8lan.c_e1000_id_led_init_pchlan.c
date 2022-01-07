
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct e1000_mac_info {int ledctl_default; int ledctl_mode1; int ledctl_mode2; } ;
struct TYPE_3__ {scalar_t__ (* valid_led_default ) (struct e1000_hw*,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ nvm; struct e1000_mac_info mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_LEDCTL ;
 int E1000_LEDCTL_LED0_MODE_MASK ;
 int E1000_LEDCTL_MODE_LINK_UP ;
 int E1000_PHY_LED0_IVRT ;
 int E1000_PHY_LED0_MASK ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 scalar_t__ stub1 (struct e1000_hw*,int*) ;

__attribute__((used)) static s32 e1000_id_led_init_pchlan(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 s32 ret_val;
 const u32 ledctl_on = E1000_LEDCTL_MODE_LINK_UP;
 const u32 ledctl_off = E1000_LEDCTL_MODE_LINK_UP | E1000_PHY_LED0_IVRT;
 u16 data, i, temp, shift;

 DEBUGFUNC("e1000_id_led_init_pchlan");


 ret_val = hw->nvm.ops.valid_led_default(hw, &data);
 if (ret_val)
  return ret_val;

 mac->ledctl_default = E1000_READ_REG(hw, E1000_LEDCTL);
 mac->ledctl_mode1 = mac->ledctl_default;
 mac->ledctl_mode2 = mac->ledctl_default;

 for (i = 0; i < 4; i++) {
  temp = (data >> (i << 2)) & E1000_LEDCTL_LED0_MODE_MASK;
  shift = (i * 5);
  switch (temp) {
  case 130:
  case 128:
  case 129:
   mac->ledctl_mode1 &= ~(E1000_PHY_LED0_MASK << shift);
   mac->ledctl_mode1 |= (ledctl_on << shift);
   break;
  case 133:
  case 131:
  case 132:
   mac->ledctl_mode1 &= ~(E1000_PHY_LED0_MASK << shift);
   mac->ledctl_mode1 |= (ledctl_off << shift);
   break;
  default:

   break;
  }
  switch (temp) {
  case 134:
  case 128:
  case 131:
   mac->ledctl_mode2 &= ~(E1000_PHY_LED0_MASK << shift);
   mac->ledctl_mode2 |= (ledctl_on << shift);
   break;
  case 135:
  case 129:
  case 132:
   mac->ledctl_mode2 &= ~(E1000_PHY_LED0_MASK << shift);
   mac->ledctl_mode2 |= (ledctl_off << shift);
   break;
  default:

   break;
  }
 }

 return E1000_SUCCESS;
}
