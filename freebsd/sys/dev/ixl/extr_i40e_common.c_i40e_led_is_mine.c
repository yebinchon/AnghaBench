
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * led; } ;
struct i40e_hw {int port; TYPE_1__ func_caps; } ;


 int I40E_GLGEN_GPIO_CTL (int) ;
 int I40E_GLGEN_GPIO_CTL_PRT_NUM_MASK ;
 int I40E_GLGEN_GPIO_CTL_PRT_NUM_NA_MASK ;
 int I40E_GLGEN_GPIO_CTL_PRT_NUM_SHIFT ;
 int rd32 (struct i40e_hw*,int ) ;

__attribute__((used)) static u32 i40e_led_is_mine(struct i40e_hw *hw, int idx)
{
 u32 gpio_val = 0;
 u32 port;

 if (!hw->func_caps.led[idx])
  return 0;

 gpio_val = rd32(hw, I40E_GLGEN_GPIO_CTL(idx));
 port = (gpio_val & I40E_GLGEN_GPIO_CTL_PRT_NUM_MASK) >>
  I40E_GLGEN_GPIO_CTL_PRT_NUM_SHIFT;




 if ((gpio_val & I40E_GLGEN_GPIO_CTL_PRT_NUM_NA_MASK) ||
     (port != hw->port))
  return 0;

 return gpio_val;
}
