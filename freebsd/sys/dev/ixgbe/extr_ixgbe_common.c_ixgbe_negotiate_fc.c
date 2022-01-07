
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ requested_mode; void* current_mode; } ;
struct ixgbe_hw {TYPE_1__ fc; } ;
typedef int s32 ;


 int DEBUGOUT (char*) ;
 int ERROR_REPORT3 (int ,char*,int,int) ;
 int IXGBE_ERROR_UNSUPPORTED ;
 int IXGBE_ERR_FC_NOT_NEGOTIATED ;
 int IXGBE_SUCCESS ;
 scalar_t__ ixgbe_fc_full ;
 void* ixgbe_fc_none ;
 void* ixgbe_fc_rx_pause ;
 void* ixgbe_fc_tx_pause ;

s32 ixgbe_negotiate_fc(struct ixgbe_hw *hw, u32 adv_reg, u32 lp_reg,
         u32 adv_sym, u32 adv_asm, u32 lp_sym, u32 lp_asm)
{
 if ((!(adv_reg)) || (!(lp_reg))) {
  ERROR_REPORT3(IXGBE_ERROR_UNSUPPORTED,
        "Local or link partner's advertised flow control "
        "settings are NULL. Local: %x, link partner: %x\n",
        adv_reg, lp_reg);
  return IXGBE_ERR_FC_NOT_NEGOTIATED;
 }

 if ((adv_reg & adv_sym) && (lp_reg & lp_sym)) {







  if (hw->fc.requested_mode == ixgbe_fc_full) {
   hw->fc.current_mode = ixgbe_fc_full;
   DEBUGOUT("Flow Control = FULL.\n");
  } else {
   hw->fc.current_mode = ixgbe_fc_rx_pause;
   DEBUGOUT("Flow Control=RX PAUSE frames only\n");
  }
 } else if (!(adv_reg & adv_sym) && (adv_reg & adv_asm) &&
     (lp_reg & lp_sym) && (lp_reg & lp_asm)) {
  hw->fc.current_mode = ixgbe_fc_tx_pause;
  DEBUGOUT("Flow Control = TX PAUSE frames only.\n");
 } else if ((adv_reg & adv_sym) && (adv_reg & adv_asm) &&
     !(lp_reg & lp_sym) && (lp_reg & lp_asm)) {
  hw->fc.current_mode = ixgbe_fc_rx_pause;
  DEBUGOUT("Flow Control = RX PAUSE frames only.\n");
 } else {
  hw->fc.current_mode = ixgbe_fc_none;
  DEBUGOUT("Flow Control = NONE.\n");
 }
 return IXGBE_SUCCESS;
}
