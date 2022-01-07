
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct TYPE_2__ {int pg_tcs; } ;
struct ixgbe_dcb_config {int vt_mode; TYPE_1__ num_tcs; } ;
typedef int s32 ;


 int FALSE ;
 int IXGBE_ERR_PARAM ;
 int IXGBE_RQSMR (int) ;
 int IXGBE_SUCCESS ;
 int IXGBE_TQSM (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int TRUE ;

s32 ixgbe_dcb_config_tc_stats_82599(struct ixgbe_hw *hw,
        struct ixgbe_dcb_config *dcb_config)
{
 u32 reg = 0;
 u8 i = 0;
 u8 tc_count = 8;
 bool vt_mode = FALSE;

 if (dcb_config != ((void*)0)) {
  tc_count = dcb_config->num_tcs.pg_tcs;
  vt_mode = dcb_config->vt_mode;
 }

 if (!((tc_count == 8 && vt_mode == FALSE) || tc_count == 4))
  return IXGBE_ERR_PARAM;

 if (tc_count == 8 && vt_mode == FALSE) {







  for (i = 0; i < 32; i++) {
   reg = 0x01010101 * (i / 4);
   IXGBE_WRITE_REG(hw, IXGBE_RQSMR(i), reg);
  }
  for (i = 0; i < 32; i++) {
   if (i < 8)
    reg = 0x00000000;
   else if (i < 16)
    reg = 0x01010101;
   else if (i < 20)
    reg = 0x02020202;
   else if (i < 24)
    reg = 0x03030303;
   else if (i < 26)
    reg = 0x04040404;
   else if (i < 28)
    reg = 0x05050505;
   else if (i < 30)
    reg = 0x06060606;
   else
    reg = 0x07070707;
   IXGBE_WRITE_REG(hw, IXGBE_TQSM(i), reg);
  }
 } else if (tc_count == 4 && vt_mode == FALSE) {







  for (i = 0; i < 32; i++) {
   if (i % 8 > 3)



    continue;
   reg = 0x01010101 * (i / 8);
   IXGBE_WRITE_REG(hw, IXGBE_RQSMR(i), reg);
  }
  for (i = 0; i < 32; i++) {
   if (i < 16)
    reg = 0x00000000;
   else if (i < 24)
    reg = 0x01010101;
   else if (i < 28)
    reg = 0x02020202;
   else
    reg = 0x03030303;
   IXGBE_WRITE_REG(hw, IXGBE_TQSM(i), reg);
  }
 } else if (tc_count == 4 && vt_mode == TRUE) {
  for (i = 0; i < 32; i++)
   IXGBE_WRITE_REG(hw, IXGBE_RQSMR(i), 0x03020100);
  for (i = 0; i < 32; i++)
   IXGBE_WRITE_REG(hw, IXGBE_TQSM(i), 0x03020100);
 }

 return IXGBE_SUCCESS;
}
