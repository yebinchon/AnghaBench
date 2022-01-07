
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int delay_usec; } ;
struct e1000_hw {TYPE_1__ nvm; } ;


 int E1000_EECD ;
 int E1000_EECD_SK ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int usec_delay (int ) ;

__attribute__((used)) static void e1000_lower_eec_clk(struct e1000_hw *hw, u32 *eecd)
{
 *eecd = *eecd & ~E1000_EECD_SK;
 E1000_WRITE_REG(hw, E1000_EECD, *eecd);
 E1000_WRITE_FLUSH(hw);
 usec_delay(hw->nvm.delay_usec);
}
