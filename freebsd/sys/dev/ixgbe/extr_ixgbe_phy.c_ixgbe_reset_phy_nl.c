
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {int (* write_reg ) (struct ixgbe_hw*,int,int ,int) ;int (* read_reg ) (struct ixgbe_hw*,int,int ,int*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {scalar_t__ (* read ) (struct ixgbe_hw*,int,int*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ phy; TYPE_2__ eeprom; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int DEBUGOUT2 (char*,int,int) ;
 int ERROR_REPORT2 (int ,char*,int) ;
 int FALSE ;
 int IXGBE_CONTROL_EOL_NL ;
 int IXGBE_CONTROL_MASK_NL ;

 int IXGBE_CONTROL_SHIFT_NL ;
 int IXGBE_CONTROL_SOL_NL ;
 int IXGBE_DATA_MASK_NL ;


 int IXGBE_ERROR_INVALID_STATE ;
 scalar_t__ IXGBE_ERR_PHY ;
 int IXGBE_MDIO_PHY_XS_CONTROL ;
 int IXGBE_MDIO_PHY_XS_DEV_TYPE ;
 int IXGBE_MDIO_PHY_XS_RESET ;
 scalar_t__ IXGBE_SUCCESS ;
 int IXGBE_TWINAX_DEV ;
 int TRUE ;
 scalar_t__ ixgbe_check_reset_blocked (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_get_sfp_init_sequence_offsets (struct ixgbe_hw*,int*,int*) ;
 int msec_delay (int) ;
 int stub1 (struct ixgbe_hw*,int,int ,int*) ;
 int stub2 (struct ixgbe_hw*,int,int ,int) ;
 int stub3 (struct ixgbe_hw*,int,int ,int*) ;
 scalar_t__ stub4 (struct ixgbe_hw*,int,int*) ;
 scalar_t__ stub5 (struct ixgbe_hw*,int,int*) ;
 scalar_t__ stub6 (struct ixgbe_hw*,int,int*) ;
 scalar_t__ stub7 (struct ixgbe_hw*,int,int*) ;
 int stub8 (struct ixgbe_hw*,int,int ,int) ;

s32 ixgbe_reset_phy_nl(struct ixgbe_hw *hw)
{
 u16 phy_offset, control, eword, edata, block_crc;
 bool end_data = FALSE;
 u16 list_offset, data_offset;
 u16 phy_data = 0;
 s32 ret_val = IXGBE_SUCCESS;
 u32 i;

 DEBUGFUNC("ixgbe_reset_phy_nl");


 if (ixgbe_check_reset_blocked(hw))
  goto out;

 hw->phy.ops.read_reg(hw, IXGBE_MDIO_PHY_XS_CONTROL,
        IXGBE_MDIO_PHY_XS_DEV_TYPE, &phy_data);


 hw->phy.ops.write_reg(hw, IXGBE_MDIO_PHY_XS_CONTROL,
         IXGBE_MDIO_PHY_XS_DEV_TYPE,
         (phy_data | IXGBE_MDIO_PHY_XS_RESET));

 for (i = 0; i < 100; i++) {
  hw->phy.ops.read_reg(hw, IXGBE_MDIO_PHY_XS_CONTROL,
         IXGBE_MDIO_PHY_XS_DEV_TYPE, &phy_data);
  if ((phy_data & IXGBE_MDIO_PHY_XS_RESET) == 0)
   break;
  msec_delay(10);
 }

 if ((phy_data & IXGBE_MDIO_PHY_XS_RESET) != 0) {
  DEBUGOUT("PHY reset did not complete.\n");
  ret_val = IXGBE_ERR_PHY;
  goto out;
 }


 ret_val = ixgbe_get_sfp_init_sequence_offsets(hw, &list_offset,
            &data_offset);
 if (ret_val != IXGBE_SUCCESS)
  goto out;

 ret_val = hw->eeprom.ops.read(hw, data_offset, &block_crc);
 data_offset++;
 while (!end_data) {



  ret_val = hw->eeprom.ops.read(hw, data_offset, &eword);
  if (ret_val)
   goto err_eeprom;
  control = (eword & IXGBE_CONTROL_MASK_NL) >>
      IXGBE_CONTROL_SHIFT_NL;
  edata = eword & IXGBE_DATA_MASK_NL;
  switch (control) {
  case 128:
   data_offset++;
   DEBUGOUT1("DELAY: %d MS\n", edata);
   msec_delay(edata);
   break;
  case 129:
   DEBUGOUT("DATA:\n");
   data_offset++;
   ret_val = hw->eeprom.ops.read(hw, data_offset,
            &phy_offset);
   if (ret_val)
    goto err_eeprom;
   data_offset++;
   for (i = 0; i < edata; i++) {
    ret_val = hw->eeprom.ops.read(hw, data_offset,
             &eword);
    if (ret_val)
     goto err_eeprom;
    hw->phy.ops.write_reg(hw, phy_offset,
            IXGBE_TWINAX_DEV, eword);
    DEBUGOUT2("Wrote %4.4x to %4.4x\n", eword,
       phy_offset);
    data_offset++;
    phy_offset++;
   }
   break;
  case 130:
   data_offset++;
   DEBUGOUT("CONTROL:\n");
   if (edata == IXGBE_CONTROL_EOL_NL) {
    DEBUGOUT("EOL\n");
    end_data = TRUE;
   } else if (edata == IXGBE_CONTROL_SOL_NL) {
    DEBUGOUT("SOL\n");
   } else {
    DEBUGOUT("Bad control value\n");
    ret_val = IXGBE_ERR_PHY;
    goto out;
   }
   break;
  default:
   DEBUGOUT("Bad control type\n");
   ret_val = IXGBE_ERR_PHY;
   goto out;
  }
 }

out:
 return ret_val;

err_eeprom:
 ERROR_REPORT2(IXGBE_ERROR_INVALID_STATE,
        "eeprom read at offset %d failed", data_offset);
 return IXGBE_ERR_PHY;
}
