
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
 int IXGBE_DPMCS ;
 int IXGBE_DPMCS_ARBDIS ;
 int IXGBE_DPMCS_MTSOS_SHIFT ;
 int IXGBE_DPMCS_TSOEF ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int IXGBE_TDTQ2TCCR (size_t) ;
 int IXGBE_TDTQ2TCCR_BWG_SHIFT ;
 int IXGBE_TDTQ2TCCR_GSP ;
 int IXGBE_TDTQ2TCCR_LSP ;
 int IXGBE_TDTQ2TCCR_MCL_SHIFT ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 size_t ixgbe_dcb_tsa_group_strict_cee ;
 size_t ixgbe_dcb_tsa_strict ;

s32 ixgbe_dcb_config_tx_desc_arbiter_82598(struct ixgbe_hw *hw,
        u16 *refill, u16 *max, u8 *bwg_id,
        u8 *tsa)
{
 u32 reg, max_credits;
 u8 i;

 reg = IXGBE_READ_REG(hw, IXGBE_DPMCS);


 reg &= ~IXGBE_DPMCS_ARBDIS;
 reg |= IXGBE_DPMCS_TSOEF;


 reg |= (0x4 << IXGBE_DPMCS_MTSOS_SHIFT);

 IXGBE_WRITE_REG(hw, IXGBE_DPMCS, reg);


 for (i = 0; i < IXGBE_DCB_MAX_TRAFFIC_CLASS; i++) {
  max_credits = max[i];
  reg = max_credits << IXGBE_TDTQ2TCCR_MCL_SHIFT;
  reg |= refill[i];
  reg |= (u32)(bwg_id[i]) << IXGBE_TDTQ2TCCR_BWG_SHIFT;

  if (tsa[i] == ixgbe_dcb_tsa_group_strict_cee)
   reg |= IXGBE_TDTQ2TCCR_GSP;

  if (tsa[i] == ixgbe_dcb_tsa_strict)
   reg |= IXGBE_TDTQ2TCCR_LSP;

  IXGBE_WRITE_REG(hw, IXGBE_TDTQ2TCCR(i), reg);
 }

 return IXGBE_SUCCESS;
}
