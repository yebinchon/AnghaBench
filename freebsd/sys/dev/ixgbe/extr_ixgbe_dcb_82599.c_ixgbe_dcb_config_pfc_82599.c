
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int* high_water; int* low_water; int pause_time; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_2__ fc; TYPE_1__ mac; } ;
typedef int s32 ;


 int IXGBE_DCB_MAX_TRAFFIC_CLASS ;
 int IXGBE_DCB_MAX_USER_PRIORITY ;
 int IXGBE_FCCFG ;
 int IXGBE_FCCFG_TFCE_PRIORITY ;
 int IXGBE_FCRTH_82599 (int) ;
 int IXGBE_FCRTH_FCEN ;
 int IXGBE_FCRTL_82599 (int) ;
 int IXGBE_FCRTL_XONE ;
 int IXGBE_FCRTV ;
 int IXGBE_FCTTV (int) ;
 int IXGBE_MFLCN ;
 int IXGBE_MFLCN_DPF ;
 int IXGBE_MFLCN_RFCE ;
 int IXGBE_MFLCN_RPFCE ;
 int IXGBE_MFLCN_RPFCE_MASK ;
 int IXGBE_MFLCN_RPFCE_SHIFT ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXPBSIZE (int) ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 scalar_t__ ixgbe_mac_X540 ;

s32 ixgbe_dcb_config_pfc_82599(struct ixgbe_hw *hw, u8 pfc_en, u8 *map)
{
 u32 i, j, fcrtl, reg;
 u8 max_tc = 0;


 IXGBE_WRITE_REG(hw, IXGBE_FCCFG, IXGBE_FCCFG_TFCE_PRIORITY);


 reg = IXGBE_READ_REG(hw, IXGBE_MFLCN);
 reg |= IXGBE_MFLCN_DPF;






 reg &= ~(IXGBE_MFLCN_RPFCE_MASK | IXGBE_MFLCN_RFCE);

 if (hw->mac.type >= ixgbe_mac_X540)
  reg |= pfc_en << IXGBE_MFLCN_RPFCE_SHIFT;

 if (pfc_en)
  reg |= IXGBE_MFLCN_RPFCE;

 IXGBE_WRITE_REG(hw, IXGBE_MFLCN, reg);

 for (i = 0; i < IXGBE_DCB_MAX_USER_PRIORITY; i++) {
  if (map[i] > max_tc)
   max_tc = map[i];
 }



 for (i = 0; i <= max_tc; i++) {
  int enabled = 0;

  for (j = 0; j < IXGBE_DCB_MAX_USER_PRIORITY; j++) {
   if ((map[j] == i) && (pfc_en & (1 << j))) {
    enabled = 1;
    break;
   }
  }

  if (enabled) {
   reg = (hw->fc.high_water[i] << 10) | IXGBE_FCRTH_FCEN;
   fcrtl = (hw->fc.low_water[i] << 10) | IXGBE_FCRTL_XONE;
   IXGBE_WRITE_REG(hw, IXGBE_FCRTL_82599(i), fcrtl);
  } else {







   reg = IXGBE_READ_REG(hw, IXGBE_RXPBSIZE(i)) - 24576;
   IXGBE_WRITE_REG(hw, IXGBE_FCRTL_82599(i), 0);
  }

  IXGBE_WRITE_REG(hw, IXGBE_FCRTH_82599(i), reg);
 }

 for (; i < IXGBE_DCB_MAX_TRAFFIC_CLASS; i++) {
  IXGBE_WRITE_REG(hw, IXGBE_FCRTL_82599(i), 0);
  IXGBE_WRITE_REG(hw, IXGBE_FCRTH_82599(i), 0);
 }


 reg = hw->fc.pause_time | (hw->fc.pause_time << 16);
 for (i = 0; i < (IXGBE_DCB_MAX_TRAFFIC_CLASS / 2); i++)
  IXGBE_WRITE_REG(hw, IXGBE_FCTTV(i), reg);


 IXGBE_WRITE_REG(hw, IXGBE_FCRTV, hw->fc.pause_time / 2);

 return IXGBE_SUCCESS;
}
