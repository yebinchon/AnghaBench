
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_mac_info {int serdes_link_state; int txcw; void* serdes_has_link; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
typedef int s32 ;


 int AN_RETRY_COUNT ;
 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_FD ;
 int E1000_CTRL_SLU ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_RXCW ;
 int E1000_RXCW_C ;
 int E1000_RXCW_IV ;
 int E1000_RXCW_SYNCH ;
 int E1000_STATUS ;
 int E1000_STATUS_LU ;
 int E1000_SUCCESS ;
 int E1000_TXCW ;
 int E1000_TXCW_ANE ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 void* FALSE ;
 void* TRUE ;
 int e1000_config_fc_after_link_up_generic (struct e1000_hw*) ;




 int usec_delay (int) ;

__attribute__((used)) static s32 e1000_check_for_serdes_link_82571(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 u32 rxcw;
 u32 ctrl;
 u32 status;
 u32 txcw;
 u32 i;
 s32 ret_val = E1000_SUCCESS;

 DEBUGFUNC("e1000_check_for_serdes_link_82571");

 ctrl = E1000_READ_REG(hw, E1000_CTRL);
 status = E1000_READ_REG(hw, E1000_STATUS);
 E1000_READ_REG(hw, E1000_RXCW);

 usec_delay(10);
 rxcw = E1000_READ_REG(hw, E1000_RXCW);

 if ((rxcw & E1000_RXCW_SYNCH) && !(rxcw & E1000_RXCW_IV)) {

  switch (mac->serdes_link_state) {
  case 131:
   if (!(status & E1000_STATUS_LU)) {



    mac->serdes_link_state =
        130;
    mac->serdes_has_link = FALSE;
    DEBUGOUT("AN_UP     -> AN_PROG\n");
   } else {
    mac->serdes_has_link = TRUE;
   }
   break;

  case 128:





   if (rxcw & E1000_RXCW_C) {

    E1000_WRITE_REG(hw, E1000_TXCW, mac->txcw);
    E1000_WRITE_REG(hw, E1000_CTRL,
        (ctrl & ~E1000_CTRL_SLU));
    mac->serdes_link_state =
        130;
    mac->serdes_has_link = FALSE;
    DEBUGOUT("FORCED_UP -> AN_PROG\n");
   } else {
    mac->serdes_has_link = TRUE;
   }
   break;

  case 130:
   if (rxcw & E1000_RXCW_C) {




    if (status & E1000_STATUS_LU) {
     mac->serdes_link_state =
         131;
     DEBUGOUT("AN_PROG   -> AN_UP\n");
     mac->serdes_has_link = TRUE;
    } else {

     mac->serdes_link_state =
         129;
     DEBUGOUT("AN_PROG   -> DOWN\n");
    }
   } else {




    E1000_WRITE_REG(hw, E1000_TXCW,
    (mac->txcw & ~E1000_TXCW_ANE));
    ctrl |= (E1000_CTRL_SLU | E1000_CTRL_FD);
    E1000_WRITE_REG(hw, E1000_CTRL, ctrl);


    ret_val =
        e1000_config_fc_after_link_up_generic(hw);
    if (ret_val) {
     DEBUGOUT("Error config flow control\n");
     break;
    }
    mac->serdes_link_state =
      128;
    mac->serdes_has_link = TRUE;
    DEBUGOUT("AN_PROG   -> FORCED_UP\n");
   }
   break;

  case 129:
  default:




   E1000_WRITE_REG(hw, E1000_TXCW, mac->txcw);
   E1000_WRITE_REG(hw, E1000_CTRL, (ctrl &
     ~E1000_CTRL_SLU));
   mac->serdes_link_state =
     130;
   mac->serdes_has_link = FALSE;
   DEBUGOUT("DOWN      -> AN_PROG\n");
   break;
  }
 } else {
  if (!(rxcw & E1000_RXCW_SYNCH)) {
   mac->serdes_has_link = FALSE;
   mac->serdes_link_state = 129;
   DEBUGOUT("ANYSTATE  -> DOWN\n");
  } else {




   for (i = 0; i < AN_RETRY_COUNT; i++) {
    usec_delay(10);
    rxcw = E1000_READ_REG(hw, E1000_RXCW);
    if ((rxcw & E1000_RXCW_SYNCH) &&
        (rxcw & E1000_RXCW_C))
     continue;

    if (rxcw & E1000_RXCW_IV) {
     mac->serdes_has_link = FALSE;
     mac->serdes_link_state =
       129;
     DEBUGOUT("ANYSTATE  -> DOWN\n");
     break;
    }
   }

   if (i == AN_RETRY_COUNT) {
    txcw = E1000_READ_REG(hw, E1000_TXCW);
    txcw |= E1000_TXCW_ANE;
    E1000_WRITE_REG(hw, E1000_TXCW, txcw);
    mac->serdes_link_state =
     130;
    mac->serdes_has_link = FALSE;
    DEBUGOUT("ANYSTATE  -> AN_PROG\n");
   }
  }
 }

 return ret_val;
}
