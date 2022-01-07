
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ E1000_ICH8_LAN_INIT_TIMEOUT ;
 scalar_t__ E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_STATUS ;
 scalar_t__ E1000_STATUS_LAN_INIT_DONE ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,scalar_t__) ;
 int usec_delay (int) ;

__attribute__((used)) static void e1000_lan_init_done_ich8lan(struct e1000_hw *hw)
{
 u32 data, loop = E1000_ICH8_LAN_INIT_TIMEOUT;

 DEBUGFUNC("e1000_lan_init_done_ich8lan");


 do {
  data = E1000_READ_REG(hw, E1000_STATUS);
  data &= E1000_STATUS_LAN_INIT_DONE;
  usec_delay(100);
 } while ((!data) && --loop);





 if (loop == 0)
  DEBUGOUT("LAN_INIT_DONE not set, increase timeout\n");


 data = E1000_READ_REG(hw, E1000_STATUS);
 data &= ~E1000_STATUS_LAN_INIT_DONE;
 E1000_WRITE_REG(hw, E1000_STATUS, data);
}
