
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int IXGBE_MAX_SECRX_POLL ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SECRXCTRL ;
 int IXGBE_SECRXCTRL_RX_DIS ;
 int IXGBE_SECRXSTAT ;
 int IXGBE_SECRXSTAT_SECRX_RDY ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int usec_delay (int) ;

s32 ixgbe_disable_sec_rx_path_generic(struct ixgbe_hw *hw)
{


 int i;
 int secrxreg;

 DEBUGFUNC("ixgbe_disable_sec_rx_path_generic");


 secrxreg = IXGBE_READ_REG(hw, IXGBE_SECRXCTRL);
 secrxreg |= IXGBE_SECRXCTRL_RX_DIS;
 IXGBE_WRITE_REG(hw, IXGBE_SECRXCTRL, secrxreg);
 for (i = 0; i < 40; i++) {
  secrxreg = IXGBE_READ_REG(hw, IXGBE_SECRXSTAT);
  if (secrxreg & IXGBE_SECRXSTAT_SECRX_RDY)
   break;
  else

   usec_delay(1000);
 }


 if (i >= 40)
  DEBUGOUT("Rx unit being enabled before security "
    "path fully disabled.  Continuing with init.\n");

 return IXGBE_SUCCESS;
}
