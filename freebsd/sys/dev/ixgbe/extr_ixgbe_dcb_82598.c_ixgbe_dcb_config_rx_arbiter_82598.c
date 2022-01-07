
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 size_t IXGBE_DCB_MAX_TRAFFIC_CLASS ;
 int IXGBE_RDRXCTL ;
 int IXGBE_RDRXCTL_MCEN ;
 int IXGBE_RDRXCTL_MPBEN ;
 int IXGBE_RDRXCTL_RDMTS_1_2 ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RMCS ;
 int IXGBE_RMCS_ARBDIS ;
 int IXGBE_RMCS_DFP ;
 int IXGBE_RMCS_RRM ;
 int IXGBE_RT2CR (size_t) ;
 int IXGBE_RT2CR_LSP ;
 int IXGBE_RT2CR_MCL_SHIFT ;
 int IXGBE_RUPPBMR ;
 int IXGBE_RUPPBMR_MQA ;
 int IXGBE_RXCTRL ;
 int IXGBE_RXCTRL_DMBYPS ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 size_t ixgbe_dcb_tsa_strict ;

s32 ixgbe_dcb_config_rx_arbiter_82598(struct ixgbe_hw *hw, u16 *refill,
          u16 *max, u8 *tsa)
{
 u32 reg = 0;
 u32 credit_refill = 0;
 u32 credit_max = 0;
 u8 i = 0;

 reg = IXGBE_READ_REG(hw, IXGBE_RUPPBMR) | IXGBE_RUPPBMR_MQA;
 IXGBE_WRITE_REG(hw, IXGBE_RUPPBMR, reg);

 reg = IXGBE_READ_REG(hw, IXGBE_RMCS);

 reg &= ~IXGBE_RMCS_ARBDIS;

 reg |= IXGBE_RMCS_RRM;

 reg |= IXGBE_RMCS_DFP;

 IXGBE_WRITE_REG(hw, IXGBE_RMCS, reg);


 for (i = 0; i < IXGBE_DCB_MAX_TRAFFIC_CLASS; i++) {
  credit_refill = refill[i];
  credit_max = max[i];

  reg = credit_refill | (credit_max << IXGBE_RT2CR_MCL_SHIFT);

  if (tsa[i] == ixgbe_dcb_tsa_strict)
   reg |= IXGBE_RT2CR_LSP;

  IXGBE_WRITE_REG(hw, IXGBE_RT2CR(i), reg);
 }

 reg = IXGBE_READ_REG(hw, IXGBE_RDRXCTL);
 reg |= IXGBE_RDRXCTL_RDMTS_1_2;
 reg |= IXGBE_RDRXCTL_MPBEN;
 reg |= IXGBE_RDRXCTL_MCEN;
 IXGBE_WRITE_REG(hw, IXGBE_RDRXCTL, reg);

 reg = IXGBE_READ_REG(hw, IXGBE_RXCTRL);

 reg &= ~IXGBE_RXCTRL_DMBYPS;
 IXGBE_WRITE_REG(hw, IXGBE_RXCTRL, reg);

 return IXGBE_SUCCESS;
}
