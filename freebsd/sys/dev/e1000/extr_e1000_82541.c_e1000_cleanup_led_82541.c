
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int ledctl_default; } ;
struct TYPE_6__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int ) ;} ;
struct TYPE_7__ {TYPE_2__ ops; } ;
struct e1000_dev_spec_82541 {int spd_default; } ;
struct TYPE_5__ {struct e1000_dev_spec_82541 _82541; } ;
struct e1000_hw {TYPE_4__ mac; TYPE_3__ phy; TYPE_1__ dev_spec; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_LEDCTL ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 int IGP01E1000_GMII_FIFO ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static s32 e1000_cleanup_led_82541(struct e1000_hw *hw)
{
 struct e1000_dev_spec_82541 *dev_spec = &hw->dev_spec._82541;
 s32 ret_val;

 DEBUGFUNC("e1000_cleanup_led_82541");

 ret_val = hw->phy.ops.write_reg(hw, IGP01E1000_GMII_FIFO,
     dev_spec->spd_default);
 if (ret_val)
  goto out;

 E1000_WRITE_REG(hw, E1000_LEDCTL, hw->mac.ledctl_default);

out:
 return ret_val;
}
