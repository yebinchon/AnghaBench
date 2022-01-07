
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;


 int DEBUGOUT (char*) ;
 int E1000_MPHY_ADDR_CTRL ;
 int E1000_MPHY_BUSY ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int FALSE ;
 int TRUE ;
 int usec_delay (int) ;

bool e1000_is_mphy_ready(struct e1000_hw *hw)
{
 u16 retry_count = 0;
 u32 mphy_ctrl = 0;
 bool ready = FALSE;

 while (retry_count < 2) {
  mphy_ctrl = E1000_READ_REG(hw, E1000_MPHY_ADDR_CTRL);
  if (mphy_ctrl & E1000_MPHY_BUSY) {
   usec_delay(20);
   retry_count++;
   continue;
  }
  ready = TRUE;
  break;
 }

 if (!ready)
  DEBUGOUT("ERROR READING mPHY control register, phy is busy.\n");

 return ready;
}
