
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int E1000_CTRL ;
 int E1000_CTRL_MDC ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int usec_delay (int) ;

__attribute__((used)) static void e1000_raise_mdi_clk_82543(struct e1000_hw *hw, u32 *ctrl)
{




 E1000_WRITE_REG(hw, E1000_CTRL, (*ctrl | E1000_CTRL_MDC));
 E1000_WRITE_FLUSH(hw);
 usec_delay(10);
}
