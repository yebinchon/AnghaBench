
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int* low_water; int* high_water; int pause_time; } ;
struct ixgbe_hw {TYPE_1__ fc; } ;
typedef int s32 ;


 int IXGBE_DCB_MAX_TRAFFIC_CLASS ;
 int IXGBE_FCRTH (int) ;
 int IXGBE_FCRTH_FCEN ;
 int IXGBE_FCRTL (int) ;
 int IXGBE_FCRTL_XONE ;
 int IXGBE_FCRTV ;
 int IXGBE_FCTRL ;
 int IXGBE_FCTRL_RFCE ;
 int IXGBE_FCTRL_RPFCE ;
 int IXGBE_FCTTV (int) ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RMCS ;
 int IXGBE_RMCS_TFCE_802_3X ;
 int IXGBE_RMCS_TFCE_PRIORITY ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

s32 ixgbe_dcb_config_pfc_82598(struct ixgbe_hw *hw, u8 pfc_en)
{
 u32 fcrtl, reg;
 u8 i;


 reg = IXGBE_READ_REG(hw, IXGBE_RMCS);
 reg &= ~IXGBE_RMCS_TFCE_802_3X;
 reg |= IXGBE_RMCS_TFCE_PRIORITY;
 IXGBE_WRITE_REG(hw, IXGBE_RMCS, reg);


 reg = IXGBE_READ_REG(hw, IXGBE_FCTRL);
 reg &= ~(IXGBE_FCTRL_RPFCE | IXGBE_FCTRL_RFCE);

 if (pfc_en)
  reg |= IXGBE_FCTRL_RPFCE;

 IXGBE_WRITE_REG(hw, IXGBE_FCTRL, reg);


 for (i = 0; i < IXGBE_DCB_MAX_TRAFFIC_CLASS; i++) {
  if (!(pfc_en & (1 << i))) {
   IXGBE_WRITE_REG(hw, IXGBE_FCRTL(i), 0);
   IXGBE_WRITE_REG(hw, IXGBE_FCRTH(i), 0);
   continue;
  }

  fcrtl = (hw->fc.low_water[i] << 10) | IXGBE_FCRTL_XONE;
  reg = (hw->fc.high_water[i] << 10) | IXGBE_FCRTH_FCEN;
  IXGBE_WRITE_REG(hw, IXGBE_FCRTL(i), fcrtl);
  IXGBE_WRITE_REG(hw, IXGBE_FCRTH(i), reg);
 }


 reg = hw->fc.pause_time | (hw->fc.pause_time << 16);
 for (i = 0; i < (IXGBE_DCB_MAX_TRAFFIC_CLASS / 2); i++)
  IXGBE_WRITE_REG(hw, IXGBE_FCTTV(i), reg);


 IXGBE_WRITE_REG(hw, IXGBE_FCRTV, hw->fc.pause_time / 2);

 return IXGBE_SUCCESS;
}
