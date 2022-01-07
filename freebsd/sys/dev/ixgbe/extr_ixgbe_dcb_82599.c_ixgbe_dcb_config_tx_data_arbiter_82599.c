
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
typedef size_t u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 size_t IXGBE_DCB_MAX_TRAFFIC_CLASS ;
 size_t IXGBE_DCB_MAX_USER_PRIORITY ;
 int IXGBE_RTTPCS ;
 size_t IXGBE_RTTPCS_ARBDIS ;
 size_t IXGBE_RTTPCS_ARBD_DCB ;
 size_t IXGBE_RTTPCS_ARBD_SHIFT ;
 size_t IXGBE_RTTPCS_TPPAC ;
 size_t IXGBE_RTTPCS_TPRM ;
 int IXGBE_RTTPT2C (size_t) ;
 size_t IXGBE_RTTPT2C_BWG_SHIFT ;
 size_t IXGBE_RTTPT2C_GSP ;
 size_t IXGBE_RTTPT2C_LSP ;
 size_t IXGBE_RTTPT2C_MCL_SHIFT ;
 int IXGBE_RTTUP2TC ;
 size_t IXGBE_RTTUP2TC_UP_SHIFT ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,size_t) ;
 size_t ixgbe_dcb_tsa_group_strict_cee ;
 size_t ixgbe_dcb_tsa_strict ;

s32 ixgbe_dcb_config_tx_data_arbiter_82599(struct ixgbe_hw *hw, u16 *refill,
        u16 *max, u8 *bwg_id, u8 *tsa,
        u8 *map)
{
 u32 reg;
 u8 i;





 reg = IXGBE_RTTPCS_TPPAC | IXGBE_RTTPCS_TPRM |
       (IXGBE_RTTPCS_ARBD_DCB << IXGBE_RTTPCS_ARBD_SHIFT) |
       IXGBE_RTTPCS_ARBDIS;
 IXGBE_WRITE_REG(hw, IXGBE_RTTPCS, reg);







 reg = 0;
 for (i = 0; i < IXGBE_DCB_MAX_USER_PRIORITY; i++)
  reg |= (map[i] << (i * IXGBE_RTTUP2TC_UP_SHIFT));

 IXGBE_WRITE_REG(hw, IXGBE_RTTUP2TC, reg);


 for (i = 0; i < IXGBE_DCB_MAX_TRAFFIC_CLASS; i++) {
  reg = refill[i];
  reg |= (u32)(max[i]) << IXGBE_RTTPT2C_MCL_SHIFT;
  reg |= (u32)(bwg_id[i]) << IXGBE_RTTPT2C_BWG_SHIFT;

  if (tsa[i] == ixgbe_dcb_tsa_group_strict_cee)
   reg |= IXGBE_RTTPT2C_GSP;

  if (tsa[i] == ixgbe_dcb_tsa_strict)
   reg |= IXGBE_RTTPT2C_LSP;

  IXGBE_WRITE_REG(hw, IXGBE_RTTPT2C(i), reg);
 }





 reg = IXGBE_RTTPCS_TPPAC | IXGBE_RTTPCS_TPRM |
       (IXGBE_RTTPCS_ARBD_DCB << IXGBE_RTTPCS_ARBD_SHIFT);
 IXGBE_WRITE_REG(hw, IXGBE_RTTPCS, reg);

 return IXGBE_SUCCESS;
}
