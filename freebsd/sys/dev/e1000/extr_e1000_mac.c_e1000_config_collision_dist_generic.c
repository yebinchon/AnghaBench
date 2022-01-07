
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int E1000_COLD_SHIFT ;
 int E1000_COLLISION_DISTANCE ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_TCTL ;
 int E1000_TCTL_COLD ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;

__attribute__((used)) static void e1000_config_collision_dist_generic(struct e1000_hw *hw)
{
 u32 tctl;

 DEBUGFUNC("e1000_config_collision_dist_generic");

 tctl = E1000_READ_REG(hw, E1000_TCTL);

 tctl &= ~E1000_TCTL_COLD;
 tctl |= E1000_COLLISION_DISTANCE << E1000_COLD_SHIFT;

 E1000_WRITE_REG(hw, E1000_TCTL, tctl);
 E1000_WRITE_FLUSH(hw);
}
