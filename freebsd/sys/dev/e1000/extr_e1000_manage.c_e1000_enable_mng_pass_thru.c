
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ has_fwsm; int asf_firmware_present; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_FACTPS ;
 int E1000_FACTPS_MNGCG ;
 int E1000_FWSM ;
 int E1000_FWSM_MODE_MASK ;
 int E1000_FWSM_MODE_SHIFT ;
 int E1000_MANC ;
 int E1000_MANC_ASF_EN ;
 int E1000_MANC_RCV_TCO_EN ;
 int E1000_MANC_SMBUS_EN ;
 int E1000_NVM_INIT_CTRL2_MNGM ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int FALSE ;
 int NVM_INIT_CONTROL2_REG ;
 int TRUE ;
 scalar_t__ e1000_82574 ;
 scalar_t__ e1000_82583 ;
 int e1000_mng_mode_pt ;
 scalar_t__ e1000_read_nvm (struct e1000_hw*,int ,int,int*) ;

bool e1000_enable_mng_pass_thru(struct e1000_hw *hw)
{
 u32 manc;
 u32 fwsm, factps;

 DEBUGFUNC("e1000_enable_mng_pass_thru");

 if (!hw->mac.asf_firmware_present)
  return FALSE;

 manc = E1000_READ_REG(hw, E1000_MANC);

 if (!(manc & E1000_MANC_RCV_TCO_EN))
  return FALSE;

 if (hw->mac.has_fwsm) {
  fwsm = E1000_READ_REG(hw, E1000_FWSM);
  factps = E1000_READ_REG(hw, E1000_FACTPS);

  if (!(factps & E1000_FACTPS_MNGCG) &&
      ((fwsm & E1000_FWSM_MODE_MASK) ==
       (e1000_mng_mode_pt << E1000_FWSM_MODE_SHIFT)))
   return TRUE;
 } else if ((hw->mac.type == e1000_82574) ||
     (hw->mac.type == e1000_82583)) {
  u16 data;
  s32 ret_val;

  factps = E1000_READ_REG(hw, E1000_FACTPS);
  ret_val = e1000_read_nvm(hw, NVM_INIT_CONTROL2_REG, 1, &data);
  if (ret_val)
   return FALSE;

  if (!(factps & E1000_FACTPS_MNGCG) &&
      ((data & E1000_NVM_INIT_CTRL2_MNGM) ==
       (e1000_mng_mode_pt << 13)))
   return TRUE;
 } else if ((manc & E1000_MANC_SMBUS_EN) &&
     !(manc & E1000_MANC_ASF_EN)) {
  return TRUE;
 }

 return FALSE;
}
