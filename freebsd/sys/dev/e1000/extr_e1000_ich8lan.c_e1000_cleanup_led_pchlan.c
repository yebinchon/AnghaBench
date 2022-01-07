
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {scalar_t__ ledctl_default; } ;
struct TYPE_4__ {int (* write_reg ) (struct e1000_hw*,int ,int ) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_3__ mac; TYPE_2__ phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int HV_LED_CONFIG ;
 int stub1 (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static s32 e1000_cleanup_led_pchlan(struct e1000_hw *hw)
{
 DEBUGFUNC("e1000_cleanup_led_pchlan");

 return hw->phy.ops.write_reg(hw, HV_LED_CONFIG,
         (u16)hw->mac.ledctl_default);
}
